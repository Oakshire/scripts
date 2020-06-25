--[[
	Script Name	: SpawnScripts/Starcrest/Grekin.lua
	Script Purpose	: Grekin <Bowyer>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/merchant_grekin/qey_village02/100_human_merchant_m_01_multhail1_78077dd5.mp3", "Sorry, friend. I don't think you can help me.", "", 3289788151, 1391553241, Spawn)
end