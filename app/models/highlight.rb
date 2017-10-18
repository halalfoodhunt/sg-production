class Highlight < ActiveRecord::Base
    belongs_to :feature
	belongs_to :place
end
