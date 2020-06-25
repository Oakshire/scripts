--[[
	Script Name	: SpawnScripts/FrostfangSea/GruuFairbairn.lua
	Script Purpose	: Gruu Fairbairn <Advancement Counsel>
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "", "Learning for the sake of learning is still learning.", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "Achieving achievements is a worthwhile life goal.", "", 0, 0, Spawn)
	end
end