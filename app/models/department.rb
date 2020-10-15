class Department < ApplicationRecord
  has_many :courses
  validates :name, presence: true

  validates :name, format: { with: /\A[a-zA-Z\s]+\z/,
                             message: "Please Enter Letters Only"}
end

