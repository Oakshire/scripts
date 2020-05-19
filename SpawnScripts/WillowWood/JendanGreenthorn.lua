--[[
	Script Name	: SpawnScripts/WillowWood/JendanGreenthorn.lua
	Script Purpose	: Jendan Greenthorn 
	Script Author	: Scatman
	Script Date	: 2000.09.15
	Script Notes	: 
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/jendan_greenthorn/qey_village05/100_jendan_greenthorn_multhail1_f21756ea.mp3", "Sorry, friend. I can't chat. I'm waiting for my brother and I'd hate to miss him!", "", 2945270851, 1633258355, Spawn)
end