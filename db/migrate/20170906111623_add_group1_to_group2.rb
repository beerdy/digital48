class AddGroup1ToGroup2 < ActiveRecord::Migration
  def change
    add_reference :group2s, :group1, index: true, foreign_key: true
  end
end
