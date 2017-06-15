json.extract! message, :id, :name, :email, :subject, :description, :image_uid, :image_name, :created_at, :updated_at
json.url message_url(message, format: :json)
