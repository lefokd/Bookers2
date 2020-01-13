class Book < ApplicationRecord
	belongs_to :user
# self.abstract_class = true
  validates :title, presence: true
  validates :body, presence: true
  validates :body,	length: { maximum: 200}
end
