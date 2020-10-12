class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  belongs_to :semester
  has_and_belongs_to_many :students
  validates :year, presence: true, format: { with: /\A[0-9\s]+\z/, message: "Only numbers"}

  def self.search(search)
    if search
      key = "%#{search}%"
      @sections = Section.where('semester_id LIKE :search, section.courses LIKE :search', search: key).order(:name)
    else
      self.all
    end
  end
end
