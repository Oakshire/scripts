--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Asylum.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 07:03:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgMin, DmgMax, DoTType, MinVal, MaxVal, BonusAmt)
    -- Inflicts 41 - 51 mental damage on target instantly and every 6 seconds
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end

    -- Decreases Mitigation of target vs arcane damage by 141
    AddSpellBonus(Target, 203, BonusAmt)
end

function tick(Caster, Target, DmgType, DmgMin, DmgMax, DoTType, MinVal, MaxVal, BonusAmt)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end

function remove(Caster, Target, DmgType, DmgMin, DmgMax, DoTType, MinVal, MaxVal, BonusAmt)
    RemoveSpellBonus(Target)

    -- Applies Forceful Headache on termination.
    --     Inflicts 103 - 172 mental damage on target
    --         If over 50% power
    if (GetCurrentHP(Target) / GetMaxHP(Target)) >= 0.5 then
        -- Used ProcDamage() so I could override the spell name
        ProcDamage(Caster, Target, "Forceful Headache", DmgType, DmgMin, DmgMax)
    end
end

