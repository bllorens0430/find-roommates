json.array!(@preferences) do |preference|
  json.extract! preference, :id, :question1, :question2, :question3, :question4, :question5, :question6
  json.url preference_url(preference, format: :json)
end
