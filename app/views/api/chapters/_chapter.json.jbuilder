json.extract! chapter, :id, :chapter_name, :content, :created_at, :updated_at
json.content chapter.content.to_plain_text
json.url api_book_chapter_url(chapter.book, chapter, format: :json)
