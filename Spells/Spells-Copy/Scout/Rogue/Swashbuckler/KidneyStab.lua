--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/KidneyStab.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.15 08:12:55
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Must be flanking or behind
    return IsFlanking(Target, Caster)
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, BonusAmt)
    -- Inflicts 29 - 36 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Decreases Mitigation of target vs physical damage by 54
    AddSpellBonus(Target, 200, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end