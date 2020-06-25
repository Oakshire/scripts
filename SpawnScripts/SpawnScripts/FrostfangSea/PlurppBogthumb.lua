--[[
	Script Name	: SpawnScripts/FrostfangSea/PlurppBogthumb.lua
	Script Purpose	: Plurpp Bogthumb 
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,4)
	if choice == 1 then
		PlayFlavor(NPC, "", "", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Please spare me your 'green thumb' jokes.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "A little love is all this sapling requires.", "", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1017.mp3", "", "", 0, 0, Spawn)
	end
end