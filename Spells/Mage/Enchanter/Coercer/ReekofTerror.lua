--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/ReekofTerror.lua
    Script Author  : neatz09
    Script Date    : 2020.02.13 04:02:05
    Script Purpose : 
                   : 
--]]

-- Decreases Threat to targets in Area of Effect by 1,850 
-- Makes targets in Area of Effect afraid
-- Dispelled when target takes damage
-- Resistibility increases against targets higher than level 29.
function cast(Caster, Target, Hate)
	AddHate(Caster, Target, Hate, 1)
	AddControlEffect(Target, 6)
	Say(Caster, "Resistability not implemented.")
end

function remove(Caster, Target)
	RemoveControlEffect(Target, 6)
end