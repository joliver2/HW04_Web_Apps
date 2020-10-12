class Student < ApplicationRecord
  has_and_belongs_to_many :sections
  validates :name, presence: true
  validates :identifier, presence: true

  def self.search(search)
    key = "%#{search}%"
    if search

      @students = Student.where('name LIKE :search OR identifier LIKE :search', search: key).order(:name)
    else
      self.all
    end
  end
end
