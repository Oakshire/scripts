--[[
	Script Name		: SpawnScripts/TheHiddenVillageofKugup/Pikspoh.lua
	Script Purpose	: Pikspoh
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
		PlayFlavor(NPC, "", "It's good to see you again!  It's always nice to see adventurers in Kugup!", "wave", 0, 0, Spawn, 0)
	end
end