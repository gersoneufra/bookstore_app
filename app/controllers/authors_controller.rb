class AuthorsController < ApplicationController
  def index
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(params_author)
    @author.save
    flash[:success] = 'Author has been created'
    redirect_to @author
  end

  private
  def params_author
    params.require(:author).permit(:first_name, :last_name)
  end
end
