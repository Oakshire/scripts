--[[
	Script Name	: SpawnScripts/Starcrest/Ommanoden.lua
	Script Purpose	: Ommanoden <Spell Scrolls>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/scribe_ommanoden/qey_village02/100_scribe_ommanoden_multhail1_becd50b2.mp3", "Can't you see I'm busy organizing my collections of wisdom? I've no time for chatting. Leave me alone!", "", 3010394589, 1905118172, Spawn)
end