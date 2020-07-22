--[[
    Script Name    : Spells/Scout/Bard/Troubador/TapEssence.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 10:10:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, HealType, HealMin, HealMax)
 -- Inflicts 30 - 51 mental damage on target encounter
SpellDamage(Target, DmgType, MinVal, MaxVal)
  

function cast(Caster, Target, DmgType, MinVal, MaxVal, HealType, HealMin, HealMax)
-- Increases power of group members (AE) by 25 - 42
local group = GetGroup(Caster)
if group == nil then
    SpellHeal("Power", HealMin, HealMax, Caster)
else
    for k,v in ipairs(GetGroup(Spawn)) do
        SpellHeal("Power", HealMin, HealMax, v)
    end
end
end
