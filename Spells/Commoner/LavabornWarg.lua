--[[
    Script Name    : Spells/Commoner/LavabornWarg.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.23 06:04:49
    Script Purpose : 
                   : 
--]]

--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, PReg, HReg, Health, Crit, Speed)   
-- Summons a mount
SetMount(Caster, 10170)

-- Increase Out-of-Combat Power Regeneration Per Tick of caster by 15
    AddSpellBonus(Caster, 603, PReg)

-- Increase Out-of-Combat Health Regeneration Per Tick of caster by 15
    AddSpellBonus(Caster, 602, HReg)

-- Increase health of caster by 150
    AddSpellBonus(Caster, 606, Health)

-- Increase critbonus of caster by 1
    AddSpellBonus(Caster, 657, Crit)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
