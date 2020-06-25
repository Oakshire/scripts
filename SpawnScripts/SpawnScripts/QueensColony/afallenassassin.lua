--[[
	Script Name		:	SpawnScripts/QueensColony/afallenassassin.lua
	Script Purpose	:	Path to doom, and drop skull when killed by player
	Script Author	:	Jabantiz
	Script Date		:	9/11/2016
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -125.5, 4.64, -50.29, 4)
	MovementLoopAddLocation(NPC, -132.23, 4.36, -63.2, 4)
	MovementLoopAddLocation(NPC, -133.43, 4.37, -88.26, 4)
	MovementLoopAddLocation(NPC, -110.11, 4.29, -101.71, 4)
	MovementLoopAddLocation(NPC, -97.02, 4.24, -116.82, 4)
	MovementLoopAddLocation(NPC, -81.65, 4.13, -120.89, 4)
	MovementLoopAddLocation(NPC, -70.74, 4.09, -133.39, 4)
	MovementLoopAddLocation(NPC, -57.57, 2.24, -135.21, 4)
	MovementLoopAddLocation(NPC, -51.81, 2.03, -153.28, 4, 60)
end

function respawn(NPC)
	spawn(NPC)
end

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
	end
end
end