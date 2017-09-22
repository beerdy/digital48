class AddGroup3ToGroup4 < ActiveRecord::Migration
  def change
    add_reference :group4s, :group3, index: true, foreign_key: true
  end
end
