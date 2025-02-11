class Episode < ApplicationRecord
  belongs_to :season
  has_one :show, through: :season
  has_many :episode_states, dependent: :destroy

  scope :sorted_by_number, -> () { order(number: :asc) }

  def display_number
    'S%02dE%02d' % [season.number, number]
  end
end
