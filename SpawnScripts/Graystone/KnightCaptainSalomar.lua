--[[
	Script Name	: SpawnScripts/Graystone/Knight-CaptainSalomar.lua
	Script Purpose	: Knight-Captain Salomar 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/captain_salomar/qey_village03/100_guard_captain_human_salomar_multhail1_2d65b2d1.mp3", "Ah ... on second thought you had better broaden your training before serving the Qeynos Guard.  Good day, citizen!", "", 138672311, 3107129991, Spawn)
end