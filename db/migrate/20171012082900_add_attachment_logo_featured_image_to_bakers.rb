class AddAttachmentLogoFeaturedImageToBakers < ActiveRecord::Migration
  def self.up
    change_table :bakers do |t|
      t.attachment :logo
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :bakers, :logo
    remove_attachment :bakers, :featured_image
  end
end
