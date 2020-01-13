class List < ApplicationRecord
  validates :attendance, presence: true, length: { maximum: 4 },
                    format: { with: /\A[0-9]+[a-z]+[0-99]+\z/i }
  validates :number, presence: true, length: { maximum: 3 },
                    numericality: { less_than_or_equal_to: 100, greater_than_or_equal_to: 1 }
end
