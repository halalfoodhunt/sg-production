class VerifyingDocument < ActiveRecord::Base
  belongs_to :place
  belongs_to :food_delivery
  belongs_to :homy
  belongs_to :caterer
  belongs_to :online_retail
  belongs_to :supplier
  belongs_to :raw_food
  belongs_to :baker
  
   has_attached_file :document, styles: { large: "2480x3508>", medium: "500x800>", square: "500x500>", thumb: "67x100>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :document, content_type: /\Aimage\/.*\Z/, :size => { :in => 0..2.megabytes }
end
