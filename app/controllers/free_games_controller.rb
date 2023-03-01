class FreeGamesController < ApplicationController
  def index
    @free_games = FreeGame.all.order("title ASC")
    @free_games = Kaminari.paginate_array(@free_games).page(params[:page]).per(15)
  end

  def show
    @free_game = FreeGame.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @free_game = FreeGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def free_game_params
      params.require(:free_game).permit(:title, :thumbnail, :description, :genre, :game_url)
    end
end
