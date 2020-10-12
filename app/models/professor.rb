class Professor < ApplicationRecord
  has_many :sections
  validates :name, presence: true
  validates :office, presence: true

  validates :name, format: { with: /\A[a-zA-Z\s]+\z/,
                             message: "Please Enter Letters Only"}

  def self.search(search)
    if search
      key = "%#{search}%"
      @professors = Professor.where('name LIKE :search OR office LIKE :search' , search: key).order(:name)
    else
      self.all
    end
  end
end
