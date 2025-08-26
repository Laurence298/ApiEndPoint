json.extract! chapter, :id, :chapter_name, :created_at, :updated_at
json.url api_book_chapter_url(chapter.book, chapter, format: :json)
