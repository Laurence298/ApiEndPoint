class Api::BooksController < ApplicationController
  before_action :set_book, only: %i[ show update destroy ]

  def index
    @books = Book.all
    render json: @books
  end
  def show
  end
  def new
  end
  # post /books
  def create
    @book = Book.new(book_params)
    if @book.save
      render :show, status: :created, location: api_book_url(@book)
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end
  def update
  end
  def destroy
    @book.destroy!
  end
  private
    def set_book
      @book = Book.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { errors: [ "chapter not found" ] }, status: :bad_request
    end
    def book_params
      params.require(:book).permit(:book_name)
    end
end
