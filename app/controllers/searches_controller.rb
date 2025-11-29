class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]
    @word = params[:word]
    @method = params[:method]

    if @range == "User"
      @records = User.search_for(@word, @method)
    else
      @records = Book.search_for(@word, @method)
    end
  end
end
