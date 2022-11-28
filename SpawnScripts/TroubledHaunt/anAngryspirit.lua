--[[
    Script Name    : SpawnScripts/TroubledHaunt/anAngryspirit.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 12:11:10
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
	MovementLoopAddLocation(NPC, 2.91, 0.67, -8.28, 2, 6)
	MovementLoopAddLocation(NPC, 4.88, 0.67, -6.94, 2, 0)
	MovementLoopAddLocation(NPC, 6.86, 0.67, -6.09, 2, 0)
	MovementLoopAddLocation(NPC, 9.26, 0.67, -1.98, 2, 6)
	MovementLoopAddLocation(NPC, 7.73, 0.67, -4.55, 2, 0)
	MovementLoopAddLocation(NPC, 7.57, 0.67, -6.93, 2, 6)
end


function aggro(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/optional3/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_aggro_gf_821554e3.mp3", "Must you aggravate me so!", "", 735262000, 1417243472, Spawn, 0)
end

function death(NPC,Spawn)
    		PlayFlavor(NPC, "voiceover/english/optional3/ghost_erudite_base_2/ft/ghost/ghost_erudite_base_2_1_death_gf_1bcf352c.mp3", "Death never truly comes for the undead.", "", 3894477950, 3388069625, Spawn, 0)
    zone = GetZone(NPC)
    if not IsAlive(GetSpawnByLocationID(zone,133780857)) and  not IsAlive(GetSpawnByLocationID(zone,133780858)) and not IsAlive(GetSpawnByLocationID(zone,133780859)) then
    SpawnByLocationID(zone,133780861)
    SpawnByLocationID(zone,133780862)
    SpawnByLocationID(zone,133780863)
    end
end