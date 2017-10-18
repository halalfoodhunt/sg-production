class OnlineRetailServiceType < ActiveRecord::Base
    
    has_many :online_retail_work_types
    has_many :online_retails, :through => :online_retail_work_types
    
    has_many :online_retail_work_types
    has_many :raw_foods, :through => :online_retail_work_types
    
    has_many :online_retail_work_types
    has_many :suppliers, :through => :online_retail_work_types

end
