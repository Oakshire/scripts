--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/ChromaticShower.lua
    Script Author  : neatz09
    Script Date    : 2020.03.06 08:03:04
    Script Purpose : 
                   : 
--]]

-- Inflicts 104 - 127 mental damage on target encounter instantly and every second
-- Stifles target encounter
-- Epic targets gain an immunity to Stifle effects of 15.0 seconds and duration is reduced to 1.7 seconds.
-- Resistibility increases against targets higher than level 29.
function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Epic Spell Abilities not implemented yet.")
	
SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddControlEffect(Target, 2)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end