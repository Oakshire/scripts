--[[
	Script Name	: SpawnScripts/QeynosHarbor/HarronGriswald.lua
	Script Purpose	: Harron Griswald <General Goods>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Ah now Kara, settle down. They were probably just big Iksar...", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "If you're looking for the bar, it's upstairs. Be careful of the Coldwind Marauders ... they really enjoy their drink.", "", 1689589577, 4560189, Spawn)
	else
	end

end

