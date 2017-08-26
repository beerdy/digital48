json.extract! review, :id, :title, :description, :slave, :image_uid, :image_name, :url, :sort, :company, :created_at, :updated_at
json.url review_url(review, format: :json)
