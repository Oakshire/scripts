--[[
    Script Name    : SpawnScripts/FrostfangSea/FirionaVie.lua
    Script Author  : TyroneSWG
    Script Date    : 2020.07.01 08:07:55
    Script Purpose : General Testing Information.
                   : 
--]]

function spawn(NPC)

end
function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
        --PlaySound(NPC, "blah.mp3", GetX(NPC), GetY(NPC), GetZ(NPC))
        AddConversationOption(conversation, "How do I get to the Discord?", "Choice1")
        AddConversationOption(conversation, "How do I use commands?", "Choice2")
        AddConversationOption(conversation, "I need gear!", "Choice3")
        --AddConversationOption(conversation, "Can you take me to Memorial Island please?", "Choice4")
        AddConversationOption(conversation, "I do not require anything at this time.", "EndConvo")
        StartConversation(conversation, NPC, Spawn, "Hail, Adventurer. How may I assist you?")
	--AddCharacterTitle(Spawn, "Lord")
end

function Choice1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
        AddConversationOption(conversation, "Thank you!")
        StartConversation(conversation, NPC, Spawn, "Visit the website to get a link to the Discord server. There you will find many useful resources.")
end

function Choice2(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
        AddConversationOption(conversation, "Thank you!")
        StartConversation(conversation, NPC, Spawn, "Visit the Wiki to view the list of commands players can use to help test.")
end

function Choice3(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
        AddConversationOption(conversation, "Thank you!")
        StartConversation(conversation, NPC, Spawn, "This magical creature next to me will give you what you need to start your adventure!")
        CloseConversation()
end

function Choice4(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
        Emote(NPC, "begins casting Call of the Beyond")
        StartConversation(conversation, NPC, Spawn, "Sending you away!")
        Zone(GetZone(816), Spawn, 48.28, -1.08, 44.05, 221.37)
end


function EndConvo(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
        AddConversationOption(conversation, "Thank you!")
        StartConversation(conversation, NPC, Spawn, "Farewell, I will be here if you need information!")
        Emote(NPC, "waves")
        CloseConversation()
end

function respawn(NPC)

end