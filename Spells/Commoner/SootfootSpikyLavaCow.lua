--[[
    Script Name    : Spells/Commoner/SootfootSpikyLavaCow.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.14 07:05:27
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, PReg, HReg, Health, Speed)   
-- Summons a mount
SetMount(Caster, 10175)


-- Increases Power Regen of caster by 15.0 
    AddSpellBonus(Caster, 601, PReg)

--Increases Health Regen of caster by 15.0 
    AddSpellBonus(Caster, 600, HReg)

--Increases Max Health of caster by 100.0 
    AddSpellBonus(Caster, 606, Health)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
