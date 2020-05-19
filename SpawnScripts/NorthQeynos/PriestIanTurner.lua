--[[
    Script Name    : SpawnScripts/NorthQeynos/PriestIanTurner.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.16 05:05:10
    Script Purpose : 
                   : 
--]]

local ForgottenShroud = 528

function spawn(NPC)

end

function respawn(NPC)
         spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if HasQuest(Spawn, ForgottenShroud) and GetQuestStep(Spawn, ForgottenShroud) == 1 then
    PlayFlavor(NPC, "voiceover/english/priest_ian_turner/qey_north/priestianturner000.mp3", "", "", 3050768414, 1599241603, Spawn)
    AddConversationOption(conversation, "I've recovered a shroud from the catacombs, can you help me?", "speak")
    StartConversation(conversation, NPC, Spawn, "Raise not your hand in judgment of others, for one day they may be your salvation.")
    else
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "Raise not your hand in judgment of others, for one day they may be your salvation.", "hail", 0, 0, Spawn)
end

function speak(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation() 
 PlayFlavor(NPC, "voiceover/english/priest_ian_turner/qey_north/priestianturner003.mp3", "", "", 155358629, 2115296012, Spawn)
 AddConversationOption(conversation, "Sir, I found it on one of the denizens of the catacombs.  I wanted to know where to return it to.", "apologize")
 StartConversation(conversation, NPC, Spawn, "You disturbed a burial chamber?  What right do you have to commit such an atrocity? How could you violate someone in death?  Speak, before I truly lose my temper!")
end

function apologize(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/priest_ian_turner/qey_north/priestianturner004.mp3", "", "", 1886276171, 266052076, Spawn) 
 AddConversationOption(conversation, "Thank you, I wouldn't ever disturb a crypt.", "takeshroudback")
 StartConversation(conversation, NPC, Spawn, "You disturbed a burial chamber?  What right do you have to commit such an atrocity? How could you violate someone in death?  Speak, before I truly lose my temper!") 
end

function takeshroudback(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/priest_ian_turner/qey_north/priestianturner005.mp3", "", "", 2152101643, 1181741366, Spawn)
 AddConversationOption(conversation, "How will I know which body this should be placed over?", "LordMrallon") 
 StartConversation(conversation, NPC, Spawn, "This doesn't look like a used burial shroud.  It's far too clean.  Unless ... no, the undead cannot venture there ... can they? Quickly, take this shroud back to the catacombs, and return it to the position above the tomb whence it came.  Take this box with you, and it will open when you replace the shroud.")   
end

function LordMrallon(NPC, Spawn)
 SetStepComplete(Spawn, ForgottenShroud, 1)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/priest_ian_turner/qey_north/priestianturner006.mp3", "", "", 1072418166, 1690433050, Spawn)
 AddConversationOption(conversation, "I will do so.") 
 StartConversation(conversation, NPC, Spawn, "The site you seek is  the tomb of Lord Mrallon. Many times he valiantly proved his worth to the city of Qeynos. You will search for the knight with the green armor and place this shroud over the likeness of his body.")
end
   end

