class Tag < ApplicationRecord
	validates :content, presence: true
	belongs_to :request
end
