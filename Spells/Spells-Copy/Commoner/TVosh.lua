--[[
    Script Name    : Spells/Commoner/TVosh.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.17 08:05:56
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Potency, Crit, Pwr, Speed)   
-- Summons a mount
SetMount(Caster, 10174)

-- Increases Potency of caster by 12.0%
    AddSpellBonus(Caster, 659, Potency)

-- Increases Crit Bonus of caster by 12.0%
    AddSpellBonus(Caster, 657, Crit)

--Increases Max Power of caster by 2000.0
    AddSpellBonus(Caster, 619, Pwr)

    --Increases your Ground Speed by 130%
    --Increases your Air Speed by 150% 
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end