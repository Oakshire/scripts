--[[
    Script Name    : SpawnScripts/Commonlands/Hanif.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.20 07:02:00
    Script Purpose : 
                   : 
--]]

local PlainOleDisease = 454

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
  if not HasQuest(Spawn, PlainOleDisease) and not HasCompledQuest(Spawn, PlainOleDisease) then
 AddConversationOption(conversation, "I tend to care only for my misery.", "option1")
  AddConversationOption(conversation, "I do... for the right amount.", "option1")
   AddConversationOption(conversation, "I couldn't agree more!", "option2")
   AddConversationOption(conversation, "Never.")
   StartConversation(conversation, NPC, Spawn, "Those spared personal pain feel themselves called to assist the pain of others.  We must all carry our share of the misery which lies upon the world.  Wouldn't you agree?")
   elseif HasQuest(Spawn, PlainOleDisease) and GetQuestStep(Spawn, PlainOleDisease) == 1 or GetQuestStep(Spawn, PlainOleDisease) == 2 or GetQuestStep(Spawn, PlainOleDisease) == 3 then
   AddConversationOption(conversation, "Oh, right.  I'll be back.")
   StartConversation(conversation, NPC, Spawn, "I am glad that you are eager to assist me, but please do as I asked.")
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
 AddConversationOption(conversation, "I can do that.  What do you need?", "")
 AddConversationOption(conversation, "I think I'll pass.")
 StartConversation(conversation, NPC, Spawn, "Get me some medicinal aids to alleviate some of their discomfort.  The medicine can help alleviate the pain, as well as lengthen the patient's life.")
end

function offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn,  PlainOleDisease)
end    
    
function respawn(NPC)

end

