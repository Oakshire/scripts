--[[
    Script Name    : SpawnScripts/qeynos_combined02/achipractitioner.lua
    Script Author  : Rylec
    Script Date    : 2021.01.27 03:01:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(1,3)
        if model == 1 then
            SetModelType(NPC, "132")
            SpawnSet(NPC, "soga_model_type", "132")
            SpawnSet(NPC, "chest_type", "5529")
            SpawnSet(NPC, "legs_type", "5530")
        elseif model == 2 then
            SetModelType(NPC, "134")
            SpawnSet(NPC, "soga_model_type", "134")
            SpawnSet(NPC, "chest_type", "5533")
            SpawnSet(NPC, "legs_type", "5534")
        else
            SetModelType(NPC, "97")
            SpawnSet(NPC, "soga_model_type", "134")
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
        end

    local hair = MakeRandomInt(1121,1140)
        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    local beard = MakeRandomInt(1164,1191)
        SpawnSet(NPC, "facial_hair_type", beard)

--    SetPlayerProximityFunction(NPC, 15, "InRange")

    AddTimer(NPC, 5000, "Stand")    
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local type = GetModelType(NPC)
    
        if type == 132 then
            humanFemale(NPC)
        elseif type == 134 then
            humanMale(NPC)
        else
            kerran(NPC)
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

function kerran(NPC)
    local chiChoice = MakeRandomInt(1,8)

        if chiChoice == 1 then
            PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_6b58eeec.mp3", "I keep my wit as sharp as my claws.  I never know which one I will need to rely on.", "stretch", 3670900464, 1104739099, Spawn)
        elseif chiChoice == 2 then
            PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_1f19f9ef.mp3", "Tact is the knack of making a point without making an enemy.", "agree", 216091278, 201326460, Spawn)
        elseif chiChoice == 3 then
            PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_44b38e8c.mp3", "Was it me or did I just see something move over there?", "wave", 3599874332, 7461740, Spawn)
        elseif chiChoice == 4 then
            PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_ac88207.mp3", "The goal isn't always catching the prey, rather it's the chase.", "smile", 152508601, 1517122703, Spawn)
        elseif chiChoice == 5 then
            PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_f8a140a8.mp3", "Who would have known that one's paws could become so stained from pie?", "shrug", 2791956809, 3567994575, Spawn)
        elseif chiChoice == 6 then
            PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_efb7fbaf.mp3", "Those gnolls don't scare me!  Well, maybe just a little.", "flex", 3516960004, 2208859201, Spawn)
        elseif chiChoice == 7 then
            PlayFlavor(NPC, "", "Sorry, I can't speak now.  I must prepare for my sparring exercises.", "", 0, 0, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_8647b14e.mp3", "I am no ordinary kerra.", "flex", 3153151742, 2518854444, Spawn)
        end
end

function respawn(NPC)
    spawn(NPC)
end

function Stand(NPC)
    SpawnSet(NPC, "visual_state", "0")
    PlayAnimation(NPC, 539)
    AddTimer(NPC, 3500, "Dance01")	
end

function Dance01(NPC)
    PlayAnimation(NPC, 10955)
    LeavesTimer(NPC)   
    AddTimer(NPC, 2400, "Dance02")
end

function Dance02(NPC)
    PlayAnimation(NPC, 323)
    PlayAnimation(NPC, 10955)    
    AddTimer(NPC, 2400, "Dance03")
end

function Dance03(NPC)
    PlayAnimation(NPC, 323)
    PlayAnimation(NPC, 10955)    
    AddTimer(NPC, 2400, "Dance04")
end

function Dance04(NPC)
    PlayAnimation(NPC, 323)
    PlayAnimation(NPC, 10955)    
    AddTimer(NPC, 2400, "DanceEnd")
end

function DanceEnd(NPC)
    PlayAnimation(NPC, 323)
    PlayAnimation(NPC, 10963)    
    SpawnSet(NPC, "action_state", "0")
    AddTimer(NPC, 4500, "Sit")
end

function Sit(NPC)
    PlayAnimation(NPC, 538)    
    AddTimer(NPC, 2000, "SitIdle")
end

function SitIdle(NPC)
    PlayAnimation(NPC, 540)    
    AddTimer(NPC, 10000, "Stand")
end

function LeavesTimer(NPC)
    AddTimer(NPC, 2400, "LeavesStart")
end

function LeavesStart(NPC)
    SpawnSet(NPC, "action_state", "144")
--    AddTimer(NPC, 2400, "LeavesStart")
end
