class MembersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    @member.save
    redirect_to members_path
  end

  def index
    @members = Member.order(number: :asc)
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    redirect_to members_path
  end

  def destroy
    @member = Member.find(params[:id])  # データ（レコード）を1件取得
    @member.destroy  # データ（レコード）を削除
    redirect_to members_path  
  end

  private
  def member_params
    params.require(:member).permit(:name, :furigana, :number, :birthday, :position, :profile_image)
  end
  
end
