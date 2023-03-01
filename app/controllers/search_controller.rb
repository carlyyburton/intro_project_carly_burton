class SearchController < ApplicationController
  def index
    @query = Game.ransack(params[:q])
    @games = @query.result(distinct:true)
  end
end
