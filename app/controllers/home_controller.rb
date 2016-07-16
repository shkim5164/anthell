class HomeController < ApplicationController

  def index
  end

  def book

  end

  def index
    if current_user.couting.to_i >10
      redirect_to '/home/kkk', notice: '못드감 시벌'
  end











  def kkk


  end







  def show
    current_user.counting += 1
    current_user.save
  end

end
