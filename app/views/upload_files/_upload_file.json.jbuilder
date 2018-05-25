json.extract! upload_file, :id, :cover_letter, :title, :created_at, :updated_at
json.url upload_file_url(upload_file, format: :json)
