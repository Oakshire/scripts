--[[
	Script Name		:	SpawnScripts/FrostfangSea/aportaljumpedRyGorrraider.lua
	Script Purpose	:	for the raiders that pop out of the portal in frostfang
	Script Author	:	theFoof
	Script Date		:	2013.6.8
	Script Notes	:	
--]]

function spawn(NPC)
	local choice = math.random(1,2)
	SetSpeed(NPC, 7)
	if choice == 1  then
		MoveToLocation(NPC, 713.49 + math.random(-7,7), 100.34, -446.09 + math.random(-7,7))
	else
		MoveToLocation(NPC, 692.41 + math.random(-7,7), 96.14, -466.44 + math.random(-7,7))
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end