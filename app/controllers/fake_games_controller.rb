class FakeGamesController < ApplicationController
  before_action :set_fake_game, only: %i[ show edit update destroy ]

  # GET /fake_games or /fake_games.json
  def faker_games
    @fake_games = FakeGame.all.order("title ASC")
    @fake_games = Kaminari.paginate_array(@fake_games).page(params[:page]).per(7)
  end

  # GET /fake_games/1 or /fake_games/1.json
  def show
  end

  # GET /fake_games/new
  def new
    @fake_game = FakeGame.new
  end

  # GET /fake_games/1/edit
  def edit
  end

  # POST /fake_games or /fake_games.json
  def create
    @fake_game = FakeGame.new(fake_game_params)

    respond_to do |format|
      if @fake_game.save
        format.html { redirect_to fake_game_url(@fake_game), notice: "Fake game was successfully created." }
        format.json { render :show, status: :created, location: @fake_game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fake_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fake_games/1 or /fake_games/1.json
  def update
    respond_to do |format|
      if @fake_game.update(fake_game_params)
        format.html { redirect_to fake_game_url(@fake_game), notice: "Fake game was successfully updated." }
        format.json { render :show, status: :ok, location: @fake_game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fake_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fake_games/1 or /fake_games/1.json
  def destroy
    @fake_game.destroy

    respond_to do |format|
      format.html { redirect_to fake_games_url, notice: "Fake game was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fake_game
      @fake_game = FakeGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fake_game_params
      params.require(:fake_game).permit(:title, :genre, :platform)
    end
end
