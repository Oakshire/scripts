--[[
	Script Name	: SpawnScripts/BeggarsCourt/Adjunct-CaptainRommuls.lua
	Script Purpose	: Adjunct-Captain Rommuls 
	Script Author	: John Adams (rewritten by Cynnar)
	Script Date	: 2009.04.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local A_BROTHERHOOD_ENFORCER = 1370064

function spawn(NPC)
	SetMount(NPC, 6831)
	SetMountColor(NPC, 1, 1, 1, 255, 1, 1)
	
	MoveToLocation(NPC, -8.13, 4.00, -42.68, 3, "", true)
	MoveToLocation(NPC, -14.43, 3.57, -27.02, 3, "", false)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function Talk1(NPC)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/adjunct-captain_rommuls/fprt_hood04/qst_rommuls_seeexplosion_f4d0194c.mp3", "What's all this?!", "", 2343755495, 1390123839)
	local enforcer = GetSpawn(NPC, A_BROTHERHOOD_ENFORCER)

	if enforcer ~= nil then
		AddTimer(enforcer, 1500, "E_Talk1")
	end
end

function Talk2(NPC)
	local zone = GetZone(NPC)
	
	local enforcer1 = GetSpawnByLocationID(zone, 403031)
	local enforcer2 = GetSpawnByLocationID(zone, 403032)
	local enforcer3 = GetSpawnByLocationID(zone, 403033)
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/adjunct-captain_rommuls/fprt_hood04/qst_rommuls_grrr_5833be16.mp3", "I have fared better against worse odds... but I shall comply, for now.", "", 148659455, 3381420393)
	AddTimer(NPC, 1999, "moveRommuls")
	AddTimer(enforcer1, 1999, "move_enforcer1")
	AddTimer(enforcer2, 1999, "move_enforcer2")
	AddTimer(enforcer3, 1999, "move_enforcer3")
end

function Talk3(NPC)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/adjunct-captain_rommuls/fprt_hood04/qst_rommuls_ohno_48ef4e64.mp3", "You won't get away with this you... you elves!", "", 2960277190, 1354555525)
	AddTimer(NPC, 10000, "DespawnRommulus")
end

function DespawnRommulus(NPC)
	Despawn(NPC)
end

function moveRommuls(NPC)
	MoveToLocation(NPC, -24.59, 2.00, -7.14, 3, "Talk3", true)
	MoveToLocation(NPC, -24.59, 2.00, -7.14, 3, "DespawnRommulus", false)
	
	--if enforcer ~= nil then
		--MoveToLocation(enforcer1, -8.13, 4.00, -42.68, 3, "DespawnRommulus", false)
		--MoveToLocation(enforcer2, -24.59, 2.00, -7.14, 3, "DespawnRommulus", false)
		--MoveToLocation(enforcer3, -24.59, 2.00, -7.14, 3, "DespawnRommulus", false)
	--end
end