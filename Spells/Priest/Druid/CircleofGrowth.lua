--[[
    Script Name    : Spells/Priest/Druid/CircleofGrowth.lua
    Script Author  : neatz09
    Script Date    : 2020.08.29 07:08:24
    Script Purpose : 
                   : 
--]]

-- Opens a portal that transports adventurers to any Druid Ring in Norrath.

function cast(Caster, Target)
	local zone = GetZone(Caster)
	local X = GetX(Caster)
	local Y = GetY(Caster)
	local Z = GetZ(Caster)
		SpawnMob(zone, 121087, false, X, Y, Z)
end

