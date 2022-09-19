class Attack < ApplicationRecord
    validate :monster_with_scare_level_higher_than_five_cant_have_teen_victims

    belongs_to :monster
    belongs_to :victim

    def monster_with_scare_level_higher_than_five_cant_have_teen_victims
        if(monster.scare_level > 5 && (2022 - victim.birthdate.year)<18)
            errors.add(:base, :invalid, message: " #{monster.name} no puede asustar.")
        end 
    end
end