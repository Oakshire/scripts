--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Nightmare.lua
    Script Author  : theFoof
    Script Date    : 2014.3.1
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgLow, DmgHigh, Debuff)
-- Decreases Mitigation of target vs arcane damage by 141
-- Inflicts 21 - 25 mental damage on target instantly and every 6 seconds
    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
    AddSpellBonus(Target, 203, Debuff)
end

function tick(Caster, Target, DmgType, DmgLow, DmgHigh, Debuff)
    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end

