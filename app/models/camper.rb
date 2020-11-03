class Camper < ApplicationRecord
    has_many :sign_ups
    has_many :activities, through: :sign_ups

    validates :name, uniqueness: :true
    validates :name, presence: :true
    validates :age, numericality: {greater_than: 7, less_than: 19}
end
