class QuestionType < ApplicationRecord
  belongs_to :question
  validates_uniqueness_of :ident_name
end
