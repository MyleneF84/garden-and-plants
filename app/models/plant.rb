class Plant < ApplicationRecord
  belongs_to :garden

  PLANTS = %w[rose lily ficus pothos].freeze
  validates :name, presence: true
  validates :name, inclusion: { in: PLANTS }
end
