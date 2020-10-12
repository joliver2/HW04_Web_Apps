class Department < ApplicationRecord
  has_many :courses
  validates :name, presence: true

  validates :name, format: { with: /\A[a-zA-Z\s]+\z/,
                             message: "Please Enter Letters Only"}

  def self.search(search)
    if search
      key = "%#{search}%"
      @departments = Department.where('name LIKE :search', search: key).order(:name)
    else
      self.all
    end
  end
end

