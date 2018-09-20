class CoinsController < ApplicationController
  
   before_action :set_coin, only: [:update,:edit,:delete]
   before_action :set_coin_with_pricelogs, only: [:show]
    # ユーザがログインしていないと"show"にアクセスできない
  before_action :authenticate_user!, only: [:new,:edit]
   
  def list
    @coins = Coin.all
    @coin = Coin.new
  end
  
  def new
    @coin = Coin.new
  end
  
  def show
  end
  
  def create
    @coin = Coin.create(coins_params)
    if @coin.save
      redirect_to coins_list_path
    else
      render "new"
    end
    
    # redirect_to
    # フォームの内容を受け取る
    # saveする
    # 一覧画面にリダイレクトする
    # （erbは必要なし）
    
    # 「rails CRUD」
    # Create Read Update Delete/Destory
  end
  
  def edit
  end
  
  def update
    if @coin.update(coins_params)
      #成功した時
      redirect_to action: 'show', id: @coin.id 
    else
      #失敗した時
      render "edit"
    end
  end
  
  def destroy
    @coins.destroy
    redirect_to coins_path
  end
  
  private
  def coin_params
    params.require(:coin).permit(:name,:name_en,:symbol,:price,:image)
  end
  
  def set_coin
   #特定データの取得(PriceLogなし)
    @coin =Coin.find(params[:id])
  end
  
  def set_coin_with_pricelogs
   #特定データの取得(PriceLogあり)
    @coin =Coin.includes(:price_log).order("price_logs.created_at DESC").find(params[:id])
  end
  
  def pricelog
    p = CoinsLib::Pricelog.new
  end
  
end
