class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  private 
  def author_params
  end 
end
