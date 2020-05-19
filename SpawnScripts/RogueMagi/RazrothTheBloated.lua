--[[
    Script Name    : SpawnScripts/RogueMagi/RazrothTheBloated.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.22 05:10:57
    Script Purpose : 
                   : 
--]]

local TheFinalAssault = 367

function spawn(NPC)
end

function respawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    StartConversation(conversation, NPC, Spawn, "*Burp* Hello, " .. GetName(Spawn) .. ". How can i help you?")

    if HasQuest(Spawn, TheFinalAssault) then
        AddConversationOption(conversation, "The Final Assault", "TheFinalAssaultOptions")
    else
    end
end

function TheFinalAssaultOptions(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    StartConversation(conversation, NPC, Spawn, "Select an option for this quest: ")
    
    AddConversationOption(conversation, "What step am i on?", "TheFinalAssaultQuestStep")
end

function TheFinalAssaultQuestStep(NPC, Spawn)
    Say(NPC, "You are currently on step " .. GetQuestStep(Spawn, TheFinalAssault))
end

