--[[
	Script Name	: SpawnScripts/Graystone/Jodi.lua
	Script Purpose	: Jodi 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/jodi/qey_village03/100_customer_human_jodi_multhail1_ef852e92.mp3", "Hmmm... I think I'll pick up the potions myself.", "", 1168503261, 3143676939, Spawn)
end