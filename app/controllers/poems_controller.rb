class PoemsController < ApplicationController

  def new
    @poem = Poem.new
  end


  def create
    Poem.create(poem_params)
    redirect_to poem_path
  end


  def poem_params
    params.require(:poem).permit(:poem, :name)
  end

  def index
    @poems = Poem.all
  end


  def show
  end


end