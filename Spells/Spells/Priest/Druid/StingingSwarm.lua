--[[
    Script Name    : Spells/Priest/Druid/StingingSwarm.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:52
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 8 - 10 divine damage on target instantly and every 3 seconds
-- Decreases Defense of target by 2.7

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
