class AddAttachmentLogoFeaturedImageToCaterers < ActiveRecord::Migration
  def self.up
    change_table :caterers do |t|
      t.attachment :logo
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :caterers, :logo
    remove_attachment :caterers, :featured_image
  end
end
