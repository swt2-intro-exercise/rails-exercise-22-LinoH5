class Paper < ApplicationRecord
    has_and_belongs_to_many :authors
    validates :title, presence: true,
                      length: { minimum: 1 }
    validates :venue, presence: true,
                      length: { minimum: 1 }
    validates :year, presence: true,
                     numericality: true
    scope :written_in, -> (year) { where("year == ?", year)}
end
