class MovieShow < ApplicationRecord
  belongs_to :movie
  validates :show_date, uniqueness: { scope: :movie_id }
  validates :show_slot, uniqueness: { scope: :show_date}

  scope :valid, -> { where('show_date >= ?', Date.today)}
end
