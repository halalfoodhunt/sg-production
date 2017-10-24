class Discount < ActiveRecord::Base
      has_many :places
      has_many :caterers
      has_many :lessons
      has_many :food_deliveries
      has_many :supermarkets
      has_many :online_grocers
      has_many :suppliers
      has_many :rewards
      has_many :homies
    
    has_attached_file :icon, styles: { large: "300x300>", medium: "120x120>", square: "30x30>", thumb: "16x16>" }, default_url: "/icons/:style/logo-placeholder.png"
    validates_attachment :icon, :content_type => { :content_type => "image/png" }, :size => { :in => 0..100.kilobytes }
end
