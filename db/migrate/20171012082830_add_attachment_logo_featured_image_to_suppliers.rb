class AddAttachmentLogoFeaturedImageToSuppliers < ActiveRecord::Migration
  def self.up
    change_table :suppliers do |t|
      t.attachment :logo
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :suppliers, :logo
    remove_attachment :suppliers, :featured_image
  end
end
