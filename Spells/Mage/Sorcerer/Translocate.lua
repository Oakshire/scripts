--[[
    Script Name    : Spells/Mage/Sorcerer/Translocate.lua
    Script Author  : neatz09
    Script Date    : 2020.02.24 11:02:48
    Script Purpose : 
                   : 
--]]

-- Opens a portal that transports adventurers to any Spire in Norrath.
function cast(Caster, Target)
	local zone = GetZone(Caster)
	local X = GetX(Caster)
	local Y = GetY(Caster)
	local Z = GetZ(Caster)
		SpawnMob(zone, 121134, false, X, Y, Z)
end

