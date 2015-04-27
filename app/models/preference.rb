class Preference < ActiveRecord::Base
  belongs_to :user
  validates :question1, presence:true
  validates :question2, presence:true
  validates :question3, presence:true
  validates :question4, presence:true
  validates :question5, presence:true
  validates :question6, presence:true
  validates :user_id, presence:true
end
