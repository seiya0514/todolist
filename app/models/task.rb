class Task < ApplicationRecord
  validates :title, presence: true
  belongs_to :list
end
