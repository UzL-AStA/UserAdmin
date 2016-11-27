class User < ApplicationRecord
	belongs_to :primary_group, class_name: 'Group'
	has_and_belongs_to_many :groups
end
