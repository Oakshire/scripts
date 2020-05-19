--[[
	Script Name	: SpawnScripts/Starcrest/Barrik.lua
	Script Purpose	: Barrik <Weaponsmith>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/armsdealer_barrik/qey_village02/100_armsdealer_barrik_multhail1_53e2d8b4.mp3", "Hello there!  Will you be needin' a new sword today?  I forge the best blades this side of the Tranquil Sea... Bested only by the Ironforge smiths. I've no work for you today, perhaps come back another day.", "", 1545023828, 4159512414, Spawn)
end