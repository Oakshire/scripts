--[[
    Script Name    : Spells/Commoner/DeepwaterDiskScion.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.02 08:04:50
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Crit, Health, Pwr, Speed)   
-- Summons a mount
SetMount(Caster, 10984)


-- Increases Crit Chance of caster by 2.0%
    AddSpellBonus(Caster, 654, Crit)

--Increases Max Health of caster by 150.0
    AddSpellBonus(Caster, 606, Health)

--Increases Max Power of caster by 150.0
    AddSpellBonus(Caster, 619, Pwr)

    --Increases your Ground Speed by 130%

    AddSpellBonus(Caster, 611, Speed)

-- Reduces maximum falling speed of caster.
AddControlEffect(Caster, 13)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 13)
end
