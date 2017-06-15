class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :description
      t.string :image_uid
      t.string :image_name

      t.timestamps null: false
    end
  end
end
