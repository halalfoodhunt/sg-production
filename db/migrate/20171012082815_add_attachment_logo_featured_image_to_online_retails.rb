class AddAttachmentLogoFeaturedImageToOnlineRetails < ActiveRecord::Migration
  def self.up
    change_table :online_retails do |t|
      t.attachment :logo
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :online_retails, :logo
    remove_attachment :online_retails, :featured_image
  end
end
