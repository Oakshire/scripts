--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/IceSpears.lua
    Script Author  : Zcoretri
    Script Date    : 2013.07.12 11:38:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal, BonusAmt)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
    AddSpellBonus(Target, 200, BonusAmt) -- vs Elemental
end

function tick(Caster, Target, DoTType, MinVal, MaxVal, BonusAmt)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end

function remove(Caster, Target, DoTType, MinVal, MaxVal, BonusAmt)
    RemoveSpellBonus(Target)
end
