class CreateQuestionerForms < ActiveRecord::Migration[5.0]
  def change
    create_table :questioner_forms do |t|
      t.integer :question_id
      t.integer :user_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
