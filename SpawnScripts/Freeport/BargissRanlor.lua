--[[
    Script Name    : SpawnScripts/Freeport/BargissRanlor.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 05:07:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/bargiss_ranlor/fprt_north/bargissranlor000.mp3", "", "", 2519774157, 2552342626, Spawn)
    AddConversationOption(conversation, "I'll leave you be.")
    StartConversation(conversation, NPC, Spawn, "Can't you see I am busy waiting on my order? Leave me alone. I came here to eat not to talk. Oh, here comes my order now. 'Bout time, the service here is the worst!")
end

function respawn(NPC)

end

