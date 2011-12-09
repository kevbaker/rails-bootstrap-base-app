class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user= User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user}
    end
  end


  # GET /feedbacks/1/edit
  def edit
    @user= User.find(params[:id])
  end


  def new    
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user}
    end
 
  end


  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(users_path, :notice => 'User was successfully updated.') }
        format.json  { head :ok }
      else
        format.html { render :action => "edit" }
        format.json  { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.json  { head :ok }
    end
  end
end

