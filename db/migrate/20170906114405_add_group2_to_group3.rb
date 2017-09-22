class AddGroup2ToGroup3 < ActiveRecord::Migration
  def change
    add_reference :group3s, :group2, index: true, foreign_key: true
  end
end
