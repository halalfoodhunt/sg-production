class AddAttachmentLogoFeaturedImageToHomies < ActiveRecord::Migration
  def self.up
    change_table :homies do |t|
      t.attachment :logo
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :homies, :logo
    remove_attachment :homies, :featured_image
  end
end
