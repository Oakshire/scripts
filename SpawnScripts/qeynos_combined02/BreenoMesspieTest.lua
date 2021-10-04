--[[
    Script Name    : SpawnScripts/qeynos_combined02/BreenoMesspieTest.lua
    Script Author  : Rylec
    Script Date    : 2021.10.03 10:10:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "visual_state", "2120")
    SpawnSet(NPC, "action_state", "11420")
    SpawnSet(NPC, "mood_state", 11852)
    

    SetLuaBrain(NPC)
    SetBrainTick(NPC, 500)
    Think(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 20, "InRange")
end

function hailed(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 0) 
    local choice = MakeRandomInt(1,8)

    if choice == 1 then     
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_d79063bf.mp3", "Ahhhhh, that's what I love about Qeynos.  So many bakeries and so many pies!", "scheme", 894976267, 1675938925, Spawn)
    elseif choice == 2 then 
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_103d60c5.mp3", "Well, looks like it's getting close to naptime again.", "yawn", 121409065, 1108008452, Spawn)  
    elseif choice == 3 then 
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_75c0e97c.mp3", "Welcome to the city, adventurer. Be mindful of the peace and quiet.  Here in Qeynos, we value our privacy.", "bow", 1955296899, 2249687997, Spawn)  
    elseif choice == 4 then 
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_7d33c817.mp3", "Nice weather we're having.  Should make for a good harvest this season, if it holds up.", "nod", 3022454580, 2853198849, Spawn)  
    elseif choice == 5 then 
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_7f5ac93.mp3", "I just need enough to tide me over until I need more.", "agree", 1669752330, 425539219, Spawn)  
    elseif choice == 6 then 
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_f657192c.mp3", "Nostalgia isn't what it used to be.", "sigh", 2017572665, 1813639796, Spawn)  
    elseif choice == 7 then 
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cf902b40.mp3", "Get on now!  There's plenty of work to be done.  Maybe you should lend a hand, if you feel up to it.", "stare", 1396062221, 310311489, Spawn)  
    elseif choice == 8 then 
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_50622dfa.mp3", "Whoa, hello there!  Eager and in a hurry I see.  My advice, take your time.  The city isn't going anywhere.", "wave", 2627404831, 2664895493, Spawn)  
    end

    --AddTimer(NPC, 40000, "ResetState", 1, Spawn)
end

function InRange(NPC, Spawn)
-- These lines will be triggered if you on Live log in next to Breeno, but are not included when you hail him. I put them in as a proximity function just to safe keep them.

--    FaceTarget(NPC, Spawn)
    local proximityChoice = MakeRandomInt(1,3)

        if proximityChoice == 1 then
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gm_fea5fead.mp3", "The world is round.  It's round I say, as well it should be!", "curse", 4205711950, 2062936277, Spawn)
        elseif proximityChoice == 2 then
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_aoi_gm_89ed3363.mp3", "Wonderful, more troublesome adventurers in the city.", "sarcasm", 3296911201, 4000062691, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/halfling/halfling_eco_good_1_hail_gm_cd9164d6.mp3", "You're a stranger. And I don't like strangers, no sir I don't!", "sulk", 785726454, 3155500140, Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Think(NPC, Spawn)
    local mostHated = GetMostHated(NPC)
        if mostHated ~= nil then
        aggro(NPC, mostHated)
    end    
end

function aggro(NPC, Spawn)
    local timebetweenShots = MakeRandomInt(8000,12000) 

    if GetTempVariable(NPC, "CASTING") ~= "True" then
        SetTempVariable(NPC, "CASTING", "True")
        SpawnSet(NPC, "visual_state", 0) 
        CastSpell(Spawn, 993, 1, NPC)
        AddTimer(NPC, timebetweenShots, "FinishedCasting") --  PLAY WITH TIME HERE
    end
end

-- Timer callback to allow casting again
function FinishedCasting(NPC)
    SetTempVariable(NPC, "CASTING", "False")
    AddTimer(NPC, 1550, "ResetState")
end

function ResetState(NPC)
    SpawnSet(NPC, "visual_state", 2120) 
end