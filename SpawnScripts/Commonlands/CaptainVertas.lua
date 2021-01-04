--[[
    Script Name    : SpawnScripts/Commonlands/CaptainVertas.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.03 01:01:54
    Script Purpose : 
                   : 
--]]

local FinishingtheNegotiations = 425

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
    if GetQuestStep(Spawn, FinishingtheNegotiations) == 1 then
    SetStepComplete(Spawn, FinishingtheNegotiations, 1)
    end
    conversation = CreateConversation()
    AddConversationOption(conversation, "What does the job pay?")
    AddConversationOption(conversation, "No, I don't have time right now.")
    StartConversation(conversation, NPC, Spawn, "Pah, the orcs and the dervish... Listen, the Freeport Militia requires your help. Will you do a service for the Militia?")
end

function respawn(NPC)

end

