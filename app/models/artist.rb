class Artist < ApplicationRecord
    has_many :joins
    has_many :instruments, through: :joins
    validates :title, uniqueness: true
    validates :name, presence: true
end
