--[[
    Script Name    : Spells/Commoner/CavalrySpiritsteedWarbarding.lua
    Script Author  : Skywalker646
    Script Date    : 2019.11.21 07:11:27
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
SetMount(Caster, 6917)
SetMountColor(Spawn, 65, 105, 225)

-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increases Piercing, Ranged, Slashing, Crushing and Focus of caster by 7.0
    AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end
