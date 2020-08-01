--[[
        Script Name     :       SpawnScripts/QueensColony/afallenassassin133770256.lua
	Script Purpose	:	Waypoint Path for afallenassassin133770256.lua
	Script Author	:	Rylec, VO by Premierio015, Skull drop by Jabantiz
	Script Date	:	07-28-2020 10:35:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -123.59, 4.52, -38.77, 7.5, 3)
	MovementLoopAddLocation(NPC, -132.05, 4.37, -86.94, 7.5, 0)
	MovementLoopAddLocation(NPC, -108.87, 4.28, -103.37, 7.5, 0)
	MovementLoopAddLocation(NPC, -94.43, 4.23, -118.95, 7.5, 0)
	MovementLoopAddLocation(NPC, -69.58, 4.09, -133.64, 7.5, 0)
	MovementLoopAddLocation(NPC, -49.02, 2.16, -153.7, 7.5, 0)
	MovementLoopAddLocation(NPC, -69.58, 4.09, -133.64, 7.5, 0)
	MovementLoopAddLocation(NPC, -94.43, 4.23, -118.95, 7.5, 0)
	MovementLoopAddLocation(NPC, -108.87, 4.28, -103.37, 7.5, 0)
	MovementLoopAddLocation(NPC, -132.05, 4.37, -86.94, 7.5, 0)
	MovementLoopAddLocation(NPC, -123.73, 4.4, -40.89, 7.5, 0)
	MovementLoopAddLocation(NPC, -132.05, 4.37, -86.94, 7.5, 0)
	MovementLoopAddLocation(NPC, -108.87, 4.28, -103.37, 7.5, 0)
	MovementLoopAddLocation(NPC, -94.43, 4.23, -118.95, 7.5, 0)
	MovementLoopAddLocation(NPC, -69.58, 4.09, -133.64, 7.5, 0)
	MovementLoopAddLocation(NPC, -49.02, 2.16, -153.7, 7.5, 0)
	MovementLoopAddLocation(NPC, -69.58, 4.09, -133.64, 7.5, 0)
	MovementLoopAddLocation(NPC, -94.43, 4.23, -118.95, 7.5, 0)
	MovementLoopAddLocation(NPC, -108.87, 4.28, -103.37, 7.5, 0)
	MovementLoopAddLocation(NPC, -132.05, 4.37, -86.94, 7.5, 0)
	MovementLoopAddLocation(NPC, -123.73, 4.4, -40.89, 7.5, 0)
	MovementLoopAddLocation(NPC, -132.05, 4.37, -86.94, 7.5, 0)
	MovementLoopAddLocation(NPC, -108.87, 4.28, -103.37, 7.5, 0)
	MovementLoopAddLocation(NPC, -94.43, 4.23, -118.95, 7.5, 0)
	MovementLoopAddLocation(NPC, -69.58, 4.09, -133.64, 7.5, 0)
	MovementLoopAddLocation(NPC, -49.02, 2.16, -153.7, 7.5, 0)
	MovementLoopAddLocation(NPC, -69.58, 4.09, -133.64, 7.5, 0)
	MovementLoopAddLocation(NPC, -94.43, 4.23, -118.95, 7.5, 0)
	MovementLoopAddLocation(NPC, -108.87, 4.28, -103.37, 7.5, 0)
	MovementLoopAddLocation(NPC, -132.05, 4.37, -86.94, 7.5, 0)
	MovementLoopAddLocation(NPC, -123.73, 4.4, -40.89, 7.5, 0)
	MovementLoopAddLocation(NPC, -132.05, 4.37, -86.94, 7.5, 0)
	MovementLoopAddLocation(NPC, -108.87, 4.28, -103.37, 7.5, 0)
	MovementLoopAddLocation(NPC, -94.43, 4.23, -118.95, 7.5, 0)
	MovementLoopAddLocation(NPC, -69.58, 4.09, -133.64, 7.5, 0)
	MovementLoopAddLocation(NPC, -49.02, 2.16, -153.7, 7.5, 0)
	MovementLoopAddLocation(NPC, -69.58, 4.09, -133.64, 7.5, 0)
	MovementLoopAddLocation(NPC, -94.43, 4.23, -118.95, 7.5, 0)
	MovementLoopAddLocation(NPC, -108.87, 4.28, -103.37, 7.5, 0)
	MovementLoopAddLocation(NPC, -132.05, 4.37, -86.94, 7.5, 0)
end

--[[
function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,6)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave,  you will now take my place!", "", 485726074, 3646499350, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632, Spawn)
        elseif choice == 3 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573, Spawn)
        elseif choice == 4 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668, Spawn) 
        elseif choice == 5 then
                PlayFavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_daf16808.mp3", "To the grave with you!", "", 958122326, 1810359159, Spawn)
        elseif choice == 6 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_c6c2672d.mp3", "Brains! It's what's for dinner.", "", 2091371377, 2422178491, Spawn)
        end
end
--]]

--[[
function death(NPC, Spawn)


	if IsPlayer(Spawn) then
		local chance = math.random(1,3)
		if chance == 3 then
			local skull = SpawnMob(GetZone(Spawn), 2530192, false, GetX(NPC), GetY(NPC), GetZ(NPC))
			if skull ~= nil then
				SpawnSet(skull, "expire", "1000")
                        end
                end
        end

Following is Jab's original code:

	if IsPlayer(Spawn) then
		local chance = math.random(1, 100)
		if chance <= 35 then
			local skull = SpawnMob(GetZone(Spawn), 2530192, false, GetX(NPC), GetY(NPC), GetZ(NPC))
			if skull ~= nil then
				SpawnSet(skull, "expire", "1000")


        math.randomseed(os.time())
        local choice = math.random(1,4)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
        elseif choice == 3 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_bb6b2b8e.mp3", "You cannot eliminate us!", "", 897103301, 541292352, Spawn)
        elseif choice == 4 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676, Spawn)
        end
end
--]]