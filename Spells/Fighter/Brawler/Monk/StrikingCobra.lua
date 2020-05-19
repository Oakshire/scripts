--[[
    Script Name    : Spells/Fighter/Brawler/Monk/StrikingCobra.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.13 02:01:18
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
        Say(Caster, "need to add iflasthit to script.")
-- Inflicts 49 - 82 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Decreases Defense of target by 1.3
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)

end
