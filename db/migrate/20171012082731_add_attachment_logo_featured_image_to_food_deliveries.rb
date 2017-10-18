class AddAttachmentLogoFeaturedImageToFoodDeliveries < ActiveRecord::Migration
  def self.up
    change_table :food_deliveries do |t|
      t.attachment :logo
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :food_deliveries, :logo
    remove_attachment :food_deliveries, :featured_image
  end
end
