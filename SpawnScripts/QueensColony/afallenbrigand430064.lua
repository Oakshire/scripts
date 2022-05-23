--[[
        Script Name     :       SpawnScripts/QueensColony/afallenbrigand430064.lua
	Script Purpose	:	Waypoint Path for afallenbrigand430064.lua
	Script Author	:	Rylec, VO by Premierio015
	Script Date	:	07-28-2020 10:35:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "difficulty", "6") 
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -127.44, 4.54, -83.07, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -140.04, 4.59, -93.45, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -123.83, 4.54, -101, 2, 0)
	MovementLoopAddLocation(NPC, -111.24, 4.49, -109.42, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -117.42, 4.31, -99.57, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -120.84, 5.54, -104.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.35, 4.54, -60.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.76, 4.36, -62.43, 2, 0)
	MovementLoopAddLocation(NPC, -128.11, 4.55, -70.96, 2, 0)
	MovementLoopAddLocation(NPC, -117.76, 5.19, -107.29, 2, 0)
	MovementLoopAddLocation(NPC, -115.87, 4.75, -110.03, 2, 0)
	MovementLoopAddLocation(NPC, -112.14, 4.53, -124.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -117.74, 3.64, -115.78, 2, 0)
	MovementLoopAddLocation(NPC, -127.31, 3.86, -106.02, 2, 0)
	MovementLoopAddLocation(NPC, -127.77, 4.55, -100.66, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -116.27, 4.31, -100.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -133.62, 4.57, -98.74, 2, 0)
	MovementLoopAddLocation(NPC, -139.81, 4.6, -101.42, 2, math.random(12, 22))
end

function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave,  you will now take my place!", "", 485726074, 3646499350, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_daf16808.mp3", "To the grave with you!", "", 958122326, 1810359159, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_c6c2672d.mp3", "Brains! It's what's for dinner.", "", 2091371377, 2422178491, Spawn)
        end
end

function death(NPC, Spawn)
             	if IsPlayer(Spawn) then
		local chance = math.random(1, 100)
		if chance <= 35 then
			local skull = SpawnMob(GetZone(Spawn), 2530192, false, GetX(NPC), GetY(NPC), GetZ(NPC))
			if skull ~= nil then
				SpawnSet(skull, "expire", "1000")
			end
	    end
	end
        math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_bb6b2b8e.mp3", "You cannot eliminate us!", "", 897103301, 541292352, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676, Spawn)
        end
end