class Tag < ApplicationRecord
  has_and_belongs_to_many :question
  validates_uniqueness_of :ident_name
end
