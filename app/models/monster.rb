class Monster < ApplicationRecord
    validates :name, presence: true # name not blank validation
    validates :name, uniqueness: { case_sensitive: false } # name uniqueness validation

    has_many :attacks, dependent: :destroy
    has_many :victims, through: :attacks    
end