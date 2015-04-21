class SearchController < ApplicationController
  def index
    @leads = Lead.text_search(params[:query])
  end 
end
