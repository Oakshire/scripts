--[[
	Script Name		:	SpawnScripts/QueensColony/SkeletonScript1.lua
	Script Purpose	:	SkeletonScript1
	Script Author	:	premierio015
	Script Date		:	2020.04.10
	Script Notes	:	Should be a generic script for skeletons fighters
--]]

function spawn(NPC)
        aggro(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function aggro(NPC, Spawn)
	local opt = math.random (1, 3)
			if opt == 1 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632, Spawn)
			elseif opt == 2 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573, Spawn)
			else
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668, Spawn)
 end
 end

function death(NPC, Spawn)
local choice = math.random(1,2)
if choice == 1 then
 PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
else
 PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
 end
end