--[[
    Script Name    : Spells/Scout/Bard/Troubador/TapEssence.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 10:10:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinPwr, MaxPwr)
 -- Inflicts 30 - 51 mental damage on target encounter
SpellDamage(Target, DmgType, MinVal, MaxVal)
  -- Increases power of group members (AE) by 25 - 42
        SpellHeal(Power, MinPwr, MaxPwr)
end