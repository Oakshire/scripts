--[[
    Script Name    : Spells/Priest/Druid/ProvokingSwarm.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:10
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 14 - 17 divine damage on target instantly and every 3 seconds
-- Decreases Defense of target by 4.6

function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
SpellDamage(Target, DmgType, MinVal, MaxVal)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
