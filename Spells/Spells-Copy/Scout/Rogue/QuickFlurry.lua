--[[
    Script Name    : Spells/Scout/Rogue/QuickFlurry.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 03:12:44
    Script Purpose : 
                   : 
--]]

-- Inflicts 24 - 40 melee damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Inflicts 24 - 40 melee damage on target
if LastSpellAttackHit() then
SpellDamage(Target, DmgType, MinVal, MaxVal)
end

end

