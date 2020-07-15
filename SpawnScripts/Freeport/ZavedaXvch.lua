--[[
    Script Name    : SpawnScripts/Freeport/ZavedaXvch.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.14 07:07:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "zaveda_x_vch/fprt_north/quests/zaveda_xvch/zaveda_xvch001.mp3", "", "", 993528106, 3118405624, Spawn)
    AddConversationOption(conversation, "Okay, I'm leaving.")
    StartConversation(conversation, NPC, Spawn, "How dare you address me! I have important things to attend to. Now leave before others see you conversing with me; I don't want them to think I socialize with scum.")
end

function respawn(NPC)

end

