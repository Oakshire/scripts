--[[
    Script Name    : Spells/Commoner/FitzpitzleHoverPlatform.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.13 06:04:40
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, SkillAmt, Speed)
--Summons a mount to ride    
SetMount(Caster, 19680)

-- Increases Focus and Defense of caster by 6.0
    AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Defense"), SkillAmt)


-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
end

function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end
