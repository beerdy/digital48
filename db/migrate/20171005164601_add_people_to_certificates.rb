class AddPeopleToCertificates < ActiveRecord::Migration
  def change
    add_column :certificates, :people, :boolean
  end
end
