STOP_WORDS = %w[
BEGIN   END   __ENCODING__   __END__   __FILE__   __LINE__   alias   and
  begin   break   case   class   def   defined?   do   else   elsif   end
  ensure   false   for   if   in   module   next   nil   not   or   redo
  rescue   retry   return   self   super   then   true   undef   unless   until
  when   while   yield
  before_action
  before_filter
  redirect_to
  ActiveSupport
  after_update
  included
  has_many
  as
  belongs_to

  ClassMethods
  Concern

  elasticsearch
  merge
  serializer
  add
  filter
  initialize
  param
  results
  to_i
  serialized
  first
  data
  all
  filters
  status
  active_record
  error
  to
  0 1 2 3 4 5 6 7 8 9
  response
  path
  find
  each
  value
  request
  scope
  base
  app_config
  state
  items
  date
  <<
  key
  i18n
  object
  query
  map
  success
  +
  private
  type
  t
  where
  property
  required
  options
  params
  show index edit update create destroy
  delete post get put patch
  id new
  sprintf format Integer Float String Array Hash warn raise fail global_variables __method__ __callee__ __dir__ eval local_variables iterator?  block_given?  catch throw loop trace_var untrace_var at_exit syscall open printf print putc puts gets readline select readlines ` p test srand rand trap load require require_relative autoload autoload?  proc lambda binding caller caller_locations exec fork exit!  system spawn sleep exit abort Rational Complex set_trace_func pp Pathname freeze === == <=> < <= > >= to_s inspect included_modules include?  name ancestors instance_methods public_instance_methods protected_instance_methods private_instance_methods constants const_get const_set const_defined?  const_missing class_variables remove_class_variable class_variable_get class_variable_set class_variable_defined?  public_constant private_constant singleton_class?  include prepend module_exec class_exec module_eval class_eval method_defined?  public_method_defined?  private_method_defined?  protected_method_defined?  public_class_method private_class_method instance_method public_instance_method pretty_print_cycle pretty_print pry __binding__ pretty_print_instance_variables pretty_print_inspect nil?  =~ !~ eql?  hash class singleton_class clone dup itself taint tainted?  untaint untrust untrusted?  trust frozen?  methods singleton_methods protected_methods private_methods public_methods instance_variables instance_variable_get instance_variable_set instance_variable_defined?  remove_instance_variable instance_of?  kind_of?  is_a?  tap send public_send respond_to?  extend display method public_method singleton_method define_singleton_method object_id to_enum enum_for pretty_inspect byebug debugger methodz equal?  !  != instance_eval instance_exec __send__ __id__
  delegate
  attr_accessor
  url
  join

belongs_to_counter_cache_after_create belongs_to_counter_cache_before_destroy
belongs_to_counter_cache_after_update
  autosave_associated_records_for_created_by
  autosave_associated_records_for_updated_by
    to_param
  touch created_by created_by= build_created_by create_created_by
  create_created_by! updated_by updated_by= build_updated_by create_updated_by
  create_updated_by!
  delta delta= delta_before_type_cast delta?
  delta_changed? delta_change delta_will_change! delta_was reset_delta!
  lock_version lock_version= lock_version_before_type_cast lock_version?
  lock_version_changed? lock_version_change lock_version_will_change!
  lock_version_was reset_lock_version! created_at created_at=
    created_at_before_type_cast created_at? created_at_changed?
  created_at_change created_at_will_change! created_at_was reset_created_at!
  updated_at updated_at= updated_at_before_type_cast updated_at?
  updated_at_changed? updated_at_change updated_at_will_change! updated_at_was
  reset_updated_at! updated_by_id updated_by_id= updated_by_id_before_type_cast
  updated_by_id? updated_by_id_changed? updated_by_id_change
  updated_by_id_will_change! updated_by_id_was reset_updated_by_id!
  created_by_id created_by_id= created_by_id_before_type_cast created_by_id?
  created_by_id_changed? created_by_id_change created_by_id_will_change!
  created_by_id_was reset_created_by_id! defined_enums defined_enums? logger
  default_timezone schema_format timestamped_migrations
  dump_schema_after_migration default_connection_handler
  default_connection_handler? primary_key_prefix_type table_name_prefix
  table_name_prefix? table_name_suffix table_name_suffix? pluralize_table_names
  pluralize_table_names? store_full_sti_class store_full_sti_class?
  default_scopes cache_timestamp_format cache_timestamp_format?
  validation_context _validate_callbacks _validate_callbacks? _validators
  _validators? lock_optimistically lock_optimistically? attribute_aliases
  attribute_aliases? attribute_method_matchers attribute_method_matchers?
  attribute_types_cached_by_default attribute_types_cached_by_default?
  time_zone_aware_attributes skip_time_zone_conversion_for_attributes
  skip_time_zone_conversion_for_attributes? partial_writes partial_writes?
  _validation_callbacks _validation_callbacks? _initialize_callbacks
  _initialize_callbacks? _find_callbacks _find_callbacks? _touch_callbacks
  _touch_callbacks? _save_callbacks _save_callbacks? _create_callbacks
  _create_callbacks? _update_callbacks _update_callbacks? _destroy_callbacks
  _destroy_callbacks? record_timestamps record_timestamps? record_timestamps=
    nested_attributes_options nested_attributes_options? _commit_callbacks
  _commit_callbacks? _rollback_callbacks _rollback_callbacks? _reflections
  _reflections? aggregate_reflections aggregate_reflections?
  include_root_in_json include_root_in_json? attribute_defaults
  attribute_defaults? attribute_defaults= _default_attribute_values
  _default_attribute_values? _default_attribute_values= _accessible_attributes
  _accessible_attributes? _protected_attributes _protected_attributes?
  _active_authorizer _active_authorizer? _uses_mass_assignment_security
  _uses_mass_assignment_security? _mass_assignment_sanitizer
  _mass_assignment_sanitizer? paranoid? serialization_items
  serialization_items? serialization_items= excluded_from_serialization
  excluded_from_serialization? excluded_from_serialization=
    serialization_options serializable_hash_without_extensions
  serializable_hash to_yaml_properties call_reject_if lock_without_reload!
  _single_after_commit_callbacks single_after_commit_callback
  _validate_destroy_callbacks _validate_destroy_callbacks? _client_id
  _client_id= synchronize really_destroyed? really_delete
  destroy_without_paranoia really_destroy! with_advisory_lock
  advisory_lock_exists? validates_attachment_content_type
  validates_attachment_file_name validates_attachment_presence
  validates_attachment_size validates_media_type_spoof_detection
  do_not_validate_attachment_file_type run_paperclip_callbacks decorate
  decorator_class decorator_class? applied_decorators decorated_with?
  decorated? == notify_observers on_db read_date_parameter_value
  read_time_parameter_value extract_date_from_multiparameter_attributes
  extract_time_from_multiparameter_attributes us_date_format us_date_format=
    serialize_with serializable_hash_with_extensions update update_attributes
  update! update_attributes! assign_attributes mass_assignment_options
  mass_assignment_role sanitize_for_mass_assignment mass_assignment_authorizer
  permitted_to? permitted_to! initialize_with_defaults
  apply_default_attribute_values active_model_serializer
  read_attribute_for_serialization read_store_attribute write_store_attribute
  to_xml from_xml as_json from_json no_touching? transaction destroy save save!
  rollback_active_record_state! committed! rolledback! add_to_transaction
  with_transaction_returning_status remember_transaction_record_state
  clear_transaction_record_state restore_transaction_record_state
  transaction_record_state transaction_include_any_action?
  clear_aggregation_cache _destroy reload mark_for_destruction
  marked_for_destruction? destroyed_by_association= destroyed_by_association
  changed_for_autosave? clear_association_cache association_cache association
  run_validations! changed? changed changes previous_changes changed_attributes
  attribute_changed? attribute_was to_key attribute_method? query_attribute
  read_attribute_before_type_cast attributes_before_type_cast
  raw_write_attribute read_attribute method_missing respond_to? has_attribute?
  attribute_names attributes attributes_for_coder attribute_for_inspect
  attribute_present? column_for_attribute [] []= clone_attributes
  clone_attribute_value arel_attributes_with_values_for_create
  arel_attributes_with_values_for_update attribute_missing
  respond_to_without_attributes? lock! with_lock locking_enabled? valid?
  perform_validations validates_absence_of validates_acceptance_of
  validates_confirmation_of validates_exclusion_of validates_format_of
  validates_inclusion_of validates_length_of validates_size_of
  validates_numericality_of validates_presence_of strip_attributes
  strip_attributes! validates_inclusion_of_with_serialized_values
  validates_inclusion_of_without_serialized_values run_callbacks errors
  invalid? read_attribute_for_validation validates_with cache_key to_model
  to_partial_path attributes= sanitize_forbidden_attributes quoted_id
  populate_with_current_scope_attributes new_record? destroyed? persisted?
  delete destroy! becomes becomes! update_attribute update_column
  update_columns increment increment! decrement decrement! toggle toggle!
  init_with encode_with eql? hash freeze frozen? <=> readonly? readonly!
  connection_handler inspect slice set_transaction_state
  has_transactional_callbacks? blank? present? presence acts_like? duplicable?
  deep_dup try try! in? presence_in to_query instance_values
  instance_variable_names to_json_with_active_support_encoder
  to_json_without_active_support_encoder to_json with_options html_safe?
  psych_to_yaml to_yaml ` pry __binding__ remote_pry pry_remote deep_clone
  to_ruby dclone proxy? deprecate_me! as_json_recursive delay __delay__
  send_later send_at friendly_id? unfriendly_id? pretty_print
  pretty_print_cycle pretty_print_instance_variables pretty_print_inspect
  require_or_load require_dependency load_dependency load require unloadable
  nil? === =~ !~ class singleton_class clone dup itself taint tainted? untaint
  untrust untrusted? trust to_s methods singleton_methods protected_methods
  private_methods public_methods instance_variables instance_variable_get
  instance_variable_set instance_variable_defined? remove_instance_variable
  instance_of? kind_of? is_a? tap send public_send extend display method
  public_method singleton_method define_singleton_method object_id to_enum
  enum_for gem silence_warnings enable_warnings with_warnings silence_stderr
  silence_stream suppress capture silence quietly class_eval debugger
  breakpoint pretty_inspect byebug suppress_warnings equal? ! != instance_eval
  instance_exec __send__ __id__
  model
  controller
  render
  partial
  json

]
