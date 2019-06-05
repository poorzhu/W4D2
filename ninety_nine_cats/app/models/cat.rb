

class Cat < ApplicationRecord
  has_many :cat_rental_requests, dependent: :destroy


  
  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: { in: %w(black orange white grey rainbow),
    message: "%{value} is not a valid color" }
  validates :name, presence: true
  validates :sex, presence: true, inclusion: { in: %w(M F) }
  validates :description, presence: true

  def age
    Date.today.year - birth_date.year
  end


end