class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.string :title
      t.datetime :match_datetime
      t.string :enemy_team
      t.integer :enemy_score
      t.integer :my_score

      t.timestamps
    end
  end
end
