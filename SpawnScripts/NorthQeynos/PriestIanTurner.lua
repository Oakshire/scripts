--[[
    Script Name    : SpawnScripts/NorthQeynos/PriestIanTurner.lua
    Script Author  : Premierio015 is a gansta
    Script Date    : 2020.05.16 05:05:10
    Script Purpose : 
                   : 
--]]

local ForgottenShroud = 528
local ACrumpledNote = 5435

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
 elseif HasQuest(Spawn, ACrumpledNote) then
     PlayFlavor(NPC, "voiceover/english/priest_ian_turner/qey_north/priestianturner000.mp3", "", "hail", 3050768414, 1599241603, Spawn)
    AddConversationOption(conversation, "The priests here should see this note I found.", "FindThis")
    StartConversation(conversation, NPC, Spawn, "Raise not your hand in judgment of others, for one day they may be your salvation.")
else
    PlayFlavor(NPC, "voiceover/english/priest_ian_turner/qey_north/priestianturner000.mp3", "Raise not your hand in judgment of others, for one day they may be your salvation.", "hail", 3050768414, 1599241603, Spawn)end
end
   




--[[function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
  if HasQuest(Spawn, ACrumpledNote) then
 StartConversation(conversation, NPC, Spawn, "Raise not your hand in judgment of others, for one day they may be your salvation.")
    AddConversationOption(conversation, "The priests here should see this note I found", "FindThis")
end]]

--Crumpled Note Quest

function FindThis(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation() 
 PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
 AddConversationOption(conversation, "I found it on a Ratonga lurking in the catacombs. I believe it may be something important.","quest_complete")
 StartConversation(conversation, NPC, Spawn, "Where did you find this?")
end

function quest_complete(NPC, Spawn)
    SetStepComplete(Spawn, ACrumpledNote, 1)
	conversation = CreateConversation()
    PlayFlavor(NPC, "", "", "thank", 0, 0, Spawn)
   AddConversationOption(conversation, "Thank you, I knew the Temple would take this seriously.")
   StartConversation(conversation, NPC, Spawn, "Interesting. I will certainly address this. Thank you for bringing it to my attention. Please, allow our priesthood to award you.")	 
end

function FindThis(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation() 
 PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
 AddConversationOption(conversation, "I found it on a Ratonga lurking in the catacombs. I believe it may be something important.","quest_complete")
 StartConversation(conversation, NPC, Spawn, "Where did you find this?")
end

--- 2nd quest burial shroud

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
 StartConversation(conversation, NPC, Spawn, "In that case, I apologize. Disturbing the sancitity of a grave is one of the few things that I feel reaches the depths of depravity. Let me have a look. I'll see what I can find for you.") 
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

