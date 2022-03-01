--[[
	Script Name	: SpawnScripts/Graystone/BarryViceheart.lua
	Script Purpose	: Barry Viceheart 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/barry_viceheart/qey_village03/100_customer_barbarian_viceheart_multhail1_31dbd300.mp3", "I don't think you want to help me with this difficult task. Farewell!", "", 2478336212, 3512678812, Spawn)
end