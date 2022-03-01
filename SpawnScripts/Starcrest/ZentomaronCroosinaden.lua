--[[
	Script Name	: SpawnScripts/Starcrest/ZentomaronCroosinaden.lua
	Script Purpose	: Zentomaron Croosinaden 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional4/zentomaron_croosinaden/zentomaron_multhail1-mp3.mp3", "Hmm ... you appear no more knowledgeable than this silly human we've collared.  Oh well.", "", 4235005010, 394337117, Spawn)
end