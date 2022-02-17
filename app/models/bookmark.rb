class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }, allow_blank: false
  # validates :movie, presence: true
  # validates :list, presence: true
  validates :movie, uniqueness: { scope: [:list] }
  validates_associated :list, :movie
end
