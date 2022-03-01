--[[
    Script Name    : Spells/Commoner/BlueSaddleBlackNightmare.lua
    Script Author  : neatz09
    Script Date    : 2019.11.15 05:11:57
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, HP, Pwr, SkillAmt, Speed)
-- Increases Max Health of caster by 150.0
    AddSpellBonus(Caster, 500, HP)
--Increases Max Power of caster by 150.0
    AddSpellBonus(Caster, 619, Pwr)
--Increases Ranged and Slashing of caster by 7.0
    AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
--Increases Piercing, Disruption and Crushing of caster by 7.0
    AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
--Summons a mount to ride
SetMount(Caster, 6831)
SetMountColor(Caster, 0, 0, 0, 0, 0, 255) 
--Increases your ground speed by 130%
    AddSpellBonus(Target, 611, Speed)
--Requires Evil Alignment.
    Say(Caster, "Alignment Requirement not implemented.")

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
