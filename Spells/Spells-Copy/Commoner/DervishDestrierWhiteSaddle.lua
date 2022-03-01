--[[
    Script Name    : Spells/Commoner/DervishDestrierWhiteSaddle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.04 09:04:30
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, SkillAmt)
--Summons a mount to ride    
SetMount(Caster, 6829)
SetMountColor(Caster, 255, 255, 255, 255, 255, 255) 

-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increases Piercing, Ranged, Slashing, Crushing and Focus of caster by 4.7
    AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end