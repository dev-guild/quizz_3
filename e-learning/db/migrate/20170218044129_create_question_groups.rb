class CreateQuestionGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :question_groups do |t|
      t.string :ident_name
      t.string :name

      t.timestamps
    end
  end
end
