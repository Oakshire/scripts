--[[
	Script Name	: SpawnScripts/ScaleYard/TeganFrostfist.lua
	Script Purpose	: Tegan Frostfist <Crafting Trainer>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your specialty.", "", 1689589577, 4560189, Spawn)
end