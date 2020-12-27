--[[
    Script Name    : Spells/Commoner/ArmoredPinto.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.24 09:03:36
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, XP, Speed)
--Summons a mount to ride    
SetMount(Caster, 9970)

-- Increase Combat XP Gain of target by 10%    
AddSpellBonus(Caster, 625, XP)

-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)



end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end