--[[
    Script Name    : SpawnScripts/Nektulos/BruhnKViir.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.19 07:06:04
    Script Purpose : 
                   : 
--]]


local ProveYourself = 5256 


function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")
end


function InRange(NPC, Spawn)
  if not HasQuest(Spawn, ProveYourself) and not HasCompletedQuest(Spawn, ProveYourself) then
  ProvidesQuest(NPC, ProveYourself)
  SetInfoFlag(NPC)
  SetVisualFlag(NPC)
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, ProveYourself) and not HasCompletedQuest(Spawn, ProveYourself) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I can speak. What is this camp?", "Option1")
	AddConversationOption(conversation, "Actually, I am finding it quite difficult to talk to you. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "You are quite a pitiful specimen. In fact, I am quite appalled that you are able to speak. You are able to speak, correct?")
	elseif GetQuestStep(Spawn, ProveYourself) == 1 or GetQuestStep(Spawn, ProveYourself) == 2 or  GetQuestStep(Spawn, ProveYourself) == 3 then
	quest1_progress(NPC, Spawn)
	elseif GetQuestStep(Spawn, ProveYourself) == 4 then
	quest1_finish(NPC, Spawn)
end
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I am not one of that... type.", "Option2")
	AddConversationOption(conversation, "I thought you would answer, but I was wrong. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Did you really think that I would answer that? I don't know you from any other fool who wanders along, saying hello for no good reason. They run by saying hello like I have pretty presents to hand out. It disgusts me.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will take on your task.", "offer")
	AddConversationOption(conversation, "Does it mean I would have to speak with you again?", "Option3")
	AddConversationOption(conversation, "I'm busy right now. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Hmm, maybe you are, maybe you aren't. It doesn't really matter in the long run, does it? If you are truly interested in why we are here, then I have a task you could perform to prove yourself, if you wish it.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure.", "offer")
	AddConversationOption(conversation, "I am no fool. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Funny... Do you want to learn or not, fool?")
end


function Option4(NPC, Spawn)
    SetStepComplete(Spawn,  ProveYourself, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "And you're still alive... I'm impressed. Take this and speak with me again when you're ready for your next task.")
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ProveYourself)
end


function quest1_progress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay...")
	StartConversation(conversation, NPC, Spawn, "Please, do not bother me until you are finished.")
end

function quest1_finish(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes. I have delivered the supplies to the scouts.", "Option4")
	AddConversationOption(conversation, "I must go.")
	StartConversation(conversation, NPC, Spawn, "Have you completed your tasks yet?")
end





function respawn(NPC)
	spawn(NPC)
end