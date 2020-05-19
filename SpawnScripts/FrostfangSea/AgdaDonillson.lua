--[[
	Script Name	: SpawnScripts/FrostfangSea/AgdaDonillson.lua
	Script Purpose	: Agda Donillson <Broker>
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

	local choice = math.random(1,4)
	if choice == 1 then
		PlayFlavor(NPC, "", "What would you like to buy?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Let's check what's available, shall we?", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I'm sure we have something that will please even you!", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1001.mp3", "", "", 0, 0, Spawn)
	end
end