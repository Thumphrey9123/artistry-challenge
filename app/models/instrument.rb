class Instrument < ApplicationRecord
    has_many :joins
    has_many :artists, through: :joins
end
