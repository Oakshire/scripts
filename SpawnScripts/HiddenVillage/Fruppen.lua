--[[
	Script Name		: SpawnScripts/TheHiddenVillageofKugup/Fruppen.lua
	Script Purpose	: Fruppen
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
		PlayFlavor(NPC, "", "Look!  See I've been training!", "monk_dodge_down", 0, 0, Spawn, 0)
	end
end