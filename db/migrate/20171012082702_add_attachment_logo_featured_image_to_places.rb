class AddAttachmentLogoFeaturedImageToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :logo
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :places, :logo
    remove_attachment :places, :featured_image
  end
end
