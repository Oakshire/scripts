--[[
    Script Name    : SpawnScripts/Freeport/Rumdum.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 11:07:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/rumdum/fprt_east/quest_rumdum001.mp3", "", "", 531525914, 2611919563, Spawn)
    AddConversationOption(conversation, "Well, I suppose you are getting some of it in your mouth.  I'll leave you to your ''drinking.'' ")
    StartConversation(conversation, NPC, Spawn, "What in Zek do you want?  Can't ya see I'm drinkin' here...")
end

function respawn(NPC)

end

