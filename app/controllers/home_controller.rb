class HomeController < ApplicationController



  def book

  end

  def index
    @user = User.all
    @book = Book.all
  end

  def motgam

    if current_user.counting >= 17
      redirect_to '/home/index', notice: '못드감 시벌'
    else
      redirect_to '/home/show'
    end
  end

  def kkk


  end







  def show
    current_user.counting += 1
    current_user.save
  end

end
