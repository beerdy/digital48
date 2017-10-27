class AddImage1Uid1AndImage2NameToBrand < ActiveRecord::Migration
  def change
    add_column :brands, :image1_uid, :string
    add_column :brands, :image2_name, :string
  end
end
