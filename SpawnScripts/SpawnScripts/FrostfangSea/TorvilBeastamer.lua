--[[
	Script Name	: SpawnScripts/FrostfangSea/TorvilBeastamer.lua
	Script Purpose	: Torvil Beastamer <Pet Merchant>
	Script Author	: theFoof
	Script Date	: 2013.10.29
	Script Notes	:
--]]

require"SpawnScripts/FrostfangSea/halas_proximity_cheer"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "ProxCheer")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	local choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "", "Tail or beak, I got what ye seek!", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Haven't a friend in the world?  Buy one from me!", "nod", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Warm up yer house with a pet, my friend!", "hello", 0, 0, Spawn)
	end
end

