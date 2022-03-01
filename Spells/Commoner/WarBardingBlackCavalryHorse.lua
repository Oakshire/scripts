--[[
    Script Name    : Spells/Commoner/WarBardingBlackCavalryHorse.lua
    Script Author  : neatz09
    Script Date    : 2019.11.18 08:11:21
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
-- Summons a mount to ride
SetMount(Caster, 6840)
SetMountColor(Caster, 0, 0, 0)
-- increases your speed by 130%
AddSpellBonus(Caster, 611, Speed)
-- Increases Focus, Crushing, Piercing, Slashing and Ranged of caster by 7
    AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end



