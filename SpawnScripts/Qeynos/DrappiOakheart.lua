--[[
	Script Name	: SpawnScripts/SouthQeynos/DrappiOakheart.lua
	Script Purpose	: Drappi Oakheart <Selwyn's Assistant>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1,2)	
	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3","","hello", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3","","hello", 0, 0, Spawn)
	end
	PlayFlavor(NPC, "", "Hello there!  If you have any of that old armor from my sweetheart here, I'd be more than happy to offer you some newer stuff!", "", 1689589577, 4560189, Spawn)
end

