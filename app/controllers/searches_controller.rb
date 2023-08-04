class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
      render "/searches/search_index"
    else
      @books = Book.looks(params[:search], params[:word])
      render "/searches/search_index"
    end
  end
end
