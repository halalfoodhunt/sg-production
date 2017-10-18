class AddDetailsToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :name, :string
    add_column :merchants, :position, :string
    add_column :merchants, :mobile_number, :string
    add_column :merchants, :registered_name_of_business, :string
    add_column :merchants, :business_registration_number, :string
    add_column :merchants, :office_number, :string
    add_column :merchants, :office_mailing_address, :string
    add_column :merchants, :role, :integer
  end
end
