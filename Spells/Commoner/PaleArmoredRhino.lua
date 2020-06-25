--[[
    Script Name    : Spells/Commoner/PaleArmoredRhino.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.07 08:05:58
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
SetMount(Caster, 7206)
    Say(Caster, "Model might be incorrect")


-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increases Ranged, Aggression, Piercing, Crushing and Slashing of caster by 5.0 
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
