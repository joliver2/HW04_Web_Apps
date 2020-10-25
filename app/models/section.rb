class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  belongs_to :semester
  has_and_belongs_to_many :students
  validates :year, presence: true, format: { with: /\A[0-9\s]+\z/, message: "Only numbers"}

  def self.search(search)
    if search
      @sections = Section.where('year LIKE :search', search: "%#{search}%")
    else
      all
    end
  end
end
