class Listing < ActiveRecord::Base
    has_attached_file :icon, styles: { large: "300x300>", medium: "120x120>", square: "30x30>", thumb: "16x16>" }, default_url: "/images/:style/logo-placeholder.png"
    validates_attachment :icon, :content_type => { :content_type => "image/png" }, :size => { :in => 0..100.kilobytes }
    
    belongs_to :merchant
    has_many :places, :dependent => :destroy
    has_many :bakers, :dependent => :destroy
    has_many :caterers, :dependent => :destroy
    has_many :raw_foods, :dependent => :destroy
    has_many :food_deliveries, :dependent => :destroy
    has_many :supermarkets, :dependent => :destroy
    has_many :online_retails, :dependent => :destroy
    has_many :suppliers, :dependent => :destroy
end
