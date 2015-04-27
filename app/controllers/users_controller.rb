class UsersController < ApplicationController
  def new
    @user = User.new

  end
  
  def show
    if pref?
      @user = User.find(params[:id]) 
       @preference = Preference.find_by_user_id(@user.id)
    else
      redirect_to new_preference_path
    end
    
    @content = []
    
    if @preference.question1 == 1
      @content << "Cats"
      elsif @preference.question1 == 2
      @content << "Dogs"
      elsif @preference.question1 == 3
      @content << "Both dogs and cats"
    else
      @content << "Neither dogs and cats"
    end
    if @preference.question2 == 1
      @content << "I prefer to study during the morning"
      elsif @preference.question2 == 2
      @content << "I prefer to study during the afternoon"
      elsif @preference.question2 == 3
      @content << "I prefer to study during the evening"
    else
      @content << "I prefer to study late at night"
    end
    if @preference.question3 == 1
      @content << "My room is usually orderly and clean"
      elsif @preference.question3 == 2
      @content << "My room is sometimes orderly and clean"
    else
      @content << "My room is disorderly"
    end
    
    if @preference.question4 == 1
      @content << "The visitors will be welcome any time"
      elsif @preference.question4 == 2
      @content << "The visitors should leave when I sleep"
      elsif @preference.question4 == 3
      @content << "The visitors should leave when I am in the room"
    
    else
      @content << "The visitors should just let me know when they are coming"
    end
    
    if @preference.question5 == 1
      @content << "I am an early bird"
      elsif @preference.question5 == 2
      @content << "I am a night owl"
      elsif @preference.question5 == 3
      @content << "I like to sleep all day"
    else
      @content << "My sleeping habits are normal"
    end
    
   if @preference.question6 == 1
     @content << "When I am upset, I need to talk about things"
      elsif @preference.question6 == 2
     @content << "When I am upset, I need space and time to deal with it on my own"
      elsif @preference.question6 == 3
     @content << "When I am upset, I need to to be distracted"
    else
     @content << "When I am upset, I need to bake cookies"
    end
   
    
  end
  
  def create
    @user = User.new(user_params) #create a new user using the attributes returned by user_params, which is defined below
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Hi Rommates!" #temporary message is shown in the view by the flash utility
      redirect_to new_preference_path #this redirects the user add new preference.
   else
      flash[:danger] = "Failure to sign up, please try again"
      render 'new' #this redirects the user to action new so they can try again
   end
end

	private
	   def user_params
     		params.require(:user).permit(:name, :email, :password, :password_confirmation)
#this method only permits the name, email, password and password confirmation #attributes to pass. It raises an error if the :user attribute is missing.
   	end 
  
end
