require 'action_view'

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  
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