class Question < ApplicationRecord
  has_many :answers
  validates :text, presence: true, length:{minimum: 50}
  validates :title, presence: true, length:{minimum: 20}
end
