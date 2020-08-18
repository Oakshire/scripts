--[[
    Script Name    : SpawnScripts/Freeport/SneelValiyn.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:50
    Script Purpose : 
                   : 
--]]

QUEST1 = 574
QUEST2 = 575

function spawn(NPC)
 ProvidesQuest(NPC, QUEST1)
end
 

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local  conversation = CreateConversation()
    if GetRace(Spawn) == 13 then
    if not HasQuest(Spawn, QUEST1) and not HasCompletedQuest(Spawn, QUEST1) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "hello", 0, 0, Spawn)
    AddConversationOption(conversation, "Apologies, friend.  What is it you were doing?", "dlg1")
    AddConversationOption(conversation, "Ah, perhaps I should leave you be, then.")
    StartConversation(conversation, NPC, Spawn, "Oh, why, hello!  I'm sorry, you startled me a bit.")
    elseif HasQuest(Spawn, QUEST1)  then
    quest1progress(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, QUEST1) and not HasQuest(QUEST2)
    dlg_2_1(NPC, Spawn)
    elseif HasQuest(Spawn, QUEST2) then
    quest2progress(NPC, Spawn)
    end
    elseif GetRace(Spawn) ~= 13 then
    PlayFlavor(NPC, "", "The Grand Inquisitor speaks for Sir Lucan in all matters regarding the Dismal Rage.", "bow", 1689589577, 4560189, Spawn) 
end
   end
  

function quest1progress(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "bow", 0, 0, Spawn)
if HasQuest(Spawn, QUEST1) and GetQuestStep(Spawn, QUEST1) < 6 then
 AddConversationOption(conversation, "I'm still working on it - these gnomes can be maddening!  I'll come back when I have it done.")
elseif HasQuest(Spawn, QUEST1) and GetQuestStep(Spawn, QUEST1) == 6 then
 AddConversationOption(conversation, "I sure did.  It was even easier than I thought it would be!", "dlg7")   
  StartConversation(conversation, NPC, Spawn, "Welcome back, "..GetName(Spawn).." ! Were you able to decipher the gnomish equations?")      
end
   end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayAnimation(NPC, 11882)
 AddConversationOption(conversation, "Is that so?  What's so funny?", "dlg2")
 AddConversationOption(conversation, "I'll bet they are!  I'll leave you to figure them out then.  Farewell.")
 StartConversation(conversation, NPC, Spawn, "I was going over some of these equations that another friend of mine, Deelsi, brought me from Temple Street.  Apparently they were made by gnomes - they're hilarious!")
end

function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Why do we even care?  Those gnomes will blow themselves up one of these days, anyway.", "dlg3")
AddConversationOption(conversation, "Well, best of luck!  I have places to be!")
StartConversation(conversation, NPC, Spawn, "They have good fundamentals, but their expressions are all wrong.  I'm not surprised that they aren't finishing these - they couldn't solve them the way they are!")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayAnimation(NPC, 12030)
AddConversationOption(conversation, "Let me do it!  This sounds like a bit of fun!", "dlg4")
AddConversationOption(conversation, "Well, let me know if you find anything out, then.  Farewell.")
StartConversation(conversation, NPC, Spawn, "Well, I'm curious.  I think these are formulas for operating some of the strange machines the gnomes build... but I'm willing to bet that one of us could build them better, if we could work through these confusing formulas...")
end

function dlg4(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayAnimation(NPC,  20601)
AddConversationOption(conversation, "Oh?  What is that?", "dlg5")
AddConversationOption(conversation, "Eh, you know what?  I have some other things to do.  Maybe another time.")
StartConversation(conversation, NPC, Spawn, "Well, who am I to stop you if you're so eager... besides, I've got other things to worry about anyway.")
end

function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayAnimation(NPC, 12030)
AddConversationOption(conversation, "All right.  I'll head into Temple Street and make some copies of the equations, then.  It's probably safer than trying to solve them there.", "dlg6")
AddConversationOption(conversation, "I'm pretty sure solving gnomish equations would drive me insane.  Maybe another time.")
StartConversation(conversation, NPC, Spawn, "Mmm... you know what, you might be useful.  I don't want to send you to just get killed, so consider this a test.  Go ahead and see if you can figure out those gnomish equations.  You might need some of the tomes in the library to help decipher their insanity.")
end

function dlg6(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayAnimation(NPC, 11882)
AddConversationOption(conversation, "I don't think that'll be a problem.  I'll let you know how it goes.", "offer1")
StartConversation(conversation, NPC, Spawn, "Well, if you can get those solved, you might be able to take over one of their own machines.  We've had to live for so long with those insane creations over there, I'd love to see you take one and smash theirs with it!")
end

function dlg7(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayAnimation(NPC, 20601)
AddConversationOption(conversation, "It was no trouble.  Once I had the formulas down, I was able to use the machine I found to destroy the ones the gnomes had working.  Very simple.", "complete1")
StartConversation(conversation, NPC, Spawn, "Of course it was!  I had a feeling you would get through it quickly.  And the machine?  How did that go?")
end

function complete1(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST1, 6)
conversation = CreateConversation()
AddConversationOption(conversation, "What is it you need me for?", "dlg2_1")
StartConversation(conversation, NPC, Spawn, "Excellent work.  However, the next foe is not going to be so easy.  I think, though, with your aptitude, maybe you can help us.")
end

function dlg2_1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "I have seen that, but I figured it was because of the civil unrest in the city.  But now that Sir Lucan is back, that shouldn't be a problem any more, right?", "dlg2_2")
StartConversation(conversation, NPC, Spawn, "Before we get started, there's something you need to know.  I'm not sure if you've noticed, but many of us have been keeping a wary eye over our shoulders.")
end

function dlg2_2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Why is that?", "dlg2_3")
StartConversation(conversation, NPC, Spawn, "That isn't it.  A few of us believe the danger to Freeport, and indeed, all of Norrath, goes much, much deeper than that.")
end

function dlg2_3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "In Freeport?  We've been here since the Age of Cataclysms.  We can live freely here - this city suits our personality well.", "dlg2_4")
StartConversation(conversation, NPC, Spawn, "I think you'll need a little bit of background first.  Let me ask you a question... do you know why the ratonga are here?")
end

function dlg2_4(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Ah, you mean the roekillik?, "dlg2_5")
StartConversation(conversation, NPC, Spawn, "It does.  But I didn't mean Freeport itself, I meant the surface of Norrath entirely.")
end

function dlg2_5(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "How does that affect us, though?  Aren't they still trapped?", "dlg2_6")
StartConversation(conversation, NPC, Spawn, "Shh!!  Don't say that name too loudly!  But yes, you're right... the roekillik, and their Dark Agenda.")
end

function dlg2_6(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption("I know what I've heard.  What more should I know?", "dlg2_7")
StartConversation(conversation, NPC, Spawn, "What do you know about the roekillik, (..GetName(Spawn)..) ?")
end

function dlg2_7(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption("So what can we do?", "offer2")
StartConversation(conversation, NPC, Spawn, "The roekillik are no longer trapped within the Underfoot!  We've had reports of them showing up in the land of Odus, and we fear they might have found a way from there to Norrath.  If that's the case... then all of us are in danger.")
end

function offer2(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST2)
conversation = CreateConversation()
AddConversationOption("All right, I'll see what I can find.  Should I just meet you back here?")
StartConversation(conversation, NPC, Spawn, "It's up to us to see what we can find out, and verify if the roekillik really have come here.   I'll see what I can find out, but I'll need you to go back into Temple Street, and pick up some writing of ours that was left behind there... some of those slates are hundreds of years old, and might have information we need.")
end

function quest2progress(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "bow", 0, 0, Spawn)
if GetQuestStep(Spawn, QUEST2) == 1 then
AddConversationOption("No, I'm still searching for them.  I'll return soon.")
elseif GetQuestStep(Spawn, QUEST2) == 2 then
AddConversationOption("I was.  Here they are.", "dlg2_8")
StartConversation(conversation, NPC, Spawn, "You've come back!  Excellent, were you able to get the slates?")
end




function offer1(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST1)
end
 
function respawn(NPC)

end

