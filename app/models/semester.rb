class Semester < ApplicationRecord
  has_many :sections
  validates :semester, presence: true

  validates :semester, format: { with: /\A[a-zA-Z]+\z/,
                                 message: "Please Enter Letters Only"}

  def self.search(search)
    if search
      @semesters = Semester.where('semester LIKE :search', search: "%#{search}%")
    else
      all
    end
  end
end
