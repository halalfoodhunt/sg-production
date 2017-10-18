class EventType < ActiveRecord::Base
    has_many :function_types
	has_many :caterers, :through => :function_types
end
