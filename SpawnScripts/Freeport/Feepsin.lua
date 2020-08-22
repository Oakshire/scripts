--[[
    Script Name    : SpawnScripts/Freeport/Feepsin.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.21 04:08:08
    Script Purpose : 
                   : 
--]]


QUEST = 575


function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 5 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1046.mp3", "", "", 0, 0, Spawn)
   local  conversation = CreateConversation()
   AddConversationOption(conversation, "I won't keep you too long, but I do have a question.  Have you heard anything about roekillik spies in our midst here in Freeport?", "dlg01")
   StartConversation(conversation, NPC, Spawn, "I'm sorry, I haven't got time to talk right now.  I'm busy in my studies.")
   else
   PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1046.mp3", "", "", 0, 0, Spawn)
end
   end

function dlg01(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local  conversation = CreateConversation()
 AddConversationOption(conversation, "What makes you say that?  We're inside the city walls!", "dlg02")
 StartConversation(conversation, NPC, Spawn, "Shh!!  Don't say that too loud.  They could be all around us!  I must learn all I can about them before it's too late!")
end

function dlg02(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local  conversation = CreateConversation()
 AddConversationOption(conversation, "Why do you think the roekillik have anything to do with it, though?  We're in a large city.  There's a number of reasons for any of those things." , "progress")
 StartConversation(conversation, NPC, Spawn, "That's what I would like to believe, too, but I'm beginning to change my mind.  Something is going on... shadows in the streets, voices out of sight, and other ratonga just... disappearing.")
end

function progress(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, QUEST, 5)
 PlayAnimation(NPC, 12030)
 local  conversation = CreateConversation()
 AddConversationOption(conversation, "Hmm... that is interesting.  All right.  I'll leave you to your studies.  Farewell.")
 StartConversation(conversation, NPC, Spawn, "That's what I thought, too.  I've seen some of the ratonga who have vanished.  They come back days later, but they are different.  A wildness in their eyes, a sinister sneer on their faces, mocking laughter in their voices.  No, friend, I think it's much more than the normal goings-on in a big city.")
end

function respawn(NPC)

end

