--[[
    Script Name    : SpawnScripts/TroubledHaunt/anEnragedspirit.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 12:11:51
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
	MovementLoopAddLocation(NPC, -6.76, 0.67, -6.09, 2, 6)
	MovementLoopAddLocation(NPC, -7.17, 0.67, -6.71, 2, 0)
	MovementLoopAddLocation(NPC, -7.56, 0.67, -6.45, 2, 0)
	MovementLoopAddLocation(NPC, -6.88, 0.67, -5.62, 2, 0)
	MovementLoopAddLocation(NPC, -6.2, 0.67, -5.71, 2, 0)
	MovementLoopAddLocation(NPC, -1.07, 0.67, -6.83, 2, 6)
	MovementLoopAddLocation(NPC, -0.4, 0.67, -6.93, 2, 0)
	MovementLoopAddLocation(NPC, -0.88, 0.67, -7.42, 2, 0)
	MovementLoopAddLocation(NPC, -2.08, 0.67, -7.29, 2, 0)
end

function death(NPC,Spawn)
	PerformCameraShake(Spawn, 0.20000000298023224)	
	PlayFlavor(NPC, "voiceover/english/optional3/halfling_corrupted/ft/halfling/halfling_corrupted_1_death_gm_4c12cb24.mp3", "Free me!", "", 3881759262, 3266522906, Spawn, 8)
    zone = GetZone(NPC)
    if not IsAlive(GetSpawnByLocationID(zone,133780857)) and  not IsAlive(GetSpawnByLocationID(zone,133780858)) then
    SpawnByLocationID(zone,133780861)
    SpawnByLocationID(zone,133780862)
    SpawnByLocationID(zone,133780863)
    end
end

function aggro(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/ghost_halfling_base_1/ft/ghost/ghost_halfling_base_1_1_aggro_gm_a507a247.mp3", "You'll pay for disturbing me!", "", 4260790933, 1525385880, Spawn, 0)

end