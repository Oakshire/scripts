--[[
	Script Name		: SpawnScripts/TheHiddenVillageofKugup/Teiluj.lua
	Script Purpose	: Teiluj
	Script Author	: neatz09
	Script Date		: 2023.04.03
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
		PlayFlavor(NPC, "", "Hello there friend.  I cannot thank you enough for reuniting me with Oemor.", "thanks", 0, 0, Spawn, 0)
	end
end