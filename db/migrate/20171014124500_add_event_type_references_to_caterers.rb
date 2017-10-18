class AddEventTypeReferencesToCaterers < ActiveRecord::Migration
  def change
    add_reference :caterers, :event_type, index: true, foreign_key: true
  end
end
