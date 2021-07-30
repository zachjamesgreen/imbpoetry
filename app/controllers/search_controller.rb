class SearchController < ApplicationController
  def index
    term = params[:author]
    @poems = Poetry.get_poems_by_author(term)
  end
end