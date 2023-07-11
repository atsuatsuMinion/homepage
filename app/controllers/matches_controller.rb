class MatchesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    @match.save
    redirect_to matches_path
  end

  def index
    @matches = Match.page(params[:page])
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])
    @match.update(match_params)
    redirect_to matches_path
  end

  def destroy
    @match = Match.find(params[:id])  # データ（レコード）を1件取得
    @match.destroy  # データ（レコード）を削除
    redirect_to matches_path  
  end

  private
  def match_params
    params.require(:match).permit(:title, :match_datetime, :enemy_team, :my_score, :enemy_score, :enemy_image)
  end

end
