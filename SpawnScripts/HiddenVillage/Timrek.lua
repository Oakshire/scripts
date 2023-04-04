--[[
	Script Name		: SpawnScripts/TheHiddenVillageofKugup/Timrek.lua
	Script Purpose	: Timrek
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
		PlayFlavor(NPC, "", "It's good to see you again, adventurer.  If you're looking for some weapons, I have a few of the new ones we have made here for the next fight.", "bow", 0, 0, Spawn, 0)
	end
end