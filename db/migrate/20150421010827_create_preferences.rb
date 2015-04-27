class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4
      t.string :question5
      t.string :question6

      t.timestamps
    end
  end
end
