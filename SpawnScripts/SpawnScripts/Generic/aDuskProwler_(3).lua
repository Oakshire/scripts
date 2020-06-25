--[[
	Script Name		:	SpawnScripts/Darklight/aDuskProwler_(3).lua
	Script Purpose	:	To Keep a dusk prowler from walking through walls
	Script Author	:	Cynnar
	Script Date		:	10/14/2015
	Script Notes	:	A Dusk Prowler (spawn_id 340054) (spawn_location_id 579884)
	Script Notes	:	Between Hate's Envy and the Thexian burial chamber
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -440.22, -62.06, 202.13, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -436.73, -62.59, 210.57, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -430.28, -62.31, 202.35, 2)
	MovementLoopAddLocation(NPC, -423.73, -62.66, 196.53, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -435.33, -60.32, 189.45, 2, math.random(5, 15))
end

function respawn(NPC)
	spawn(NPC)
end