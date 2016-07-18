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
  def register

    user = User.find(params[:cur_user])
    book=Book.find(params[:cur_book])
    if book.user_id.nil?
      book.user_id = user.id
      redirect_to home_index_path
    else
      redirect_to :back
    end
    user.save
    book.save

    # redirect_to home_index_path
  end

  def destroy
    # book=Book.find(params[:cur_book])
    book=Book.where.not(user_id: nil)
    book.first.user_id=nil
    book.first.save

    redirect_to home_index_path
  end






  def show
    current_user.counting += 1
    current_user.save
  end

end
