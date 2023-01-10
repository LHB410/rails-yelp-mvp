class RemoveCategoryFromRestaurant < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :category, :string
    remove_column :restaurants, :phone_number, :integer
  end
end
