class Menu < ActiveRecord::Base
    belongs_to :place
    belongs_to :food_delivery
    belongs_to :caterer
    belongs_to :homy
    belongs_to :supplier
    belongs_to :online_retail
    belongs_to :raw_food
    belongs_to :baker
    
    has_attached_file :image, styles: { large: "800x500>", medium: "450x300>", square: "500x500#", thumb: "100x67>" }, default_url: "/images/:style/image-placeholder.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/, :size => { :in => 0..2.megabytes }
  
end
