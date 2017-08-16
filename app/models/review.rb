class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, numericality: true, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }

  # before_save :integerfy

  private

  # def integerfy
  #   self.rating.to_i
  # end

end
