class AddDetailsToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :details, :text
  end
end
