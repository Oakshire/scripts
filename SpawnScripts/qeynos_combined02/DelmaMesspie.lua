--[[
    Script Name    : SpawnScripts/qeynos_combined02/DelmaMesspie.lua
    Script Author  : Rylec
    Script Date    : 2021.08.04 02:08:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 1000, "EmoteLoop")
    SetPlayerProximityFunction(NPC, 20, "InRange")
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

function InRange(NPC, Spawn)
-- These lines will be triggered if you on Live log in next to Delma, but are not included when you hail her. I put them in as a proximity function just to safe keep them (I have yet to trigger them as proximity on Live).

    FaceTarget(NPC, Spawn)
    local proximityChoice = MakeRandomInt(1,3)

        if proximityChoice == 1 then
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gf_971bdee0.mp3", "Sweetie, you really need to eat more.  Put some meat on those bones, that's what I always say.", "scold", 2249843470, 1892258594, Spawn)
        elseif proximityChoice == 2 then
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gf_86c7855.mp3", [[Let's see, I'm going to need some baubbleshire berries, some elddar root, and a smidgen of spiced fish...]], "ponder", 1080385311, 773701526, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gf_4745a8ec.mp3", "Hello has anybody seen the baubbleberry pie I set out to cool? Come on, I know one of you took it!", "tapfoot", 3291474479, 2214928642, Spawn)
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