class Merchant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  extend FriendlyId
  friendly_id :name, use: :slugged
         
  enum role: [:basic, :basic_plus, :pair, :bundle, :custom, :admin]
  after_initialize :set_default_role, :if => :new_record?
  
  has_many :listings
  has_many :places
  has_many :homies
  has_many :caterers
  has_many :bakers
  has_many :food_deliveries
  has_many :raw_foods
  has_many :online_retails
  has_many :suppliers

  def set_default_role
    self.role ||= :basic
  end
  
  private    
    def password_required?
      new_record? ? super : false
    end

end
