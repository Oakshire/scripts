--[[
	Script Name	: SpawnScripts/FrostfangSea/CatherineBowne.lua
	Script Purpose	: Catherine Bowne <Banker>
	Script Author	: theFoof
	Script Date	: 2013.09.26
	Script Notes	: 
--]]

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
		PlayFlavor(NPC, "", "Bank accounts are like weapons.  You must maintain them, lest they erode!", "smile", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Your coin will be safe in the Frigid Strongbox, New Halas' official bank.", "hello", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Where did I put my abacus?", "hello", 0, 0, Spawn)
	end
end

