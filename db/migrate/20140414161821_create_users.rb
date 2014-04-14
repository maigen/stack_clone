class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end

    create_table :questions do |t|
      t.string :content
      t.integer :user_id
      t.timestamps
    end

    create_table :answers do |t|
      t.string :content
      t.integer :question_id
      t.timestamps
    end

    create_table :votes do |t|
      t.integer :answer_id
      t.integer :value
      t.timestamps
    end
  end
end
