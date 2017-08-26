class AddCartridgeToPrice < ActiveRecord::Migration
  def change
    add_column :prices, :cartridge, :boolean
  end
end
