class Api::ChaptersController < ApplicationController
  before_action :set_book
  before_action :set_chapter, only: %i[show update destroy]

  def show
  end
  def update
  end
  def create
    @chapter = @book.chapters.build(chapter_params)
    if @chapter.save
      render :show, status: :created, location: api_book_chapter_url(@book, @chapter)
    else
       render json: { errors: @chapter.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end
  def set_chapter
    @chapter = @book.chapters.find(params[:id])
  end
  def chapter_params
    params.require(:chapter).permit(:chapter_name)
  end
end
