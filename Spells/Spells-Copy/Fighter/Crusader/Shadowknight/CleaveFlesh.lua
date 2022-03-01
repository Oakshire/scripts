--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/CleaveFlesh.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.11 06:01:30
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, BonusAmt)
    -- Inflicts 64 - 107 disease damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Decreases WIS of target by 16.2
    AddSpellBonus(Target, 3, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
