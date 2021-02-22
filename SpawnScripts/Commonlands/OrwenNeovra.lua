--[[
    Script Name    : SpawnScripts/Commonlands/OrwenNeovra.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.21 09:02:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra001.mp3", "", "", 1077223898, 923115266, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Who are you talking about?", "dlg1")
 AddConversationOption(conversation, "I'll stay out of your way.")
 StartConversation(conversation, NPC, Spawn, "She's gone! There was nothing I could do. Once I finish this cutter, that will all change. I got a few scars that I need to return to their dealers.")
end

function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra002.mp3", "", "", 3552530226, 2927764176, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Maybe I could help look for her while you finish your weapon?")
 AddConversationOption(conversation, "I'll stay out of your way. ")
StartConversation(conversation, NPC, Spawn, "My wife, Ariana.  Bleeding in the dust, I watched the orcs drag her away. But when I finish this blade, I'll retrieve her from the grasp of those evil orcs!")
end

function respawn(NPC)

end