--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Paranoia.lua
    Script Author  : Neatz09
    Script Date    : 8-12-19
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgLow, DmgHigh)
-- Inflicts X - Y mental damage on target
-- Stuns target
-- Epic targets gain an immunity to Stun effects of 16.5 seconds and duration is reduced to 1.8 seconds.
-- Resistibility increases against targets higher than level 29.
    Say(Caster, "Epic Immunity and Resistability not implemented yet")
	AddControlEffect(Target, 4)
    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end