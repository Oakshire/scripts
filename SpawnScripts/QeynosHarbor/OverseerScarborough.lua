--[[
    Script Name    : SpawnScripts/QeynosHarbor/OverseerScarborough.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11 05:06:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local Choice = MakeRandomInt(1,4)
    if Choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_eco_farsea_1/ft/service/guard/human_guard_service_farsea_1_hail_gm_2b42c14f.mp3", "After twelve weeks at sea, bashing the head of a nosey landlubber sounds quite appealing.", "threaten", 3327044476, 1239580287, Spawn)
    elseif Choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_eco_farsea_1/ft/service/guard/human_guard_service_farsea_1_hail_gm_990c7e98.mp3", "What do ya think you're look'n at?", "glare", 2597948053, 2836713373, Spawn)
    elseif Choice == 3 then
    PlayFlavor(NPC, "voiceover/english/human_eco_farsea_1/ft/service/guard/human_guard_service_farsea_1_hail_gm_a837e4f4.mp3", "Once I'm off duty, I'll be heading straight for the tavern.", "sniff", 1930964396, 481007793, Spawn)
    elseif Choice == 4 then
    PlayFlavor(NPC, "voiceover/english/human_eco_farsea_1/ft/service/guard/human_guard_service_farsea_1_hail_gm_f9615d93.mp3", "This ain't a show, stranger.  Buy your goods and shove off!", "no", 1735700364, 1033324383, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,5)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    elseif emoteChoice == 3 then
-- frustrated
        PlayAnimation(NPC, 11628)
        AddTimer(NPC, MakeRandomInt(8000,12000), "EmoteLoop")	
        
    elseif emoteChoice == 4 then
-- frustrated
        PlayAnimation(NPC, 13019)
        AddTimer(NPC, MakeRandomInt(11000,15000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end