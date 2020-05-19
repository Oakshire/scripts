--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/Hamstring.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 10:10:02
    Script Purpose : 
                   : 
--]]

-- Inflicts 211 - 352 melee damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, Snare)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
if LastSpellAttackHit() then
  
-- Slows target by 37.6%
-- 5% chance to dispel when target receives hostile action
-- 5% chance to dispel when target takes damage
SetSpeedMultiplier(Target, ((100 - Snare) / 100))
end

end

function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1)
end


