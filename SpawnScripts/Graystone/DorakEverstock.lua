--[[
	Script Name	: SpawnScripts/Graystone/DorakEverstock.lua
	Script Purpose	: Dorak Everstock <Crafting Trainer>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	PlayFlavor(NPC, "", "I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your profession.", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1054.mp3", "", "", 0, 0)
end