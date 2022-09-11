class Monster < ApplicationRecord
    validates :name, presence: true # name not blank validation
    validates :name, uniqueness: { case_sensitive: false }# name uniqueness validation
end