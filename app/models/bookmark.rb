class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
