--[[
    Script Name    : SpawnScripts/Generic/ValmaarSkeletonVoiceOvers.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 09:05:29
    Script Purpose : Voiceovers for skeletons in The Ruins of Val'maar location (Commonlands)
                   : 
--]]

function generic_aggro(NPC, Spawn)
local choice = MakeRandomInt(1, 6)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/optional3/skeleton_valmaar/ft/skeleton/skeleton_valmaar_2_aggro_a9aeccd0.mp3", "Now you too are lost!", "", 330442579, 25448442, Spawn)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/skeleton_valmaar/ft/skeleton/skeleton_valmaar_1_aggro_a9aeccd0.mp3", "Now you too are lost!", "", 956890590, 2033116292, Spawn)
elseif choice == 3 then
PlayFlavor(NPC, "voiceover/english/optional3/skeleton_valmaar/ft/skeleton/skeleton_valmaar_2_aggro_2d55baf0.mp3", "You shouldn't be here!", "", 3188174334, 392028665, Spawn)
elseif choice == 4 then
PlayFlavor(NPC, "voiceover/english/skeleton_valmaar/ft/skeleton/skeleton_valmaar_1_aggro_2d55baf0.mp3", "You shouldn't be here!", "", 2477031723, 502324022, Spawn)
else
PlayFlavor(NPC, "voiceover/english/skeleton_valmaar/ft/skeleton/skeleton_valmaar_1_aggro_a738ef45.mp3", "Your presence enrages me!", "", 1243506789, 2872748071, Spawn)
end
   end


function generic_death(NPC, Spawn)
local choice = MakeRandomInt(1, 4)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/optional3/skeleton_valmaar/ft/skeleton/skeleton_valmaar_2_death_6fef3663.mp3", "Death is nothing new to us!", "", 589223256, 65809198, Spawn)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/skeleton_valmaar/ft/skeleton/skeleton_valmaar_1_death_6fef3663.mp3", "Death is nothing new to us!", "", 2571752122, 1052222399, Spawn)
elseif choice == 3 then
PlayFlavor(NPC, "voiceover/english/skeleton_valmaar/ft/skeleton/skeleton_valmaar_1_death_8c92de7b.mp3", "It takes more than Death to stop the undead.", "", 125607423, 105668091, Spawn)
else
PlayFlavor(NPC, "voiceover/english/optional3/skeleton_valmaar/ft/skeleton/skeleton_valmaar_2_death_8c92de7b.mp3", "It takes more than death to stop the undead.", 596294144, 2229602720, Spawn)
end
   end
