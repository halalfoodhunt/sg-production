class CreateBookingMethods < ActiveRecord::Migration
  def change
    create_table :booking_methods do |t|
      t.integer :homy_id
      t.integer :ordering_method_id

      t.timestamps null: false
    end
  end
end
