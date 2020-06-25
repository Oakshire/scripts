--[[
    Script Name    : Spells/Commoner/BattlehardenedFightingWarg.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.25 04:03:06
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
SetMount(Caster, 12987)
-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increases Slashing, Piercing, Crushing, Aggression and Ranged of caster by 5.0%
 AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Aggression"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end