class Student < ApplicationRecord
  has_and_belongs_to_many :sections
  validates :name, presence: true
  validates :identifier, presence: true
end
