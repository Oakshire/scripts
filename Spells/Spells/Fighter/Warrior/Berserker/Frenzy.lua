--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Frenzy.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 06:10:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinVal2, MaxVal2, MinVal3, MaxVal3)
-- Inflicts 118 - 354 melee damage on target
SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Inflicts 147 - 443 melee damage on target
if LastSpellAttackHit() then
SpellDamage(Target, DmgType, MinVal2, MaxVal2)
end
-- Inflicts 177 - 532 melee damage on target
if LastSpellAttackHit() then
SpellDamage(Target, DmgType, MinVal3, MaxVal3)
end
end

