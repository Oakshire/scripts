--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/ShockWave.lua
    Script Author  : neatz09
    Script Date    : 2020.05.10 07:14:50
    Script Purpose : 
                   : 
--]]

-- Inflicts 402 - 669 mental damage on targets in Area of Effect
-- Stuns targets in Area of Effect
-- Epic targets gain an immunity to Stun effects of 15.0 seconds and duration is reduced to 1.7 seconds.
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target)
    AddControlEffect(Target, 4)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	Say(Caster, "Immunity and Resistability not implemented.")
end


function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end