class Course < ApplicationRecord
  belongs_to :department
  has_many :sections
  validates :department_id, presence: true
  validates :number, presence: true
  validates :hours, presence: true

  def self.search(search)
    if search
      @courses = Course.where('department_id LIKE :search OR number LIKE :search OR hours LIKE :search', search: "%#{search}%")
    else
      all
    end
  end
end

#format: { with: /^(?=.*[A-Z]).+$/,
#:hours, format: { with: /^(?=.*[A-Z]).+$/, allow_blank: false }