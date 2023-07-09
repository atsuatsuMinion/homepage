class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :furigana
      t.string :name
      t.integer :number
      t.date :birthday
      t.string :position

      t.timestamps
    end
  end
end
