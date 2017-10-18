class AddAttachmentImageToQualifyingTypes < ActiveRecord::Migration
  def self.up
    change_table :qualifying_types do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :qualifying_types, :image
  end
end
