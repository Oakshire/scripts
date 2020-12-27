--[[
    Script Name    : Spells/Commoner/EtherealProwler.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.11 07:04:36
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
SetMount(Caster, 13845)
SetMountColor(Caster, 250, 250, 250, 250, 250, 250)
-- Increases your ground speed by 135%    
AddSpellBonus(Caster, 611, Speed)
-- Increases Focus, Disruption, Ministration, Subjugation, Ordination, Slashing, Piercing, Crushing, Aggression and Ranged of caster by 5.0
    AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Subjugation"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Ordination"), SkillAmt)
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
