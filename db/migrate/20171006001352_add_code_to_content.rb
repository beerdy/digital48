class AddCodeToContent < ActiveRecord::Migration
  def change
    add_column :contents, :code, :text
  end
end
