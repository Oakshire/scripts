--[[
    Script Name    : SpawnScripts/Freeport/SneelValiyn.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:50
    Script Purpose : 
                   : 
--]]

QUEST1 = 574

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetRace(Spawn) == 13 then
    if not HasQuest(Spawn, QUEST1) and not HasCompletedQuest(Spawn, QUEST1) then
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "hello", 0, 0, Spawn)
    AddConversationOption(conversation, "Apologies, friend.  What is it you were doing?", "dlg1")
    AddConversationOption(conversation, "Ah, perhaps I should leave you be, then.")
    StartConversation(conversation, NPC, Spawn, "Oh, why, hello!  I'm sorry, you startled me a bit.")
    elseif HasQuest(Spawn, QUEST1) and not HasCompletedQuest(Spawn, QUEST1) then
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "hello", 0, 0, Spawn)
    AddConversationOption(conversation, "I'm still working on it - these gnomes can be maddening!  I'll come back when I have it done.")
    StartConversation(conversation, NPC, Spawn, "Welcome back, "..GetName(Spawn).." ! Were you able to decipher the gnomish equations?")
    elseif GetRace(Spawn) ~= 13 then
    PlayFlavor(NPC, "", "The Grand Inquisitor speaks for Sir Lucan in all matters regarding the Dismal Rage.", "bow", 1689589577, 4560189, Spawn) 
end
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

function offer1(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST1)
end
 
function respawn(NPC)

end

