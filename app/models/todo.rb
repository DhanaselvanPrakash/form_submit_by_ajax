class Todo < ApplicationRecord
  validates :title, :status, :deadline, presence: true
end
