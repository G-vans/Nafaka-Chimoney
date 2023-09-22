class AddImageUrlToInvestments < ActiveRecord::Migration[7.0]
  def change
    add_column :investments, :image_url, :string
  end
end
