--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuardCarnis.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 10:09:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    choice = MakeRandomInt(1,5)
    if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/human_eco_farsea_1/ft/service/guard/human_guard_service_farsea_1_hail_gm_2b42c14f.mp3", "After twelve weeks at sea, bashing the head of a nosy landlubber sounds quite appealing!", "threaten", 3327044476, 1239580287, Spawn, 0)
    elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/human_eco_farsea_1/ft/service/guard/human_guard_service_farsea_1_hail_gm_a837e4f4.mp3", "Once I am off duty, I will be heading straight to the tavern.", "agree", 1930964396, 481007793, Spawn, 0)
    elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/human_eco_farsea_1/ft/service/guard/human_guard_service_farsea_1_hail_gm_f9615d93.mp3", "This ain't a show, stranger.  Buy your goods and shove-off!", "no", 1735700364, 1033324383, Spawn, 0)
    elseif choice == 4 then
	PlayFlavor(NPC, "voiceover/english/human_eco_farsea_1/ft/service/guard/human_guard_service_farsea_1_hail_gm_990c7e98.mp3", "What do you think you're looking at?", "glare", 2597948053, 2836713373, Spawn, 0)
    elseif choice == 5 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "The Far Seas Trading company pays well for your protection.", "nod", 0, 0, Spawn, 0)
    end    
end
function respawn(NPC)
	spawn(NPC)
end