--[[
	Script Name		:	SpawnScripts/Darklight/aDuskProwler_(1).lua
	Script Purpose	:	To Keep a dusk prowler from walking through walls
	Script Author	:	Cynnar
	Script Date		:	10/13/2015
	Script Notes	:	A Dusk Prowler (spawn_id 340054) (spawn_location_id 579885)
	Script Notes	:	Between Hate's Envy and the Thexian burial chamber
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -407.46, -60.48, 174.23, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -420.76, -60.86, 180.15, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -425.42, -61.32, 186.58, 2)
	MovementLoopAddLocation(NPC, -424.20, -61.98, 190.47, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -410.19, -62.87, 189.81, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -406.82, -60.56, 174.38, 2, math.random(5, 15))
end

function respawn(NPC)
	spawn(NPC)
end