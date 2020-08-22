--[[
    Script Name    : SpawnScripts/Freeport/Salla.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.19 07:08:58
    Script Purpose : 
                   : 
--]]

QUEST = 575

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 3 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1031.mp3", "", "point", 0, 0, Spawn)
    local  conversation = CreateConversation()
    AddConversationOption(conversation, "Wait, one of who?", "dlg01")
    StartConversation(conversation, NPC, Spawn, "Who are you??  Are you... are you one of them?")
   else
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1031.mp3", "", "", 0, 0, Spawn)
end
   end

function dlg01(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local  conversation = CreateConversation()
 AddConversationOption(conversation, "Here in Freeport?  Aren't they outside the gates?", "dlg02")
 StartConversation(conversation, NPC, Spawn, "The followers of the roekillik.  I've heard things... I've heard whispers from around corners, and seen mysterious figures just on the edge of my sight.")
end

function dlg02(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local  conversation = CreateConversation()
 AddConversationOption(conversation, "Is that so?  Do you think that the roekillik spies are here, then?", "progress")
 StartConversation(conversation, NPC, Spawn, "I've seen them out there in Commonlands before, of course.  We would take care of the ones we would find who strayed to close to the city, but they stayed out beyond the walls.  But the things I've seen... they are in our walls.  Inside Freeport.")
end

function progress(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, QUEST, 3)
 local  conversation = CreateConversation()
 AddConversationOption(conversation, "No, they shouldn't.  Let's hope you were mistaken.  Farewell.")
 StartConversation(conversation, NPC, Spawn, "I don't know, and all I can do is hope that it's all my imagination.  I thought we were safe here!  The roekillik shouldn't be near us here!")
end





function respawn(NPC)

end

