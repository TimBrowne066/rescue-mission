class Answer < ApplicationRecord
  belongs_to :question
  validates :text, presence: true, length:{minimum: 50}
end
