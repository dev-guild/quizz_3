class AddQuestionGroupIdToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :question_group_id, :integer
  end
end
