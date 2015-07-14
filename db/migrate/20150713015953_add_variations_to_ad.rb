class AddVariationsToAd < ActiveRecord::Migration
  def change
    add_column :ads, :variations, :integer
  end
end
