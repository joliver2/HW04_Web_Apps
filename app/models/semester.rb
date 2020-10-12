class Semester < ApplicationRecord
  has_many :sections
  validates :semester, presence: true

  validates :semester, format: { with: /\A[a-zA-Z]+\z/,
                                 message: "Please Enter Letters Only"}

  def self.search(search)
    if search
      self.where("  LIKE ?", "%#{self.params[:search]}%" )
    else
      self.all
    end
  end
end
