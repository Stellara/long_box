class ComicsController < ApplicationController
  before_action :set_comic, only: [:show, :edit, :update, :destroy]

  def index
    #random line for a test
    @comics = Comic.all
  end

  def show
  end

  def new
    @comic = Comic.new
  end

  def edit
  end

  def create
    @comic = Comic.new(comic_params)

    if @comic.save
      redirect_to @comic, notice: 'Comic was successfully created.'
    else
      render :new
    end
  end

  def update
    if @comic.update(comic_params)
      redirect_to @comic, notice: 'Comic was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comic.destroy
    redirect_to comics_url, notice: 'Comic was successfully destroyed.'
  end

  private

  def set_comic
    @comic = Comic.find(params[:id])
  end

  def comic_params
    params.require(:comic).permit(:title, :issue_number, :year, :printing, :publisher, :author, :artist, :cover_price, :cover_variant, :description)
  end
end
