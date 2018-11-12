class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :avatar
      t.string :name
      t.string :points
    end
  end
end
