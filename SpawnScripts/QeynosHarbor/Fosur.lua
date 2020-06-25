--[[
	Script Name	: SpawnScripts/QeynosHarbor/Fosur.lua
	Script Purpose	: Fosur <Guard>
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

	PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gf_ed0d92f8.mp3", "I hate the night shift!  If the gnolls don't attack now I may die of boredom.", "grumble", 2490266027, 3636789093, Spawn)
end

