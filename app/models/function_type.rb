class FunctionType < ActiveRecord::Base
    belongs_to :event_type
	belongs_to :caterer
end
