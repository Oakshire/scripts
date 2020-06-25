--[[
    Script Name    : Spells/Commoner/DeathclawFetidspineProwler.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.02 08:04:21
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Potency, Health, Pwr, Speed)   
-- Summons a mount
SetMount(Caster, 14422)
    Say(Caster, "Might not be accurate model")


-- Increases Potency of caster by 3.0%
    AddSpellBonus(Caster, 659, Potency)

--Increases Max Health of caster by 300.0
    AddSpellBonus(Caster, 606, Health)

--Increases Max Power of caster by 300.0
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
