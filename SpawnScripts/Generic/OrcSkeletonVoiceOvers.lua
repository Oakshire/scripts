--[[
    Script Name	:    SpawnScripts/Generic/OrcSkeletonVoiceOvers.lua
	Script Purpose	: Handles the VoiceOvers for Orc Skeletons
	Script Author	: premierio015
	Script Date	: 22.05.2021
	Script Notes	: 
--]]


function generic_aggro(NPC, Spawn)
local choice = MakeRandomInt(1, 3)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/skeleton_orc_base_1/ft/skeleton/skeleton_orc_base_1_1_aggro_2f2e17fc.mp3", "Come and know the pain of death!", "", 3469914603, 1237926980, Spawn)
elseif choice == 2 then
PlayFlavor(NPC, "voiceover/english/skeleton_orc_base_1/ft/skeleton/skeleton_orc_base_1_1_aggro_f5164a67.mp3", "I smell flesh ...I hunger for it!", "", 692129696, 1380208318, Spawn)
else
PlayFlavor(NPC, "", "Pray that death is the end for you!", "", 1689589577, 4560189, Spawn)
end
   end

function generic_death(NPC, Spawn)
local choice = MakeRandomInt(1, 2)
if choice == 1 then
PlayFlavor(NPC, "voiceover/english/skeleton_orc_base_1/ft/skeleton/skeleton_orc_base_1_1_death_b58e4fa2.mp3", "Do not let them end our immortality.", "", 695855426, 3221201458, Spawn)
else
PlayFlavor(NPC, "voiceover/english/skeleton_orc_base_1/ft/skeleton/skeleton_orc_base_1_1_death_2cb1dc07.mp3", "Steel and stone will break my bones, but death can never hurt me!", "", 1005041003, 1878876345, Spawn)
end
   end