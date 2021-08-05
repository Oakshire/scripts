--[[
    Script Name    : SpawnScripts/qeynos_combined02/DelmaMesspie.lua
    Script Author  : Rylec
    Script Date    : 2021.08.04 02:08:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 1000, "EmoteLoop")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
    local choice = MakeRandomInt(1,6)
        if choice == 1 then
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_6594953c.mp3", "If a thing isn't worth saying, you sing it.", "wink", 1056697572, 3706271932, Spawn)
        elseif choice == 2 then
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_a3259538.mp3", "You should head by the tavern later on! Every night in Qeynos is cause for celebration.", "cheer", 3875741901, 4154770080, Spawn)
        elseif choice == 3 then
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_3dc6b124.mp3", "Get the wash, get the wash.  This whole city would fall apart if I didn't deliver the clothes on time.", "frustrated", 4277096439, 928366048, Spawn)
        elseif choice == 4 then
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_5b6e8d2f.mp3", "Do you like muffins?  Muffins are my favorite, I eat them every chance I get.", "sigh", 4155434475, 829232573, Spawn)
        elseif choice == 5 then
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_1b77439f.mp3", "Be on the lookout, friend!  I just spoke to the guards.  I've no doubt gnolls are scouting the nearby area.", "lookaway", 495282965, 1739106402, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_bc49d3d0.mp3", "Laziness is nothing more than the habit of resting before you get tired.", "yawn", 2068417649, 3867807288, Spawn)
        end 
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,8)

    if emoteChoice == 1 then
-- agree
        PlayAnimation(NPC, 10745)
        AddTimer(NPC, MakeRandomInt(4000,9000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- applaude
        PlayAnimation(NPC, 10760)
        AddTimer(NPC, MakeRandomInt(8000,12000), "EmoteLoop")	
    elseif emoteChoice == 3 then
-- cheer
        PlayAnimation(NPC, 11150)
        AddTimer(NPC, MakeRandomInt(10000,17000), "EmoteLoop")
    elseif emoteChoice == 4 then
-- happy
        PlayAnimation(NPC, 11668)
        AddTimer(NPC, MakeRandomInt(8000,16000), "EmoteLoop")
    elseif emoteChoice == 5 then
-- listen
        PlayAnimation(NPC, 11793)
        AddTimer(NPC, MakeRandomInt(4000,11000), "EmoteLoop")
    elseif emoteChoice == 6 then
-- nod
        PlayAnimation(NPC, 11882)
        AddTimer(NPC, MakeRandomInt(4000,7000), "EmoteLoop")
    elseif emoteChoice == 7 then
-- thanks
        PlayAnimation(NPC, 13061)
        AddTimer(NPC, MakeRandomInt(8000,13000), "EmoteLoop")
    else
-- thumbsup
        PlayAnimation(NPC, 13064)
        AddTimer(NPC, MakeRandomInt(4000,9000), "EmoteLoop")
    end
end

function respawn(NPC)
	spawn(NPC)
end