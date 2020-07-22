--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/Viscerate.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.15 08:12:23
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    if IsFlanking(Caster, Target) then
        return true
    else
        SendMessage(Caster, "You must be flanking or behind your target to use this ability!", "yellow")
        return false
    end
end

function cast(Caster, Target, BonusAmt, DmgType, MinVal, MaxVal)
    -- Decreases AGI of target by 5.0
    AddSpellBonus(Target, 2, BonusAmt)

    -- Inflicts 16 - 27 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
