class Price < ActiveRecord::Migration
  def change
    add_column :ads, :price, :decimal
  end
end
