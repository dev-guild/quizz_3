class CreateQuestionTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :question_types do |t|
      t.string :ident_name
      t.string :name
      t.integer :question_id

      t.timestamps
    end
  end
end
