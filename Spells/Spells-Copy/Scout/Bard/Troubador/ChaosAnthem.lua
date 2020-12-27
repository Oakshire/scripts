--[[
    Script Name    : Spells/Scout/Bard/Troubador/ChaosAnthem.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 10:10:27
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, Stat)
-- Inflicts 120 mental damage on target encounter instantly and every 6 seconds 
	SpellDamage(Target, DmgType, MinVal, MaxVal)  
-- Decreases WIS of target encounter by 72.3
	AddSpellBonus(Target, 3, Stat)
end

function tick(Caster, Target)
  SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)  
    RemoveSpellBonus(Target)
end