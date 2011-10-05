class Car < ActiveRecord::Base
  belongs_to :user

  validates  :make, presence: true
  validates  :model, presence: true
  validates  :initial_odometer, presence: true
end
