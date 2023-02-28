class FreeGamesController < ApplicationController
  def index
    @free_games = FreeGame.all.order("title ASC")
    @free_games = Kaminari.paginate_array(@free_games).page(params[:page]).per(7)
  end
end
