class Victim < ApplicationRecord 
    validates :name, presence: true

    has_many :attacks
    has_many :monsters, through: :attacks    
end