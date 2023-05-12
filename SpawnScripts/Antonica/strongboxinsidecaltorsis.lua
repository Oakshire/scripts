--[[
    Script Name    : SpawnScripts/Antonica/strongboxinsidecaltorsis.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.11 06:05:08
    Script Purpose : 
                   : 
--]]
local Sayer = 5812

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	if Message == "inspect" and not HasCompletedQuest(Quest,Sayer) then
    Dialog1(NPC, Spawn)
    else
    Dialog3(NPC,Spawn)
    end
end

function Dialog1(NPC, Spawn)
    conversation = CreateConversation()
    if GetQuestStep(Spawn,Sayer)==3 then
    AddConversationOption(conversation, "Use the strongbox key ", "Dialog2")
    end
    AddConversationOption(conversation, "Stop inspecting the strongbox")
    StartDialogConversation(conversation, 1, NPC, Spawn, "This is a locked strongbox. It does not look worn at all and seems to have some spell placed over it that binds it to the ground.")
end

function Dialog2(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Take the sewing kit.","Update")
    AddConversationOption(conversation, "Stop inspecting the strongbox")
    StartDialogConversation(conversation, 1, NPC, Spawn, "Inside the chest you find some coin, some scrolls written in a language unknown, and odd trinkets of no use. You also find a small ornate sewing kit with the name \"Nerissa Clothspinner\" engraved upon it.")
end

function Update(NPC, Spawn)
    SetStepComplete(Spawn, Sayer, 3)
    CloseConversation(NPC,Spawn)
end

function Dialog3(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Stop inspecting the strongbox")
    StartDialogConversation(conversation, 1, NPC, Spawn, "The spell that bound this lockbox here still holds firm. The remaining contents are still of no use to you.")

end

function respawn(NPC)
	spawn(NPC)
end