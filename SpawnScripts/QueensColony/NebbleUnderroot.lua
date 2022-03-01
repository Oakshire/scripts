--[[
    Script Name    : SpawnScripts/QueensColony/NebbleUnderroot.lua
    Script Author  : Zcoretri, premierio015(Update)
    Script Date    : 2015.07.27
    Script Purpose : Nebble Unfderroot dialog
    Modified Date  : 2020.04.03
    Modified by    : premierio015
    Modified Notes   : Added correct VoiceOvers and animation
--]]

    local count = 1

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 0) 

    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    local choice = math.random(1,2)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..choice.."_1040.mp3", "", "", 0, 0, Spawn)

    if count == 1 then
        PlayAnimation(NPC, "11541")
    end
    
    text = math.random(1,3)

    if text == 1 then
        Say(NPC, "Mmm, triggerfish pie!  I can smell it now.")
    elseif text == 2 then
        Say(NPC, "Shark fin soup!  Maybe I'll get lucky.")
    else
        Say(NPC, "Got any goods for sale from your adventures?")	
    end

    count = count + 1
    TimerforFishingRodgone(NPC)   
    AddTimer(NPC, 30000, "countReset") 
end

function TimerforFishingRodgone(NPC)
    AddTimer(NPC, 3000, "FishingRodGone", 1, Spawn)
end

function FishingRodGone(NPC)
    SetEquipment(NPC, 0, 0)  
    AddTimer(NPC, 45000, "FishingCast", 1, Spawn)    
end

function FishingCast(NPC)
    PlayAnimation(NPC, 11539)
    AddTimer(NPC, 1000, "FishingRodAppear", 1, Spawn)
end

function FishingRodAppear(NPC)
    SetEquipment(NPC, 0, 1635, 255, 255, 255, 255, 255, 255)
    AddTimer(NPC, 3000, "ResetState", 1, Spawn)    
end

function ResetState(NPC)
    SpawnSet(NPC, "visual_state", 11540) 
end

function countReset(NPC)
    count = 1
end