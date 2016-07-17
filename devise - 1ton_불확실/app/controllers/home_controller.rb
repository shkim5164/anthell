class HomeController < ApplicationController
  def index
    @user = User.all
    @book = Book.where(user_id: nil)

    @limit = 5
    if current_user.counting >= @limit
        @message = '조회수 오바'
    else
    end

  end

  def show

    current_user.counting = current_user.counting + 1

      if current_user.counting >= 5
        redirect_to home_index_path, notice:  "Insufficient rights!"
        @message = '조회수 오바'
      else
        current_user.save
        @count = current_user.counting
      end
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
    book=Book.find(params[:cur_book])
    book.user_id=nil
    book.save

    redirect_to home_index_path
  end


end
