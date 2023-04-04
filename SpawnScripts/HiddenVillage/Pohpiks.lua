--[[
	Script Name		: SpawnScripts/TheHiddenVillageofKugup/Pohpiks.lua
	Script Purpose	: Pohpiks
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
		PlayFlavor(NPC, "", "You have returned to the village of Kugup.  You are welcome to assist us in our struggle!", "bow", 0, 0, Spawn, 0)
	end
end