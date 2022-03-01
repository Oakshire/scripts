--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Sever.lua
    Script Author  : John Adams
    Script Date    : 2014.01.11 05:01:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, DoTVal, DmgType, MinVal, MaxVal, AttackSpeed)

    -- Inflicts 17 slashing damage on target instantly and every 4 seconds
    SpellDamage(Target, DoTType, DoTVal)

    -- Decreases Damage Per Second of target by 6.0
    AddSpellBonus(Target, 617, AttackSpeed)

    -- Inflicts 12 - 21 slashing damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function tick(Caster, Target, DoTType, DoTVal, DmgType, MinVal, MaxVal, AttackSpeed)
    SpellDamage(Target, DoTType, DoTVal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
