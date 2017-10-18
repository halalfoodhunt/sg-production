class AddAttachmentLogoFeaturedImageToRawFoods < ActiveRecord::Migration
  def self.up
    change_table :raw_foods do |t|
      t.attachment :logo
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :raw_foods, :logo
    remove_attachment :raw_foods, :featured_image
  end
end
