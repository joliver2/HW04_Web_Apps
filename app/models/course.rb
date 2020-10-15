class Course < ApplicationRecord
  belongs_to :department
  has_many :sections
  validates :department_id, presence: true
  validates :number, presence: true
  validates :hours, presence: true
end

#format: { with: /^(?=.*[A-Z]).+$/,
#:hours, format: { with: /^(?=.*[A-Z]).+$/, allow_blank: false }