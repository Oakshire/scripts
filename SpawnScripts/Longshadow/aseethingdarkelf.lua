--[[
	Script Name		: SpawnScripts/LongshadowAlley/aseethingdarkelf.lua
	Script Purpose	: a seething darkelf
	Script Author	: torsten
	Script Date		: 2022.07.20
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
		PlayFlavor(NPC, "", "My fellow child of Innoruuk, come!  Help us praise his name and revel in the deaths of the inferior.", "", 0, 0, Spawn, 0)
	end
end