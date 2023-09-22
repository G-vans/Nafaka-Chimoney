class CreateInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :investments do |t|
      t.string :title
      t.text :description
      t.integer :amount

      t.timestamps
    end
  end
end
