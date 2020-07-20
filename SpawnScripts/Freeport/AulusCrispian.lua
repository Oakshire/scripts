--[[
    Script Name    : SpawnScripts/Freeport/AulusCrispian.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 02:07:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/alchemist_aulus_crispian/fprt_north/mer_auluscrispian.mp3", "", "", 3874372728, 2977782311, Spawn)
    AddConversationOption(conversation, "These herbs are not my cup of tea.  I think I will look elsewhere.")
    AddConversationOption(conversation, "Do you know how to handle them properly?", "dlg01")
    StartConversation(conversation, NPC, Spawn, "Welcome to Torlig's Herbs and Potions.  I sell many magicial reagents and herbs.  But, I warn you, you must possess amazing skill to handle them properly.")
end

function dlg01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
   
    PlayFlavor(NPC, "voiceover/english/alchemist_aulus_crispian/fprt_north/mer_auluscrispian000.mp3", "", "", 2154034769, 640127952, Spawn)
    AddConversationOption(conversation, "Okay.")
    StartConversation(conversation, NPC, Spawn, "Of course I do.  I'm very knowledgeable in the ways of magic.  Why, if it wasn't for those instructors at the Academy denying my admission, I'd be on my way to becoming a famous arch mage! That fire was not my fault!")
end

function respawn(NPC)

end

