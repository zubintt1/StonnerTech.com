class StoryBooksController < ApplicationController
  before_action :set_story_book, only: [:show, :edit, :update, :destroy]

  # GET /story_books
  # GET /story_books.json
  def index
    @story_books = StoryBook.all
  end

  # GET /story_books/1
  # GET /story_books/1.json
  def show
  end

  # GET /story_books/new
  def new
    @story_book = StoryBook.new
  end

  # GET /story_books/1/edit
  def edit
  end

  # POST /story_books
  # POST /story_books.json
  def create
    @story_book = StoryBook.new(story_book_params)

    respond_to do |format|
      if @story_book.save
        format.html { redirect_to @story_book, notice: 'Story book was successfully created.' }
        format.json { render :show, status: :created, location: @story_book }
      else
        format.html { render :new }
        format.json { render json: @story_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /story_books/1
  # PATCH/PUT /story_books/1.json
  def update
    respond_to do |format|
      if @story_book.update(story_book_params)
        format.html { redirect_to @story_book, notice: 'Story book was successfully updated.' }
        format.json { render :show, status: :ok, location: @story_book }
      else
        format.html { render :edit }
        format.json { render json: @story_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_books/1
  # DELETE /story_books/1.json
  def destroy
    @story_book.destroy
    respond_to do |format|
      format.html { redirect_to story_books_url, notice: 'Story book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_book
      @story_book = StoryBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_book_params
      params.fetch(:story_book, {})
    end
end
