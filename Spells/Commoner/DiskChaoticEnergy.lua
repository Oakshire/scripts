--[[
    Script Name    : Spells/Commoner/DiskChaoticEnergy.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.06 08:04:23
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, Health, Mana)  
-- Summons a mount
SetMount(Caster, 12992)


-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed, Speed)


--Increases Max Heath of caster by 300.0
    AddSpellBonus(Caster, 606, Health)


--Increases Max Heath of caster by 300.0
    AddSpellBonus(Caster, 619, Mana)

end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end