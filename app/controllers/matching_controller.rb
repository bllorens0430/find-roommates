#For the algorithm to work, I think it will be easiest if we set up questions like this: Are pets allowed? 1. Yes, 2. No, 3. Don't care. After all of the questions, we will ask how important it is that the roommate matches all of the preferences, so the options could be Irrelevant, A Little Important, Moderately Important, Important, Mandatory. And each of those will have numbers assigned to them (0, 1, 10, 50, 250). If there are 7 questions and User A says that they are Mandatory, then we will multiply 7 and 250, which would be the perfect match (1750). If User B gets only 4 matches, then their total would be 4 times 250. We take 1000 divided by 1750 to get the percentage of compatibility, which is ~57% 
class MatchingController < ApplicationController
  def find_compatibility #this makes a hash of all the users in the system and their roomate preferences
    if logged_in? == false
      redirect_to log_in_path
    end
    
    @percents = Hash.new
    @myPref = Preference.find_by(user_id: current_user.id) 
    @allUsers = Hash.new
    
    User.all.each do |user|
      if user.eql?(current_user) == false
        @allUsers[user] = Preference.where(user_id: user.id)
      end
    end
    

    @allUsers.each do |u, pref|
      total = 0
      pref.each do |p| 
      one = (p.question1 == @myPref.question1) ? 1:0
     two = (p.question2 == @myPref.question2) ? 1:0
     three = (p.question3 == @myPref.question3) ? 1:0
     four =  (p.question4 == @myPref.question4) ? 1:0
     five = (p.question5 == @myPref.question5) ? 1:0
     six = (p.question6 == @myPref.question6) ? 1:0
      total = one + two + three + four + five + six
      end
      @percents[u] = (total / 6.0).round(2)*100
  end
    @percents.sort_by{|user, percent|percent}.reverse
    @percent = @percents.sort_by{|user, percent|percent}.reverse!
        
   
  end 
end

                
