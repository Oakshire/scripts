--[[
    Script Name    : SpawnScripts/Freeport/BankerLusiusUlixes.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 07:08:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/lusius_ulixes/fprt_west/bnk_lusiusulixes.mp3", "", "", 1089349401, 3321470608, Spawn)
    AddConversationOption(conversation, "I'll deposit my money when I'm good and ready...")
     StartConversation(conversation, NPC, Spawn, "Hi.  The Overlord provides for us all, doesn't he?  I have a full range of banking services I can offer.  I just need to know your guild affiliation first.")
end

function respawn(NPC)

end

