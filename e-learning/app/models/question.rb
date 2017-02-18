class Question < ApplicationRecord
  belongs_to :question_group
  belongs_to :question_type
  has_and_belongs_to_many :tags
  has_many :answer
end
