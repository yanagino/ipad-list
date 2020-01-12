class ToppagesController < ApplicationController
  def index
  end
  
  def pass
  end
  
  def confirm
    if params[:seisoku] == "0913"
      redirect_to control_path
    elsif 
      flash.now[:danger] = "パスワードが違います"
      render :pass
    end
  end
  
end
