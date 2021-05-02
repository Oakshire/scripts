--[[
    Script Name    : SpawnScripts/Freeport/aFreeportvisitant56531.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.01 07:05:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
movement_loop_start(NPC)
end


function movement_loop_start(NPC)
MoveToLocation(NPC, -143.70, -24.12, -54.71, 2)    
MoveToLocation(NPC, -132.40, -24.37, -51.95, 2)
MoveToLocation(NPC, -130.01, -24.45, -46.28, 2)
MoveToLocation(NPC, -117.76, -24.45, -43.74, 2, "heading", 1)
end

function heading(NPC)
SetHeading(NPC, 188.07)
AddTimer(NPC, 10000, "movement_loop_continue", 1)
end

function movement_loop_continue(NPC)
MoveToLocation(NPC, -130.01, -24.45, -46.28, 2)
MoveToLocation(NPC, -132.40, -24.37, -51.95, 2)
MoveToLocation(NPC, -143.70, -24.12, -54.71, 2)
MoveToLocation(NPC, -146.05, -24.37, -68.98, 2)
MoveToLocation(NPC, -142.56, -24.37, -69.77, 2, "heading2")
end

function heading2(NPC)
SetHeading(NPC, 307.75)
AddTimer(NPC, 10000, "movement_loop_start", 1)
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetRace(NPC) == 12 and GetGender(NPC) == 1 then
    local choice = math.random(1, 7)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_900b92c8.mp3", "Blood, lots of blood on the battlefield.", "confused", 3309525058, 2311238979, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_aef9ec6e.mp3", "The best dreams are the flashbacks of the battlefield.", "chuckle", 34784682, 541558536, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_b6f6d58b.mp3", "Sharp teeth, the better to tear flesh with.", "glare", 1727328703, 3032211199, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_82b39f6b.mp3", "In war there is no room for fear.", "agree", 139095494, 3401742216, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_b11c99a1.mp3", "Make war not love.", "flirt", 163636935, 1865034471, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_7f5bc8b5.mp3", "Armor could be useful. But I've never needed it.", "smirk", 602319056, 3467693375, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_4b96e4f1.mp3", "I've lived this long thanks to my ability to kill.", "thumbsup", 1295486986, 820950525, Spawn)
end
end
   local waypoint_choice = MakeRandomInt(1, 2)
   if waypoint_choice == 1 then
       AddTimer(NPC, 7000, "movement_loop_start", 1)
    else
        AddTimer(NPC, 7000, "movement_loop_continue", 1)
        end
      end

function respawn(NPC)
	spawn(NPC)
end