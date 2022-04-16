--[[
	Script Name		: SpawnScripts/QeynosHarbor/PhoeydraTelethyn.lua
	Script Purpose	: Phoeydra Telethyn
	Script Author	: Dorbin
	Script Date		: 2022.04.15
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
		PlayFlavor(NPC, "", "Such primitive beasts as the Sarnak would never be able to cross to Qeynos unaided!", "shake", 0, 0, Spawn, 0)
	end
end