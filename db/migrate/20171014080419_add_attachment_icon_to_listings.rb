class AddAttachmentIconToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :listings, :icon
  end
end
