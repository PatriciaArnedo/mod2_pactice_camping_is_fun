class SignUp < ApplicationRecord
    belongs_to :activity
    belongs_to :camper

    validates :time, numericality: {greater_than: 0, less_than: 24}
    validates :camper_id, :activity_id, presence: :true
end
