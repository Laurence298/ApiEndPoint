json.extract! book, :id, :book_name, :created_at, :updated_at
json.url api_book_url(book, format: :json)

json.chapters book.chapters do |chapter|
  json.partial! "api/chapters/chapter_preview", chapter: chapter
end
