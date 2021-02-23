--[[
    Script Name    : SpawnScripts/Commonlands/Hanif.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.20 07:02:00
    Script Purpose : 
                   : 
--]]

local PlainOleDisease = 454

function EmoteLoop (NPC)
        local choice = math.random(1,2)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 12030)
                AddTimer(NPC, timer, "EmoteLoop")
        elseif choice == 2 then
                PlayAnimation(NPC, 13056)
                AddTimer(NPC, timer, "EmoteLoop")
   end
      end
  

function spawn(NPC)
ProvidesQuest(NPC, PlainOleDisease)
EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
    end
    conversation = CreateConversation()
  if not HasQuest(Spawn, PlainOleDisease) and not HasCompletedQuest(Spawn, PlainOleDisease) then
 AddConversationOption(conversation, "I tend to care only for my misery.", "option1")
  AddConversationOption(conversation, "I do... for the right amount.", "option1")
   AddConversationOption(conversation, "I couldn't agree more!", "option2")
   AddConversationOption(conversation, "Never.")
   StartConversation(conversation, NPC, Spawn, "Those spared personal pain feel themselves called to assist the pain of others.  We must all carry our share of the misery which lies upon the world.  Wouldn't you agree?")
   elseif GetQuestStep(Spawn, PlainOleDisease) == 1 or GetQuestStep(Spawn, PlainOleDisease) == 2 or GetQuestStep(Spawn, PlainOleDisease) == 3 or GetQuestStep(Spawn, PlainOleDisease) == 5 or GetQuestStep(Spawn, PlainOleDisease) == 8 then
   AddConversationOption(conversation, "Oh, right.  I'll be back.")
   StartConversation(conversation, NPC, Spawn, "I am glad that you are eager to assist me, but please do as I asked.")
   elseif GetQuestStep(Spawn, PlainOleDisease) == 4 then
    SetStepComplete(Spawn, PlainOleDisease, 4)
    AddConversationOption(conversation, "Which ones?", "dlg3")
     AddConversationOption(conversation, "Do I have to wait?", "dlg3")
    StartConversation(conversation, NPC, Spawn, "Just in time, mighty one!  I shall mix these, and then they will need to be administered to two of the victims here.")
   elseif GetQuestStep(Spawn, PlainOleDisease) == 7 then
      SetStepComplete(Spawn, PlainOleDisease, 7) 
      PlayAnimation(NPC, 121)
      AddConversationOption(conversation, "They spoke of visions when I gave them the medicine.", "dlg4")
     StartConversation(conversation, NPC, Spawn, "Delightful!  You have once again, proven that each one of us can do a little to bring some portion of misery to an end.")
   elseif GetQuestStep(Spawn, PlainOleDisease) == 11 and HasItem(Spawn, 14012) and HasItem(Spawn, 11167) then
       RemoveItem(Spawn, 14012)
       RemoveItem(Spawn, 11167)
       AddConversationOption(conversation, "Ahem.  My reward?", "dlg9")
       AddConversationOption(conversation, "I seem to recall you mentioning some ''crude rewards'' for my help.", "dlg9")
       AddConversationOption(conversation, "I am glad to have been able to help.  It is so rewarding to me!", "dlg10")
       StartConversation(conversation, NPC, Spawn, "You're back!  And with the scroll and flesh.  This is delightful!  I must get started in testing this, right away.")
    elseif HasCompletedQuest(Spawn, PlainOleDisease) then
        AddConversationOption(conversation, "Don't mention it.")
         StartConversation(conversation, NPC, Spawn, "Your help was invaluable to me.  Thank you for your services, once again!")
         end
   end

function option1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "So you are a healer of some sort?", "dlg1")
  AddConversationOption(conversation, "You have chosen to care for lepers?", "dlg1")
  StartConversation(conversation, NPC, Spawn, "That is a narrow outlook, but expected in this day.  I myself, have felt a calling to tend to the suffering of these unfortunate souls.")
end

function option2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "So you are a healer of some sort?", "dlg1")
  AddConversationOption(conversation, "You have chosen to care for lepers?", "dlg1")
 StartConversation(conversation, NPC, Spawn, "I am glad to hear that!  It is too often that citizens here hold a narrower outlook.  I myself, have felt a calling to tend to the suffering of these unfortunate souls.")
end
    
function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Is there a way I can help to ease their pain?", "dlg2")
StartConversation(conversation, NPC, Spawn, "Indeed.  I follow the doctrines of the ancient Springview Healers.  A grand house of healers that felt themselves called to help attend to the pain of others.")
PlayAnimation(NPC, 11882)
end

function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "I can do that.  What do you need?", "offer")
 AddConversationOption(conversation, "I think I'll pass.")
 StartConversation(conversation, NPC, Spawn, "Get me some medicinal aids to alleviate some of their discomfort.  The medicine can help alleviate the pain, as well as lengthen the patient's life.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Hmmph.")
AddConversationOption(conversation, "Yeah, yeah.  I get it.")
StartConversation(conversation, NPC, Spawn, "There we go!  Takes no time at all.  Now give this to Durio Caepio and Galla Lentula, as I make further notes.")
end

function dlg4(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "The fear in their eyes cannot be denied.", "dlg5")
 StartConversation(conversation, NPC, Spawn, "Do you give it more credence than just the ravings of dying and fevered souls?")
end

function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 10745)
conversation = CreateConversation()
 AddConversationOption(conversation, "This disease is something of a curse from another plane?", "dlg6")
 StartConversation(conversation, NPC, Spawn, "I admit that talk of such visions has reached my ears, too.  I was quite skeptical that there was an unnatural connection with the affliction at first, but more tests and reported visions are convincing me otherwise.  Perhaps it is connected with an ancient pox from the Plaguebringer.")
end

function dlg6(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 12030)
conversation = CreateConversation()
 AddConversationOption(conversation, "Where will I find her?", "dlg8")
 AddConversationOption(conversation, "A person around here has such items?", "dlg7")
 StartConversation(conversation, NPC, Spawn, "That is something very worth my study!  I need to run some tests to be sure.  We need some solid information to go by, and some flesh or fluid of the long closed plane.  Lucretias Domna should have what we require.")
end

function dlg7(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Where will I find her?", "dlg8")
 StartConversation(conversation, NPC, Spawn, "She is a member of the Dismal Rage sect that are very interested in the magic and influences of the Plane of Disease.  If anyone should have such items for use, it will be her.")
end

function dlg8(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "hanif/commonlands/quests/springview_healer_hanif/healerhanif017.mp3", "", "", 1739849644, 856240092, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Understood.")
 StartConversation(conversation, NPC, Spawn, "Her interests in disease and undeath have taken her to studying the undead amongst The Commonlands graves near the Ulteran Spires.  Take this note to her.  Do hurry, as this may be an important breakthrough!")
end

function dlg9(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 13061)
conversation = CreateConversation()
 AddConversationOption(conversation, "Thank you.", "complete")
StartConversation(conversation, NPC, Spawn, "And you are so deserving of it.  I am just so excited about this breakthrough.  Forgive my one track mind.  You have been an invaluable help to me!  Such help is rather difficult to find these days.  Here are the rewards you have earned.")
end


function dlg10(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Thank you.", "complete")
StartConversation(conversation, NPC, Spawn, "A good deed is its own reward, but I can think of none more deserving of some physical rewards than you.  You have been an invaluable help to me!  Such help is rather difficult to find these days.  Here are the rewards you have earned.")
end

function complete(NPC, Spawn)
SetStepComplete(Spawn, PlainOleDisease, 11)
end



function offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, PlainOleDisease)
end    
    
function mushrooms(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thank you.")
    StartConversation(conversation, NPC, Spawn, "The mushrooms tend to grow on the banks of dog trapper lake.  The stone beetles and scourge rats have been seen congregating near Wasp Hill.")
end

    
function respawn(NPC)
spawn(NPC)
EmoteLoop(NPC)
end

