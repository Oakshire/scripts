--[[
    Script Name    : SpawnScripts/TroubledHaunt/anUnfruitfulspirit.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 12:11:32
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
	waypoints(NPC)
end


function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -9.91, -0.33, 4.52, 2, 0)
	MovementLoopAddLocation(NPC, -10.8, -0.33, 2.46, 2, 0)
	MovementLoopAddLocation(NPC, -10.47, -0.33, 0.1, 2, 0)
	MovementLoopAddLocation(NPC, -9.45, -0.33, -2.77, 2, 6)
	MovementLoopAddLocation(NPC, -9.19, -0.33, -2.38, 2, 0)
	MovementLoopAddLocation(NPC, -10.26, -0.33, -0.79, 2, 0)
	MovementLoopAddLocation(NPC, -10.63, -0.33, 1.67, 2, 0)
	MovementLoopAddLocation(NPC, -10.38, -0.33, 2.82, 2, 0)
	MovementLoopAddLocation(NPC, -8.85, -0.33, 6.9, 2, 6)
	MovementLoopAddLocation(NPC, -8.57, -0.33, 7.73, 2, 0)
	MovementLoopAddLocation(NPC, -9.85, -0.33, 7.33, 2, 0)
end


function aggro(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/optional3/ghost_highelf_base_1/ft/ghost/ghost_highelf_base_1_1_aggro_gm_e15a7031.mp3", "They continue to press. Take them out!", "", 3477800043, 2281180631, Spawn, 0)
end

function death(NPC,Spawn)
	PerformCameraShake(Spawn, 0.20000000298023224)	
    PlayFlavor(NPC, "voiceover/english/optional3/ghost_highelf_base_1/ft/ghost/ghost_highelf_base_1_1_death_gm_3523af72.mp3", "Perhaps now their soul will rest.", "", 2124266274, 395618904, Spawn, 0)
    zone = GetZone(NPC)
    if not IsAlive(GetSpawnByLocationID(zone,133780857)) and  not IsAlive(GetSpawnByLocationID(zone,133780858)) and not IsAlive(GetSpawnByLocationID(zone,133780859)) then
    SpawnByLocationID(zone,133780861)
    SpawnByLocationID(zone,133780862)
    SpawnByLocationID(zone,133780863)
    end
end