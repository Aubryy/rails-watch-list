class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
  # You can’t delete a movie if it is referenced in at least one bookmark.

end
