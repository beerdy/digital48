class AddUtilizeToPrice < ActiveRecord::Migration
  def change
    add_column :prices, :utilize, :boolean
  end
end
