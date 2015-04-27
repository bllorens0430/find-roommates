module PreferencesHelper
  def pref?
    !Preference.find_by_user_id(current_user).nil?
  end
  
end
