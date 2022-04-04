--[[
	Script Name	: SpawnScripts/SouthQeynos/MelinnaeWelxen.lua
	Script Purpose	: Melinnae Welxen 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "", "There is much lost knowledge hidden within the library here.  ", "converse", 0, 0, Spawn, 0)
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1011.mp3", 0, 0, Spawn)
	end

