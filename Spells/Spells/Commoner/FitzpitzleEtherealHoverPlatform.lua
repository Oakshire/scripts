--[[
    Script Name    : Spells/Commoner/FitzpitzleEtherealHoverPlatform.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.13 06:04:29
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
SetMount(Caster, 9963)
-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increase Slashing, Piercing, Crushing, Aggression and Ranged of caster by 5.0
 AddSkillBonus(Caster, GetSkillIDByName("Defense"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)

end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end
