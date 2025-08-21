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
  def destroy
  end

  private
  def set_book
    @book = Book.find(params[:book_id])
  rescue ActiveRecord::RecordNotFound
    render json: { errors: [ "book not found" ] }, status: :not_found
  end
  def set_chapter
    @chapter = @book.chapters.find(params[:id])
  end
  def chapter_params
    params.require(:chapter).permit(:chapter_name)
  rescue ActiveRecord::RecordNotFound
    render json: { errors: [ "chapter not found" ] }, status: :not_found
  end
end
