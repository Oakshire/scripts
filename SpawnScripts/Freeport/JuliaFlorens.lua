--[[
    Script Name    : SpawnScripts/Freeport/JuliaFlorens.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 05:07:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/julia_florens/fprt_north/mer_juliaflorens.mp3", "", "", 381228226, 4204129286, Spawn)
    AddConversationOption(conversation, "What's a Jade Tiger cocktail?", "cocktail")
    AddConversationOption(conversation, "Argh!  Leave me be....")
    StartConversation(conversation, NPC, Spawn, "Come in, please come in.  Welcome to the Jade Tiger's Den.  I'm Hostess Julia.   Perhaps you came to try a Jade Tiger cocktail?")
end

function cocktail(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

     PlayFlavor(NPC, "voiceover/english/julia_florens/fprt_north/mer_juliaflorens000.mp3", "", "", 437471813, 724586510, Spawn)
     AddConversationOption(conversation, "Right.")
     StartConversation(conversation, NPC, Spawn, "Honey, if you have to ask it's not for you.")
end


function respawn(NPC)

end

