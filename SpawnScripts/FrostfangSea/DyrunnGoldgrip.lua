--[[
	Script Name	: SpawnScripts/FrostfangSea/DyrunnGoldgrip.lua
	Script Purpose	: Dyrunn Goldgrip <Banker>
	Script Author	: theFoof
	Script Date	: 2013.10.30
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
		PlayFlavor(NPC, "", "Your coin will be safe in the Frigid Strongbox, New Halas' official bank.", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Bank accounts are like weapons.  You must maintain them, lest they erode!", "smile", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "Where did I put my abacus?", "ponder", 1689589577, 4560189, Spawn)
	end
end