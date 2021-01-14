--[[
        Script Name     :       SpawnScripts/QueensColony/afallenassassin133770257.lua
	Script Purpose	:	Waypoint Path for afallenassassin133770257.lua
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
	MovementLoopAddLocation(NPC, -146.63, 3.88, -113.81, 7.5, 3)
	MovementLoopAddLocation(NPC, -133.76, 4.37, -90.52, 7.5, 0)
	MovementLoopAddLocation(NPC, -86.05, 4.34, -114.43, 7.5, 0)
	MovementLoopAddLocation(NPC, -47.45, 2.21, -152.01, 7.5, 0)
	MovementLoopAddLocation(NPC, -56.06, 2.22, -152.09, 7.5, 0)
	MovementLoopAddLocation(NPC, -47.45, 2.21, -152.01, 7.5, 0)
	MovementLoopAddLocation(NPC, -86.05, 4.34, -114.43, 7.5, 0)
	MovementLoopAddLocation(NPC, -133.76, 4.37, -90.52, 7.5, 0)
	MovementLoopAddLocation(NPC, -86.05, 4.34, -114.43, 7.5, 0)
	MovementLoopAddLocation(NPC, -47.45, 2.21, -152.01, 7.5, 0)
	MovementLoopAddLocation(NPC, -56.06, 2.22, -152.09, 7.5, 0)
	MovementLoopAddLocation(NPC, -47.45, 2.21, -152.01, 7.5, 0)
	MovementLoopAddLocation(NPC, -86.05, 4.34, -114.43, 7.5, 0)
	MovementLoopAddLocation(NPC, -133.76, 4.37, -90.52, 7.5, 0)
	MovementLoopAddLocation(NPC, -86.05, 4.34, -114.43, 7.5, 0)
	MovementLoopAddLocation(NPC, -47.45, 2.21, -152.01, 7.5, 0)
	MovementLoopAddLocation(NPC, -56.06, 2.22, -152.09, 7.5, 0)
	MovementLoopAddLocation(NPC, -47.45, 2.21, -152.01, 7.5, 0)
	MovementLoopAddLocation(NPC, -86.05, 4.34, -114.43, 7.5, 0)
	MovementLoopAddLocation(NPC, -133.76, 4.37, -90.52, 7.5, 0)
	MovementLoopAddLocation(NPC, -86.05, 4.34, -114.43, 7.5, 0)
	MovementLoopAddLocation(NPC, -47.45, 2.21, -152.01, 7.5, 0)
	MovementLoopAddLocation(NPC, -56.06, 2.22, -152.09, 7.5, 0)
	MovementLoopAddLocation(NPC, -47.45, 2.21, -152.01, 7.5, 0)
	MovementLoopAddLocation(NPC, -86.05, 4.34, -114.43, 7.5, 0)
	MovementLoopAddLocation(NPC, -133.76, 4.37, -90.52, 7.5, 0)
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
        math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_bb6b2b8e.mp3", "You cannot eliminate us!", "", 897103301, 541292352, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676, Spawn)
        end
end


--[[
Following is Jab's original code:

	if IsPlayer(Spawn) then
		local chance = math.random(1, 100)
		if chance <= 35 then
			local skull = SpawnMob(GetZone(Spawn), 2530192, false, GetX(NPC), GetY(NPC), GetZ(NPC))
			if skull ~= nil then
				SpawnSet(skull, "expire", "1000")
--]]