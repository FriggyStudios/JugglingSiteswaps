class Request < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { maximum: 20,
   too_long: "%{count} characters is the maximum allowed" }
  validates :description, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
  validates :difficulty,numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  validates :ball_count,numericality: { greater_than_or_equal_to: 3, less_than_or_equal_to: 13 } 



end
