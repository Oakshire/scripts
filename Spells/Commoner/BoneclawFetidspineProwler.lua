--[[
    Script Name    : Spells/Commoner/BoneclawFetidspineProwler.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.28 01:03:08
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Potency, Chance, Health, Pwr, Speed)   
-- Summons a mount
SetMount(Caster, 14422)
    Say(Caster, "Might not be accurate model")


-- Increases Potency of caster by 1.0%
    AddSpellBonus(Caster, 659, Potency)

-- Increases Crit Chance of caster by 1.0%
    AddSpellBonus(Caster, 654, Chance)

--Increases Max Health of caster by 200.0
    AddSpellBonus(Caster, 606, Health)

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
