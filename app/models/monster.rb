class Monster < ApplicationRecord
    validations :name, presence: true # name not blank validation
    validations :name, uniqueness: { case_sensitive: false }# name uniqueness validation
end