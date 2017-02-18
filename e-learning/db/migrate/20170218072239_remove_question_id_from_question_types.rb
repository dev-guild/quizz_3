class RemoveQuestionIdFromQuestionTypes < ActiveRecord::Migration[5.0]
  def change
    remove_column :question_types, :question_id, :integer
  end
end
