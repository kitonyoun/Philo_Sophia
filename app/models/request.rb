class Request < ApplicationRecord
  belongs_to :user

  has_many :questionnaire

  enum answer_box_type: { 三択式:0, 五択式:1, 記述式:2}

  validates :content, presence: true

  has_many :tags, dependent: :destroy
end
