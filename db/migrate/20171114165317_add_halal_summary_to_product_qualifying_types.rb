class AddHalalSummaryToProductQualifyingTypes < ActiveRecord::Migration
  def change
    add_column :product_qualifying_types, :halal_summary, :text
  end
end
