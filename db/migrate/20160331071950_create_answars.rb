class CreateAnswars < ActiveRecord::Migration
  def change
    create_table :answars do |t|
      t.integer :user_id
      t.integer :question_id
      t.text :text
      t.timestamps
    end
  end
end
