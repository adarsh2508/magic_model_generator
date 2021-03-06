class ConfigurationItem < ActiveRecord::Base
  belongs_to :configuration_item, :class_name => 'ConfigurationItem', :foreign_key => :configuration_item_id
  belongs_to :atlanta_operator, :class_name => 'AtlantaOperator', :foreign_key => :atlanta_operator_id
  belongs_to :atlanta_group, :class_name => 'AtlantaGroup', :foreign_key => :atlanta_group_id
  belongs_to :configuration_item_type, :class_name => 'ConfigurationItemType', :foreign_key => :configuration_item_type_id
  has_many :configuration_attributes, :class_name => 'ConfigurationAttribute', :foreign_key => :configuration_item_id
  has_many :configuration_items, :class_name => 'ConfigurationItem', :foreign_key => :configuration_item_id
  has_many :configuration_attr_types, :through => configuration_attributes
  has_many :atlanta_groups, :through => configuration_items
  has_many :atlanta_operators, :through => configuration_items
  has_many :configuration_item_types, :through => configuration_items
  validates_presence_of :configuration_item_id
  validates_numericality_of :configuration_item_id, :allow_nil => false, :only_integer => true
  validates_presence_of :last_modified
  validates_presence_of :atlanta_operator_id
  validates_numericality_of :atlanta_operator_id, :allow_nil => false, :only_integer => true
  validates_presence_of :atlanta_group_id
  validates_numericality_of :atlanta_group_id, :allow_nil => false, :only_integer => true
  validates_presence_of :configuration_item_name
  validates_length_of :configuration_item_name, :allow_nil => false, :maximum => 30
  validates_presence_of :configuration_item_type_id
  validates_numericality_of :configuration_item_type_id, :allow_nil => false, :only_integer => true
  validates_presence_of :configuration_item_seqnr
  validates_numericality_of :configuration_item_seqnr, :allow_nil => false, :only_integer => true
  validates_length_of :description, :allow_nil => true, :maximum => 255
end
