--[[
    Script Name    : SpawnScripts/qeynos_combined02/amonkinitiate.lua
    Script Author  : Rylec
    Script Date    : 2021.02.14 05:02:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(1,2)
        if model == 1 then
            SetModelType(NPC, "132")
            SpawnSet(NPC, "soga_model_type", "132")
            SpawnSet(NPC, "chest_type", "5529")
            SpawnSet(NPC, "legs_type", "5530")
        else
            SetModelType(NPC, "134")
            SpawnSet(NPC, "soga_model_type", "134")
            SpawnSet(NPC, "chest_type", "5533")
            SpawnSet(NPC, "legs_type", "5534")
        end

    local hair = MakeRandomInt(1121,1140)
        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    local beard = MakeRandomInt(1164,1191)
        SpawnSet(NPC, "facial_hair_type", beard)
        SpawnSet(NPC, "soga_facial_hair_type", beard)

    SetPlayerProximityFunction(NPC, 10, "InRange")

    AddTimer(NPC, 4000, "EmoteLoop")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local type = GetModelType(NPC)
    
        if type == 132 then
            humanFemale(NPC)
        else
            humanMale(NPC)
        end
end

function humanFemale(NPC)
    local chiChoice = MakeRandomInt(1,7)

        if chiChoice == 1 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_63aeaecb.mp3", "Hail, good traveler!", "agree", 3880132810, 2976839399, Spawn)
        elseif chiChoice == 2 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_c5cb5ec8.mp3", "Hail to you as well, traveler.  There is much work to be done in Qeynos, might as well get started on it now.", "smile", 3197561806, 3190128247, Spawn)
        elseif chiChoice == 3 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_e9f03834.mp3", "Welcome to Qeynos, traveler, know that you are among allies.", "bye", 2097755939, 469858505, Spawn)
        elseif chiChoice == 4 then
            PlayFlavor(NPC, "", "Good day to you. I trust your journey to our city was not overly hazardous.", "fullcurtsey", 0, 0, Spawn)
        elseif chiChoice == 5 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_a1a2ce02.mp3", "Hello and welcome to the city.  Everything you need can be found here in Qeynos.", "thanks", 3632185330, 3617071255, Spawn)
        elseif chiChoice == 6 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_bf6c3bd5.mp3", "Hello there, friend, I hope the day finds you well.", "nod", 2878226663, 595387800, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_408eb029.mp3", "Greetings traveler and welcome to our village. Be sure to help us keep it tidy.", "scold", 748098747, 1246453163, Spawn)
        end
end

function humanMale(NPC)
    local chiChoice = MakeRandomInt(1,9)

        if chiChoice == 1 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome...welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138, Spawn)
        elseif chiChoice == 2 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_ef2b9651.mp3", "Will you quit pestering me?  Don't force me to summon the guards!", "tapfoot", 3345611839, 1442739842, Spawn)
        elseif chiChoice == 3 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_d38d1fff.mp3", "Ah, what have we here? Glad to see you endured the journey here, adventurer.", "wave", 2806352129, 3453714070, Spawn)
        elseif chiChoice == 4 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_26f4c608.mp3", "Greetings visitor, I'm glad to meet you.", "bye", 1300497520, 2713745446, Spawn)
        elseif chiChoice == 5 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_3fc546db.mp3", "As a citizen of the mighty city, Qeynos, I greet you openly.", "salute", 2645256785, 1334313741, Spawn)
        elseif chiChoice == 6 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572, Spawn)
        elseif chiChoice == 7 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_60dfe3da.mp3", "Welcome to Qeynos, friend.", "nod", 3850495157, 2924033866, Spawn)
        elseif chiChoice == 8 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_9b2049a3.mp3", "Well met, friend.  It's good to make your acquaintance!", "bow", 754727055, 3165426316, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_e58035f3.mp3", "What do you want? Leave me be!", "shrug", 1323474108, 3355478224, Spawn)
        end
end

function respawn(NPC)
    spawn(NPC)
end

function InRange(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local type = GetModelType(NPC)
    
        if type == 132 then
            humanFemaleProximity(NPC)
        else
            humanMaleProximity(NPC)
        end
end

function humanFemaleProximity(NPC)
    local chiChoice = MakeRandomInt(1,4)

        if chiChoice == 1 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_79781fd.mp3", "Welcome to the city, newcomer.  All are welcome in the court of Antonia Bayle.", "bow", 4027811518, 2764738720, Spawn)
        elseif chiChoice == 2 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gf_7b765111.mp3", "You stand within the sturdy and unyielding walls of Qeynos, give thanks for their existence!", "point", 1908238477, 1252205270, Spawn)
        elseif chiChoice == 3 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_9a63d2e3.mp3", "Hail, I am pleased to see so many eager new adventurers among us.", "hello", 3500366421, 3655995659, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gf_1dba0c5b.mp3", "Salutations and warm greetings to you.", "curtsey", 707852693, 1737331106, Spawn)
        end
end

function humanMaleProximity(NPC)
    local chiChoice = MakeRandomInt(1,4)

        if chiChoice == 1 then
            PlayFlavor(NPC, "", "Welcome...welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 0, 0, Spawn)
        elseif chiChoice == 2 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_4d212798.mp3", "I'm confident that the merchants of our city will fill all equipment needs with the utmost hospitality.", "smile", 2600666744, 586734676, Spawn)
        elseif chiChoice == 3 then
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_aoi_gm_2c5409ba.mp3", "Another lovely day in the city of Qeynos!", "sigh", 2759856909, 614688407, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_34d7a9e6.mp3", "Well met. Here, in Qeynos, you shall find a wealth of useful supplies, and more importantly, ale.", "wink", 3467166298, 3144147842, Spawn)
        end
end

function EmoteLoop(NPC)
    SpawnSet(NPC, "action_state", 0)
    local choice = MakeRandomInt(1,10)

        if choice == 1 then
            PlayAnimation(NPC, 1181)
            AddTimer(NPC, 1300, "Idle")
        elseif choice == 2 then
            PlayAnimation(NPC, 1284)
            AddTimer(NPC, 1550, "Idle")
        elseif choice == 3 then
            PlayAnimation(NPC, 1286)
            AddTimer(NPC, 1300, "Idle")
        elseif choice == 4 then
            PlayAnimation(NPC, 4506)
            AddTimer(NPC, 1550, "Idle")
        elseif choice == 5 then
            PlayAnimation(NPC, 11824)
            AddTimer(NPC, 950, "Idle")
        elseif choice == 6 then
            PlayAnimation(NPC, 11828)
            AddTimer(NPC, 3000, "Idle")
        elseif choice == 7 then
            PlayAnimation(NPC, 11830)
            AddTimer(NPC, 1300, "Idle")
        elseif choice == 8 then
            PlayAnimation(NPC, 11831)
            AddTimer(NPC, 2450, "Idle")
        elseif choice == 9 then
            PlayAnimation(NPC, 11832)
            AddTimer(NPC, 1750, "Idle")
        else
            PlayAnimation(NPC, 11848)
            AddTimer(NPC, 2000, "Idle")
        end
end

function Idle(NPC)
    PlayAnimation(NPC, 372) 
    SpawnSet(NPC, "action_state", 372)

    local timer = MakeRandomInt(500,2500)
    AddTimer(NPC, timer, "EmoteLoop")
end
