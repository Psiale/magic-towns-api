class State < ApplicationRecord
  has_many :magic_towns, dependent: :destroy

  validates_presence_of :name
end
