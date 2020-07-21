class SweetController < ApplicationController
  def index
    @sweet = Sweet.all.order(created_at: :desc)
  end
  
  def show
    @sweet = Sweet.find_by(id: params[:id])
  end
  
  def new
    @sweet = Sweet.new
  end
  
  def create
    @sweet = Sweet.new(name: params[:name],price: params[:price])
    
    @sweet.save
    redirect_to("/sweet/index")
  end
  
  def edit
    @sweet = Sweet.find_by(id: params[:id])
  end
  
  def update
    @sweet = Sweet.find_by(id: params[:id])
    @sweet.name = params[:name]
    @sweet.price = params[:price]
    if @sweet.save
        flash[:notice] = "投稿を編集しました"
        redirect_to("/sweet/index")
    else
        render("/sweet/edit")
    end
  end
  
  def destroy
    @sweet = Sweet.find_by(id: params[:id])
    @sweet.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/sweet/index")
  end
end
