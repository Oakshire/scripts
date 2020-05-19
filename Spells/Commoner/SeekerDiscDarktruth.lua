--[[
    Script Name    : Spells/Commoner/SeekerDiscDarktruth.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.13 05:05:36
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Crit, Pwr, Health, Speed)   
-- Summons a mount
SetMount(Caster, 10985)


-- Increases Crit Chance of caster by 2.0%
    AddSpellBonus(Caster, 654, Crit)

--Increases Max Power of caster by 150.0 
    AddSpellBonus(Caster, 619, Pwr)

--Increases Max Health of caster by 150.0 
    AddSpellBonus(Caster, 606, Health)

    --Increases your Ground Speed by 130%

    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
