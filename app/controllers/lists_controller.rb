class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    
    if @list.save
      flash[:success] = "送信が完了しました"
      redirect_to root_path
    else
      flash.now[:danger] = "送信できませんでした"
      render :new
    end
  end

  def all
  end

  def show
    @lists = List.where("number = #{params[:number]}")
    @num = params[:number]
  end
end

private

def list_params
  params.require(:list).permit(:attendance, :number)
end