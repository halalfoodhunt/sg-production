class CreateVerifyingDocuments < ActiveRecord::Migration
  def change
    create_table :verifying_documents do |t|
      t.attachment :document
      t.belongs_to :place, index: true, foreign_key: true
      t.belongs_to :food_delivery, index: true, foreign_key: true
      t.belongs_to :homy, index: true, foreign_key: true
      t.belongs_to :caterer, index: true, foreign_key: true
      t.belongs_to :online_retail, index: true, foreign_key: true
      t.belongs_to :supplier, index: true, foreign_key: true
      t.belongs_to :raw_food, index: true, foreign_key: true
      t.belongs_to :baker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
