--[[
    Script Name    : SpawnScripts/Freeport/TorligtheAlchemist.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 02:07:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    
    PlayFlavor(NPC, "voiceover/english/torlig_the_alchemist/fprt_north/torlig_the_alchemist.mp3", "", "", 4161370754, 1751042550, Spawn)
    AddConversationOption(conversation, "Fine then, I will leave you to your perfumes and snake oils.")
    StartConversation(conversation, NPC, Spawn, "Shhhh! Don't distract me ... I need a steady hand to ensure I combine this potion correctly. One mistake and the blast will reduce this building to rubble. Deal with my apprentices if you want to buy something.")
end

function respawn(NPC)

end

