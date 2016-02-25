require "pathname"
require_relative "../file_tree/common_path"

module MethodLoggingFramework
  def self.log(object, method_name, args, keyword_args, block, class_method)
    args = args.map(&:class)
    symbol = class_method ? "." : "#"
    keyword_args = keyword_args.dup
    keyword_args.each do |k,v|
      keyword_args[k]= v.class
    end

    puts "#{object.class}#{symbol}#{method_name}(#{args}, #{keyword_args})"
  end

  def self.exclude_from_logging?(method)
    file, line_number = method.source_location
    #puts "************#{file}:#{line_number}"
    return true unless file

    path = Pathname.new(file)
    common_path = FileTree::CommonPath.common_parent_directory_path(path, logging_root)
    # puts "************ COMMON_PATH#{common_path.to_s}"
    # puts "************ LOGGING_ROOT#{logging_root.to_s}"

    common_path.to_s.length < logging_root.to_s.length
  end

  def self.logging_root
    Pathname.new(File.expand_path(__FILE__)) + ".." + ".." + ".."
  end
end

class Object
  def self.log_method_call(name, class_method: false)
    m = class_method ? singleton_method(name) : instance_method(name)
    return if MethodLoggingFramework.exclude_from_logging?(m)

    method_defining_method = class_method ? method(:define_singleton_method) : method(:define_method)

    method_defining_method.call(name) do |*args, **keyword_args, &block|
      MethodLoggingFramework.log(self, name, args, keyword_args, block, class_method)

      if class_method
        if keyword_args.empty?
          m.call(*args, &block)
        else
          m.call(*args, **keyword_args, &block)
        end
      else
        bound_method = m.bind(self)
        if keyword_args.empty?
          begin
          bound_method.call(*args, &block)
          rescue
            byebug
            1
          end
        else
          bound_method.call(*args, **keyword_args, &block)
        end
      end
    end
  end


  def self.method_added(name)
    m = self.instance_method(name)
    return if MethodLoggingFramework.exclude_from_logging?(m)
    return if name.to_s == 'method_added'
    return if method_has_been_added?(name)


    record_method_adding(name)

    log_method_call(name, class_method: false)
  end

  def self.method_has_been_added? name
    return unless defined? @@added_methods
    return unless @@added_methods[self]
    @@added_methods[self][name]
  end

  def self.record_method_adding(name)
    #puts "recording method addition for #{self} #{name}"
    @@added_methods ||= {}
    @@added_methods[self] ||= {}
    @@added_methods[self][name]=true
  end
end

class BasicObject
  def self.singleton_method_added(name)
    return if name.to_s == 'singleton_method_added'
    return if method_has_been_added?(name)


    record_method_adding(name)

    log_method_call(name, class_method: true)
  end
end