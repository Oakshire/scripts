--[[
    Script Name    : Spells/Scout/Rogue/Brigand/BatteryandAssault.lua
    Script Purpose : Brigand Direct Damage
    Script Author  : Zcoretri
    Script Date	   : 13.March.2014
    Script Notes   :
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, DmgType2, MinDmg2, MaxDmg2)
-- Inflicts melee damage on target
-- Inflicts melee damage on target
-- NOTE: If one of these attacks misses, the rest after miss automaticly
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

    if LastSpellAttackHit() then
        SpellDamage(Target, DmgType2, MinDmg2, MaxDmg2)
    end
end
