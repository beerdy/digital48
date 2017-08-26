class Page < ActiveRecord::Base
  dragonfly_accessor :image
  
  rails_admin do
    include_all_fields
    
    #exclude_fields  :sort, :updated_at, :created_at, :slave, :review, :url, :portfolio
    
    edit do
      field :description, :rich_editor do
        config({
          :insert_many => true
        })
      end
    end
  end
end
