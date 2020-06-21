class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      flash[:success] = "The author has been successfully created."
      redirect_to author_path(@author)
    else
      flash.now[:error] = "Unable to create the author, please correct the following errors:"
      render :new
    end
    
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
