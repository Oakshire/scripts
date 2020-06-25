--[[
    Script Name    : Spells/Commoner/ScornDiskDeathmage.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.13 05:05:21
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Crit, Potency, Pwr, Health, Speed)   
-- Summons a mount
SetMount(Caster, 10978)


-- Increases Crit Bonus of caster by 2.0%
    AddSpellBonus(Caster, 657, Crit)


-- Increases the potency of all abilities by 2.0%
    AddSpellBonus(Caster, 659, Potency)


--Increases Max Power of caster by 300.0 
    AddSpellBonus(Caster, 619, Pwr)

--Increases Max Health of caster by 300.0 
    AddSpellBonus(Caster, 606, Health)

    --Increases your Ground Speed by 130%

    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
