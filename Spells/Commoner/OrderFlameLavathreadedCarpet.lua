--[[
    Script Name    : Spells/Commoner/OrderFlameLavathreadedCarpet.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.06 08:05:05
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Power, Health, DMG, Heal, Melee, Speed)   
-- Summons a mount
SetMount(Caster, 10172)

-- Increases Out-of-Combat Power Regeneration Per tick of caster by 90 
    AddSpellBonus(Caster, 603, Power)

-- Increases Out-of-Combat Health Regeneration Per Tick of caster by 90 
    AddSpellBonus(Caster, 602, Health)

-- Increases spell damage by 15.0
    AddSpellBonus(Caster, 700, DMG)

-- Increases heal amount by 15.0
AddSpellBonus(Caster, 701, Heal)

-- Increases melee damage by 15.0
AddSpellBonus(Caster, 313, Melee)

 --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end