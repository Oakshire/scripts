--[[
	Script Name		: SpawnScripts/ScaleYard/TeganFrostfist.lua
	Script Purpose	: Tegan Frostfist
	Script Author	: torsten
	Script Date		: 2022.07.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "", "I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your specialty.", "", 0, 0, Spawn, 0)
	end
end