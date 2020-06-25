--[[
    Script Name    : Spells/Commoner/GhostlyDarkWarg.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.13 07:04:06
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
SetMount(Caster, 8128)
SetMountColor(Caster, 0, 0, 0, 30, 144, 255) 
-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increase Focus, Disruption, Ministration, Subjugation and Ordination of caster by 5
    AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Subjugation"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Ordination"), SkillAmt)
end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end

