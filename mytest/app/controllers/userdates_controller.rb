class UserdatesController < ApplicationController

  def login
    @userdate = Userdate.new
  end

  def new
    @userdate = Userdate.new
  end

  def create
    @userdate = Userdate.new(params.require(:userdate).permit(:email, :pass,:pass_confirmation))
    if @userdate.save
      redirect_to master_articles_path
    else
      #render plain: @post.errors.inspect
      render :new
    end
  end

  def check
    @userdate = Userdate.find_by(email: params[:userdate][:email])
    if @userdate != nil
      if @userdate.pass == params[:userdate][:pass]
      redirect_to master_articles_path
      end
    else
      render 'login'
    end
  end

end
