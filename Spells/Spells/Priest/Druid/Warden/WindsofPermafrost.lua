--[[
    Script Name    : Spells/Priest/Druid/Warden/WindsofPermafrost.lua
    Script Author  : neatz09
    Script Date    : 2019.09.11 03:09:22
    Script Purpose : 
                   : 
--]]
-- Inflicts 226 - 276 cold damage on target encounter

function cast(Caster, Target, DmgType, MinVal, MaxVal, DebuffAmt)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
-- Decreases Piercing, Slashing and Crushing of target encounter by 8.6
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), DebuffAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), DebuffAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), DebuffAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)

end


