class ApplicationController < ActionController::Base
  before_action :set_query

  def set_query
    @query = Game.ransack(params[:q])
  end
end
