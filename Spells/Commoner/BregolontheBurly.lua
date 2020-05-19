--[[
    Script Name    : Spells/Commoner/BregolontheBurly.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.28 01:03:41
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Health, Pwr, Chance, Potency, Double, Speed)   
-- Summons a mount
SetMount(Caster, 15379)
    Say(Caster, "Might not be accurate model")

--Increases Max Heath of caster by 400.0
    AddSpellBonus(Caster, 606, Health)

--Increases Max Power of caster by 400.0
    AddSpellBonus(Caster, 619, Pwr)

-- Increases Crit Chance of caster by 3.0%
    AddSpellBonus(Caster, 654, Chance)

-- Increases Potency of caster by 3.0%
    AddSpellBonus(Caster, 659, Potency)

-- Increases Potency of caster by 14.0%
    AddSpellBonus(Caster, 642, Double)

    --Increases your Ground Speed by 130%

    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 12)
end
