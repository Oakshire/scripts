--[[
	Script Name	: SpawnScripts/QueensColony/aQeynosianscout.lua
	Script Purpose	: a Qeynosian scout 
	Script Author	: John Adams/Scatman
	Script Date	: 2009.01.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 30, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Player)
	choice = math.random(1, 3)
	if choice == 1 then 
		PlayFlavor(NPC, "", "A little help here!  How did I get myself into this mess?", "", 1689589577, 4560189, Player)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Devil dogs!  Those were my best pair of pants!", "", 1689589577, 4560189, Player)
	else
		Say(NPC, "They took my armor, but they'll never take my pride!", Player)
	end
end

function casted_on(NPC, Spawn, Message)
	if Message == "Help down" then
		SpawnByLocationID(GetZone(NPC), 1584992)
		Despawn(NPC)
	end
end