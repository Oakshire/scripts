--[[
	Script Name	: SpawnScripts/BeggarsCourt/aBrotherhoodenforcer.lua
	Script Purpose	: a Brotherhood enforcer 
	Script Author	: John Adams (rewritten by Cynnar)
	Script Date	: 2009.04.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ADJUNCT_CAPTAIN_ROMMULS = 1370065

function spawn(NPC)
	if GetSpawnLocationID(NPC) == 403031 then
		MoveToLocation(NPC, -14.62, 2.25, -6.99, 3, "", true)
		MoveToLocation(NPC, -17.68, 3.00, -21.58, 3, "", false)
	end
	if GetSpawnLocationID(NPC) == 403032 then
		MoveToLocation(NPC, -7.44, 4.00, -46.95, 3, "", true)
		MoveToLocation(NPC, -15.15, 3.75, -31.27, 3, "checkspawn", false)
	end
	if GetSpawnLocationID(NPC) == 403033 then
		MoveToLocation(NPC, 4.64, 4.75, -27.67, 3, "", true)
		MoveToLocation(NPC, -12.87, 3.26, -25.76, 3, "", false)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function E_Talk1(NPC)
	PlayFlavor(NPC, "", "Be quiet, don't struggle, and come with us, Rommuls.", "", 1689589577, 4560189, Spawn)
	local Rommuls = GetSpawn(NPC, ADJUNCT_CAPTAIN_ROMMULS)
	
	if Rommuls ~= nil then
		AddTimer(Rommuls , 1998, "Talk2")
	end
end

function checkspawn(NPC, Spawn)
	local Rommuls = GetSpawn(NPC, ADJUNCT_CAPTAIN_ROMMULS)
	
	if Rommuls ~= nil then
		AddTimer(Rommuls , 30, "Talk1")
	end
end

function move_enforcer1(NPC)
	--MoveToLocation(NPC, -8.13, 4.00, -42.68, 3, "Despawn_All", false) was in old spawn script
	MoveToLocation(NPC, -24.59, 2.00, -7.14, 3, "Despawn_All", false)
end

function move_enforcer2(NPC)
	MoveToLocation(NPC, -24.59, 2.00, -7.14, 3, "Despawn_All", false)
end

function move_enforcer3(NPC)
	MoveToLocation(NPC, -24.59, 2.00, -7.14, 3, "Despawn_All", false)
end

function Despawn_All(NPC)
	Despawn(NPC)
end