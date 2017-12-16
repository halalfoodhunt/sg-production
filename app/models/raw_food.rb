class RawFood < ActiveRecord::Base
  extend FriendlyId
  friendly_id :brand_name, use: :slugged
  
  before_create :set_expiration_date
  before_create :set_halal_expiry
  
  def set_expiration_date
    self.expiry_date =  Date.today + 365.days
  end
  
  def set_halal_expiry
    self.halal_expiry =  Date.today + 365.days
  end
  
  has_many :raw_food_menu_items, :through => :raw_food_dish_items, dependent: :destroy
  has_many :raw_food_dish_items, dependent: :destroy
  
  has_many :raw_food_product_categories, :through => :raw_food_product_types, dependent: :destroy
  has_many :raw_food_product_types, dependent: :destroy
  
  has_many :online_retail_service_types, :through => :online_retail_work_types, dependent: :destroy
  has_many :online_retail_work_types, dependent: :destroy
  
  has_many :ordering_methods, :through => :booking_methods, dependent: :destroy
  has_many :booking_methods, dependent: :destroy
  
  has_many :delivery_locations, :through => :shipping_locations, dependent: :destroy
  has_many :shipping_locations, dependent: :destroy
  
  has_many :opening_hours, dependent: :destroy, inverse_of: :raw_food
  accepts_nested_attributes_for :opening_hours, allow_destroy: true, reject_if: ->(attrs) { attrs['day_id'].blank? }
  
  has_many :menus, dependent: :destroy, inverse_of: :raw_food
  accepts_nested_attributes_for :menus, reject_if: :all_blank, allow_destroy: true
  
  has_many :verifying_documents, dependent: :destroy, inverse_of: :raw_food
  accepts_nested_attributes_for :verifying_documents, reject_if: :all_blank, allow_destroy: true
  
  has_many :rewards, dependent: :destroy
  accepts_nested_attributes_for :rewards
  
  has_attached_file :logo, styles: { large: "300x300>", medium: "120x120>", thumb: "30x30>" }, default_url: "/images/:style/placeholder.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/, :size => { :in => 0..2.megabytes }
  
  has_attached_file :featured_image, styles: { large: "800x500>", medium: "450x300>", square: "500x500#", thumb: "100x67>" }, default_url: "/images/:style/image-placeholder.jpg"
  validates_attachment_content_type :featured_image, content_type: /\Aimage\/.*\Z/, :size => { :in => 0..2.megabytes }
  
  belongs_to :product_qualifying_type
  belongs_to :merchant
  belongs_to :listing
end
