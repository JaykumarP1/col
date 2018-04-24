json.extract! book, :id, :title, :readable_id, :readable_type, :created_at, :updated_at
json.url book_url(book, format: :json)
