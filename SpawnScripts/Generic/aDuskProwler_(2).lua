--[[
	Script Name		:	SpawnScripts/Darklight/aDuskProwler_(2).lua
	Script Purpose	:	To Keep a dusk prowler from walking through walls
	Script Author	:	Cynnar
	Script Date		:	10/14/2015
	Script Notes	:	A Dusk Prowler (spawn_id 340054) (spawn_location_id 579886)
	Script Notes	:	Between Hate's Envy and the Thexian burial chamber
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -420.55, -61.99, 187.73, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -421.35, -61.55, 184.83, 2)
	MovementLoopAddLocation(NPC, -433.86, -60.58, 189.97, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -436.84, -62.35, 204.51, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, -426.16, -62.16, 198.32, 2, math.random(5, 15))
end

function respawn(NPC)
	spawn(NPC)
end