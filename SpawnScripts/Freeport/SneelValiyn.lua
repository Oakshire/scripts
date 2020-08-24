--[[
    Script Name    : SpawnScripts/Freeport/SneelValiyn.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:50
    Script Purpose : Dialogues for Ratonga Freeport Racial Questlines
                   : 
--]]

QUEST1 = 574
QUEST2 = 575
QUEST3 = 576

function spawn(NPC)
 ProvidesQuest(NPC, QUEST1)
 ProvidesQuest(NPC, QUEST2)
 ProvidesQuest(NPC, QUEST3)
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
    elseif HasCompletedQuest(Spawn, QUEST1) and not HasCompletedQuest(Spawn, QUEST2) then
    dlg2_1(NPC, Spawn)
    elseif HasQuest(Spawn, QUEST2) and not GetQuestStep(Spawn, QUEST2) == 3 then
    quest2progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, QUEST2) == 3 or GetQuestStep(Spawn, QUEST2) == 6 then
    quest2progress1(NPC, Spawn)
    elseif GetQuestStep(Spawn, QUEST2) == 7 or GetQuestStep(Spawn, QUEST2) == 8 then
    quest2progress2(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, QUEST2) and not HasQuest(Spawn, QUEST3) then
    dlg4_6(NPC, Spawn)
    elseif HasQuest(Spawn, QUEST3) and GetQuestStep(Spawn, QUEST2) < 4 then
    quest3progress(NPC, Spawn)
    end
    if HasQuest(Spawn, QUEST3) and GetQuestStep(Spawn, QUEST3) >= 5 then
    quest3progress1(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, QUEST3) then
    PlayFlavor(NPC, "", "Those treacherous Thexians paid dearly for what they did, as was just!", "shakefish", 1689589577, 4560189, Spawn)
    end
    elseif GetRace(Spawn) ~= 13 then
    PlayFlavor(NPC, "", "The Grand Inquisitor speaks for Sir Lucan in all matters regarding the Dismal Rage.", "bow", 1689589577, 4560189, Spawn) 
end
   end
      


-- QUEST IN PROGRESS DIALOGUES

function quest3progress1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "bow", 0, 0, Spawn)
if HasQuest(Spawn, QUEST3) and GetQuestStep(Spawn, QUEST3)  < 8 then
AddConversationOption(conversation, "I'm still searching, but I will let you know soon.")
elseif GetQuestStep(Spawn, QUEST3) == 8 then
AddConversationOption(conversation, "It isn't good, Sneel.  The true roekillik, the masters of the Dark Agenda, are here in Freeport.  Or they were, until I destroyed them.", "5_2")
end
StartConversation(conversation, NPC, Spawn, "Oh, "..GetName(Spawn).."  You're here!  What did you find out?")
end
  

function quest3progress(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "bow", 0, 0, Spawn)
if HasQuest(Spawn, QUEST3) and GetQuestStep(Spawn, QUEST3) < 4 then
AddConversationOption(conversation, "No, I am still looking for them all.  I'll come back when I've found them.")
elseif HasQuest(Spawn, QUEST3) and GetQuestStep(Spawn, QUEST3) == 4 then
AddConversationOption(conversation, "Yes, I believe I found them.  I couldn't tell you what they were sick with, but they all had the same symptoms.  Shallow breath, burning with fever, non-responsive to touch, and a green mist around them.  They looked like death itself had already taken them.", "dlg4_8")
end
StartConversation(conversation, NPC, Spawn, "Hello, "..GetName(Spawn)..". I have been looking forward to you coming back.  Did you find the sickened citizens?")
end


function quest2progress2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "bow", 0, 0, Spawn)
if HasQuest(Spawn, QUEST2) and GetQuestStep(Spawn, QUEST2) == 7 then
AddConversationOption(conversation, "I haven't found any yet, but I haven't searched the whole city.  Give me some more time.")
elseif HasQuest(Spawn, QUEST2) and GetQuestStep(Spawn, QUEST2) == 8 then
AddConversationOption(conversation, "No, you were right.  The false roekillik are indeed within Freeport.  But what does that mean?", "dlg4_0")
end
StartConversation(conversation, NPC, Spawn, "I'm been waiting for you to come back.  Please tell me that the impostor roekillik aren't within Freeport's walls.")
end

function quest2progress1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "bow", 0, 0, Spawn)
if HasQuest(Spawn, QUEST2) and GetQuestStep(Spawn, QUEST2) == 3 then
AddConversationOption(conversation, "I haven't finished speaking with them yet.  Give me a little while longer.")
elseif HasQuest(Spawn, QUEST2) and GetQuestStep(Spawn, QUEST2) == 6 then
AddConversationOption(conversation, "A few things, none of which was very comforting.", "dlg3_5")
end
StartConversation(conversation, NPC, Spawn, "Well?  I've been waiting for you.  What did they have to say?")
end



function quest2progress(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "bow", 0, 0, Spawn)
if HasQuest(Spawn, QUEST2) and GetQuestStep(Spawn, QUEST2) == 1 then
AddConversationOption(conversation, "No, I'm still searching for them.  I'll return soon.")
elseif HasQuest(Spawn, QUEST2) and  GetQuestStep(Spawn, QUEST2) == 2 then
AddConversationOption(conversation, "I was.  Here they are.", "dlg2_9")
end
StartConversation(conversation, NPC, Spawn, "You've come back!  Excellent, were you able to get the slates?")
end

function quest1progress(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1032.mp3", "", "bow", 0, 0, Spawn)
if HasQuest(Spawn, QUEST1) and GetQuestStep(Spawn, QUEST1) < 6 then
 AddConversationOption(conversation, "I'm still working on it - these gnomes can be maddening!  I'll come back when I have it done.")
elseif HasQuest(Spawn, QUEST1) and GetQuestStep(Spawn, QUEST1) == 6 then
 AddConversationOption(conversation, "I sure did.  It was even easier than I thought it would be!", "dlg7") 
end  
  StartConversation(conversation, NPC, Spawn, "Welcome back, "..GetName(Spawn).." ! Were you able to decipher the gnomish equations?")      
end

-- QUEST 1 PART

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

-- QUEST 2 PART

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
AddConversationOption(conversation, "Ah, you mean the roekillik?", "dlg2_5")
StartConversation(conversation, NPC, Spawn, "It does.  But I didn't mean Freeport itself, I meant the surface of Norrath entirely.")
end

function dlg2_5(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
AddConversationOption(conversation, "How does that affect us, though?  Aren't they still trapped?", "dlg2_6")
StartConversation(conversation, NPC, Spawn, "Shh!!  Don't say that name too loudly!  But yes, you're right... the roekillik, and their Dark Agenda.")
end

function dlg2_6(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
AddConversationOption(conversation, "I know what I've heard.  What more should I know?", "dlg2_7")
StartConversation(conversation, NPC, Spawn, "What do you know about the roekillik?")
end

function dlg2_7(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "So what can we do?", "dlg2_8")
StartConversation(conversation, NPC, Spawn, "The roekillik are no longer trapped within the Underfoot!  We've had reports of them showing up in the land of Odus, and we fear they might have found a way from there to Norrath.  If that's the case... then all of us are in danger.")
end

function dlg2_8(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST2)
conversation = CreateConversation()
AddConversationOption(conversation, "All right, I'll see what I can find.  Should I just meet you back here?", "offer2")
StartConversation(conversation, NPC, Spawn, "It's up to us to see what we can find out, and verify if the roekillik really have come here.   I'll see what I can find out, but I'll need you to go back into Temple Street, and pick up some writing of ours that was left behind there... some of those slates are hundreds of years old, and might have information we need.")
end

function dlg2_9(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "What is written on those?", "dlg3_0")
StartConversation(conversation, NPC, Spawn, "Ah yes... give me a moment to look through these.")
end

function dlg3_0(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "What split are you talking about?", "dlg3_1")
StartConversation(conversation, NPC, Spawn, "I'll need some time to really go through these, but I know they talk a bit about the split in the ratonga.")
end


function dlg3_1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Ah yes... you mean the ratonga who call themselves, ''roekillik''? ", "dlg3_2")
StartConversation(conversation, NPC, Spawn, "The split between those of us who fled the roekillik and came to the surface, and those who chose to stay and serve them.  It's those ratonga who chose to continue their enslavement who have been the main threat up until now.")
end

function dlg3_2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "They aren't here in Freeport though, right?  We're safe within its walls, as we always have been.", "dlg3_3")
StartConversation(conversation, NPC, Spawn, "That's right.  They called themselves ''roekillik'' as an homage to their masters, and have been doing their bidding here on the surface.  They act as spies and informants for the roekillik, and can easily infiltrate the surface cities, since they blend in with other ratonga.")
end

function dlg3_3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "I'll search around the city and see what I can find, then.  Maybe I should speak with some of the other ratonga and see if they have heard anything?", "dlg3_4")
StartConversation(conversation, NPC, Spawn, "Are we?  I know they were doing some digging out in the Commonlands, but since they can blend in so easily, can we really know... hmm... I think we should find out.")
end

function dlg3_4(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST2, 2)
PlayAnimation(NPC, 12028)
conversation = CreateConversation()
AddConversationOption(conversation, "I will.  Farewell.")
StartConversation(conversation, NPC, Spawn, "I have a few friends here that might be able to help.  Salla was once a scout for the Militia, and has good eyes and ears.  Feepsin works with the Coalition of Tradesfolke, using the sudden boom of crafting work to earn a pretty gold coin.  Cles works with the Academy, and fills his days with research.  Speak with them, and see what they might know.")
end

function dlg3_5(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Cles and Salla were completely convinced that the followers of the roekillik are here in Freeport.  They seemed... I don't know... jumpy and frightened.", "dlg3_6")
StartConversation(conversation, NPC, Spawn, "I was afraid of that.  What did they tell you?")
end

function dlg3_6(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "It appeared that he believed the roekillik were recruiting somehow.  He mentioned that associates of his have disappeared, only to reappear later, seemingly out of their minds.", "dlg3_7")
StartConversation(conversation, NPC, Spawn, "What about Feepsin?  What did he have to say?")
end

function dlg3_7(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Why don't I look for the roekillik?  All of the evidence points to them in the shadows of Freeport.  I can begin searching the city and seeing what I can find.", "dlg3_8")
StartConversation(conversation, NPC, Spawn, "This is troubling - if the roekillik are here, and ''recruiting'', as it were, the implications could be dire.  We need to know for sure if this is possible, and if they are here.")
end

function dlg3_8(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST2, 6)
conversation = CreateConversation()
AddConversationOption(conversation, "I'll watch out.  Farewell for now.", "dlg3_9")
StartConversation(conversation, NPC, Spawn, "All right, but be careful.  If the followers of the roekillik realize they've been spotted, they aren't going to hesitate to attack.  They will not answer to the laws of Freeport, only to their roekillik masters.")
end

function dlg3_9(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 10745)
conversation = CreateConversation()
AddConversationOption(conversation, "I haven't found any yet, but I haven't searched the whole city.  Give me some more time.")
StartConversation(conversation, NPC, Spawn, "I'm been waiting for you to come back.  Please tell me that the impostor roekillik aren't within Freeport's walls.")
end


function dlg4_0(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "I had that sense as well.  These false roekillik weren't just scouting.", "dlg4_1")
StartConversation(conversation, NPC, Spawn, "I don't think it means anything good.  I fear... I fear there is much more to this.")
end


function dlg4_1(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 12030)
conversation = CreateConversation()
AddConversationOption(conversation, "What?  What are you thinking?" , "dlg4_2")
StartConversation(conversation, NPC, Spawn, "Actually... I think... oh no...")
end

function dlg4_2(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 12028)
conversation = CreateConversation()
AddConversationOption(conversation, "Certainly.  What is it that you need?", "dlg4_3")
StartConversation(conversation, NPC, Spawn, "I just made a connection, but I need to do some research.  Can you do me a favor?")
end

function dlg4_3(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 11882)
conversation = CreateConversation()
AddConversationOption(conversation, "I will.  What am I looking for?", "dlg4_5")
StartConversation(conversation, NPC, Spawn, "I've heard of a few people falling ill around the city.  This is nothing too alarming - it happens all of the time.  A few are gravely sick, and I want to know more about their symptoms.  Can you look into this?")
end

function dlg4_5(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST2, 8)
PlayAnimation(NPC, 10745)
conversation = CreateConversation()
AddConversationOption(conversation, "I see.  All right, I'll look for them and let you know what I find out.", "dlg4_6")
StartConversation(conversation, NPC, Spawn, "There's three I know about.  One is in one of the taverns, right where he fell when the sickness took hold.  There's another that apparently tried to seek help at the Temple of War, but their magic did not help.  And I've heard of one who simply fell in the streets near the docks, and was left there.")
end
-- QUEST 3 PART

function dlg4_6(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", "", "bow", 0, 0, Spawn)
AddConversationOption(conversation, "I will.  What am I looking for?", "dlg4_7")
StartConversation(conversation, NPC, Spawn, "I've heard of a few people falling ill around the city.  This is nothing too alarming - it happens all of the time.  A few are gravely sick, and I want to know more about their symptoms.  Can you look into this?")
end

function dlg4_7(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "I see.  All right, I'll look for them and let you know what I find out." , "offer3")
StartConversation(conversation, NPC, Spawn, "There's three I know about.  One is in one of the taverns, right where he fell when the sickness took hold.  There's another that apparently tried to seek help at the Temple of War, but their magic did not help.  And I've heard of one who simply fell in the streets near the docks, and was left there.")
end

function dlg4_8(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Of course!  It really couldn't be missed.", "dlg4_9")
StartConversation(conversation, NPC, Spawn, "A green haze?  Are you certain?")
end

function dlg4_9(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "What do you mean?  You don't suppose this has something to do with the Dark Agenda, do you?", "dlg5_0")
StartConversation(conversation, NPC, Spawn, "Oh no... I don't want to imagine it, but too many things are beginning to add up in a frightening way.")
end

function dlg5_0(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Could the followers of the roekillik really unleash such a thing?  I thought the roekillik would do that themselves.", "dlg5_1")
StartConversation(conversation, NPC, Spawn, "I'm afraid it might!  Those sickened people were only a sample - the sickness of the Dark Agenda would wipe out all life on Norrath.  We'd all suffer and die, while the roekillik laughed and took Norrath as their own.  We have to know if this is what is happening!")
end

function dlg5_1(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST3, 4)
conversation = CreateConversation()
AddConversationOption(conversation, "I will.  I'll come back once I know what's happening.")
StartConversation(conversation, NPC, Spawn, "I don't know.  We need to find out, though.  The followers must be hiding out here someplace.  Find them!  See what they are hiding!  I need to warn others of the danger!")
end

function dlg5_2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "There was no mistaking it.  I fought them myself.  The roekillik are here, on the surface of Norrath.", "dlg5_3")
StartConversation(conversation, NPC, Spawn, "This... this is impossible!!  They've come to Norrath?  Are you certain?  It was the roekillik themselves??")
end

function dlg5_3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Who will we tell?  We've tried to explain this to the other races of this world several times, and it always goes unheard!", "dlg5_4")
StartConversation(conversation, NPC, Spawn, "If what you say is true, then we must begin preparations.  I have no doubt this incursion was little more than a test - but I have a feeling it was a successful test.  Cucumbo, we need to warn the city that the roekillik are here.")
end

function dlg5_4(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Indeed, we must watch after ourselves.", "complete")
StartConversation(conversation, NPC, Spawn, "Well, this is part of the reason some of us left for Qeynos.  If nothing else, we ratonga will do all we can to survive if the roekillik do finally emerge from the Underfoot, and begin the Dark Agenda.  If the races of Norrath do not heed our warning before then, they will find themselves on their own.")
end

function complete(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST3, 8)
conversation = CreateConversation()
AddConversationOption(conversation, "My thoughts exactly - the fall of the other races will be their own doing in that case.  Watch your back, as I will watch mine.  Farewell.")
StartConversation(conversation, NPC, Spawn, "I will begin speaking to the other ratonga, and spreading the word.  I'll see about getting someone to speak to Sir Lucan as well, but I suspect the outcome will be largely the same.  In spite of this, I do appreciate your help - at least we can do what we must to save ourselves if the time comes to it.")
end



-- OFFERING THE QUESTS
function offer2(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST2)
end

function offer1(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST1)
end

function offer3(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, QUEST3)
end




function respawn(NPC)

end

