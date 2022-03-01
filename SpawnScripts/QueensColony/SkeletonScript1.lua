--[[
	Script Name	:	SpawnScripts/QueensColony/QCAFallenBrigandSkeletonScript1.lua
	Script Purpose	:	SkeletonScript1
	Script Author	:	premierio015
	Script Date	:	2020.04.10
	Script Notes	:	
--]]

function spawn(NPC)
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)
   MovementLoopAddLocation(NPC, x - 7 , y, z + 8 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x + 5 , y, z + 10, 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x + 10, y, z - 9 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x - 5 , y, z - 8 , 2, math.random(5, 15))
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
end

function attacked(NPC, Spawn)
 local choice = math.random(1, 3)
 if choice == 1 then
 PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632, Spawn)
 elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573, Spawn)
 elseif choice == 3 then
 PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668, Spawn)
 end
 end
 
 
function death(NPC, Spawn)
local choice = math.random(1, 2)
if choice == 1 then
 PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
elseif choice == 2 then
 PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
end
end