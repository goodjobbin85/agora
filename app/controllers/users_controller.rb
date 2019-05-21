class UsersController < ApplicationController
    
    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
    end
    
    def create 
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "User Successfully saved"
            redirect_to user_path(@user)
        else
            render :new
        end
    end
    
    def edit
        @user = User.find(params[:id])
    end 
    
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        if @user.save
            flash[:success] = "User successfully updated"
            redirect_to root_path
        else
            render :edit 
        end
    end
    
    def destroy
        @user = User.find(params[:id])
         if @user 
             @user.destroy 
             flash[:success] = "User successfully removed"
             redirect_to users_path
         end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end
   
   
end
