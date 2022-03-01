--[[
    Script Name    : SpawnScripts/qeynos_combined02/PelleShinkicker.lua
    Script Author  : Rylec
    Script Date    : 2021.03.13 03:03:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    Fishing(NPC)
end

function hailed(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 0) 
    FaceTarget(NPC, Spawn)

    local choice = MakeRandomInt(1,2)    
    
        if choice == 1 then
            PlayFlavor(NPC, "voiceover/english/pelle_shinkicker/qey_elddar/100_quest_pelle_shinkicker_hail_f015f9a0.mp3", "Shoo shoo!  I'm too busy to speak with you now!", "heckno", 1998455291, 633133163, Spawn)
        else
            local voice = MakeRandomInt(1,3)
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1024.mp3", "", "", 0, 0, Spawn)
            Say(NPC, "Oh, what is it now?  Bristlebane's no doubt playing tricks on me again, causing all this interruption!  Is there something meaningful I can help you with, or are you just going to gawk?")
        end
end

function respawn(NPC)
    spawn(NPC)
end

function Fishing(NPC)
    SpawnSet(NPC, "visual_state", 11540) 
    local CastTimer = MakeRandomInt(15000,25000)  
    AddTimer(NPC, CastTimer, "FishingReelIn")  
end

function FishingReelIn(NPC)
    SpawnSet(NPC, "visual_state", 0) 
    PlayAnimation(NPC, 11541)   
    AddTimer(NPC, 1500, "FishingCast")  
end

function FishingCast(NPC)
    SpawnSet(NPC, "visual_state", 0) 
    PlayAnimation(NPC, 11539)   
    AddTimer(NPC, 4000, "Fishing")  
end