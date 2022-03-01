--[[
    Script Name    : SpawnScripts/QueensColony/MenderMannus.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Mender Mannus dialog
    Modified Data  : 2020.04.03
    Modified by    : premierio015
    Notes          : Added VoiceOvers
--]]

function spawn(NPC)

end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 0) 
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    math.randomseed(os.time())
    local choice = MakeRandomInt(1, 3)
    
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..choice.."_1004.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Thanks, I will do so.")
    StartConversation(conversation, NPC, Spawn, "Hello there, " ..GetName(Spawn).. ". Menders like me repair your equipment after it is damaged due to death. For more information on repairs, speak to Trainer Zidget Sprogrudder nearby. I'll fix your gear for a small fee, but menders in Qeynos won't be quite so generous!")

    AddTimer(NPC, 35000, "ResetState", 1, Spawn)
end

function ResetState(NPC)
    SpawnSet(NPC, "visual_state", 11812) 
end