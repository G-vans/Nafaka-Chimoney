class AddNumberToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :number, :integer
  end
end
