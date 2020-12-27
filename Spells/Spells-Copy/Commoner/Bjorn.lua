--[[
    Script Name    : Spells/Commoner/Bjorn.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.25 05:03:01
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Bonus, Chance, Pwr, Speed)   
-- Summons a mount
SetMount(Caster, 9741)

-- Increases Crit Bonus of caster by 1.0%
    AddSpellBonus(Caster, 657, Bonus)

-- Increases Crit Chance of caster by 3.0%
    AddSpellBonus(Caster, 654, Chance)

--Increases Max Power of caster by 200.0
    AddSpellBonus(Caster, 619, Pwr)

    --Increases your Ground Speed by 130%

    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 12)
end
