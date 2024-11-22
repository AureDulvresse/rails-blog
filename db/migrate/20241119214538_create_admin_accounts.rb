class CreateAdminAccounts < ActiveRecord::Migration[7.2]
  def change
    create_table :admin_accounts do |t|
      t.timestamps
    end
  end
end
