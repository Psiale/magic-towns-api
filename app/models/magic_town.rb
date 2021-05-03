class MagicTown < ApplicationRecord
  belongs_to :state

  validates_presence_of :name
  validates_presence_of :characteristics
  validates_presence_of :attractions
  validates_presence_of :festivities
  validates_presence_of :location
end
