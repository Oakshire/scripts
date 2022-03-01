--[[
    Script Name    : SpawnScripts/Nektulos/BruhnKViir.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.19 07:06:04
    Script Purpose : 
                   : 
--]]


local ProveYourself = 5256 
local TrustMustBeEarnedPart1 = 5258
local TrustMustBeEarnedPart2 = 5259


function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")
end


function InRange(NPC, Spawn)
  if not HasQuest(Spawn, ProveYourself) and not HasCompletedQuest(Spawn, ProveYourself) then
  ProvidesQuest(NPC, ProveYourself)
  SetInfoFlag(NPC)
  SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, ProveYourself) then
      ProvidesQuest(NPC, TrustMustBeEarnedPart1)
      SetInfoFlag(NPC)
  SetVisualFlag(NPC) 
  elseif HasCompletedQuest(Spawn, TrustMustBeEarnedPart1) then
           ProvidesQuest(NPC, TrustMustBeEarnedPart2)
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
	elseif HasCompletedQuest(Spawn, ProveYourself) and not HasQuest(Spawn, TrustMustBeEarnedPart1) and not HasCompletedQuest(Spawn, TrustMustBeEarnedPart1) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Real funny. You told them to attack me, didn't you?", "Option5")
	AddConversationOption(conversation, "No, they weren't nice, and neither are you. Goodbye!")
	StartConversation(conversation, NPC, Spawn, "Congratulations. You are not as incompetent as I thought. Were the scouts nice to you?")
	elseif HasCompletedQuest(Spawn, TrustMustBeEarnedPart1) and not HasQuest(Spawn, TrustMustBeEarnedPart2) and not HasCompletedQuest(Spawn, TrustMustBeEarnedPart2) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can handle anything you can give.", "Option8")
	AddConversationOption(conversation, "You bore me. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Those plans were quite useful. More so than you, in fact. Nonetheless, I cannot ignore the aid you have provided, no matter how much I dislike that you have potential. I will give you another chance to earn our trust, if you think you can handle a real task...")
	elseif GetQuestStep(Spawn, ProveYourself) == 1 or GetQuestStep(Spawn, ProveYourself) == 2 or  GetQuestStep(Spawn, ProveYourself) == 3 or GetQuestStep(Spawn, TrustMustBeEarnedPart1) == 1 or GetQuestStep(Spawn, TrustMustBeEarnedPart2) == 1 or GetQuestStep(Spawn, TrustMustBeEarnedPart2) == 2 then
	Quest_Progress(NPC, Spawn)
	elseif GetQuestStep(Spawn, ProveYourself) == 4 or  GetQuestStep(Spawn, TrustMustBeEarnedPart1) == 2  then
	Quest1_2_Finish(NPC, Spawn)
	elseif GetQuestStep(Spawn, TrustMustBeEarnedPart2) == 3 then
	Quest3_Finish(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, ProveYourself) and HasCompletedQuest(Spawn, TrustMustBeEarnedPart1) and HasCompletedQuest(Spawn, TrustMustBeEarnedPart2) then
	PlayFlavor(NPC, "", "I am finished with you. Make sure you have read the entire book and then speak with Torq.", "", 1689589577, 4560189, Spawn)
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

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I suppose.", "Option6")
	AddConversationOption(conversation, "No, absolutely not.")
	StartConversation(conversation, NPC, Spawn, "They have standing orders to attack anyone they do not recognize, so yes and no... Do you still wish to learn more about our order?")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I can. I'll return shortly with the plans.", "offer2")
	AddConversationOption(conversation, "Not at the moment. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "If you travel around the beach you will find several groups of filthy humans. One of these camps holds the tents of both the Tactician and the Commander. We have heard rumors that the pirates are planning to expand off the beach and deeper into the forest. We do not wish this, of course. I need you to find the Tactician's tent and steal the attack plans. Can you handle that?")
end

function Option7(NPC, Spawn)
    SetStepComplete(Spawn, TrustMustBeEarnedPart1, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, NPC, Spawn, "Good work. I will give these to Szin. Take this for your time and return to me later. I have more tasks for you.")
end


function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can.", "offer3")
	AddConversationOption(conversation, "No, not right now.")
	StartConversation(conversation, NPC, Spawn, "I need you to find the Tactician and Commander and scour them from this beach. The plans for taking over the forest were more involved than we thought possible of their little human brains. Can you handle that?")
end


function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "This better be good, and not a set of ogre poetry.", "Option10")
	AddConversationOption(conversation, "No thanks. I won't be sacrificing lives to a book right now. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Yes, this of course isn't going to be, ''Oh, let's go sit under a tree and read this book!'' You should know better. These pages are shielded with an arcane magic beyond the comprehension of most mortal beings. It requires blood to reveal the truth written in its pages. You will know what kind of blood it desires when the time comes.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, NPC, Spawn, "All you have to do is take a look at the book and it will take you from there. If you manage to read the entire thing, come back and speak with Torq. He has more tasks for you if you wish to continue with the Trials.")
end



function Quest3_Finish(NPC, Spawn)
    SetStepComplete(Spawn, TrustMustBeEarnedPart2, 3)
 	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You do realize this book is blank, do you not?", "Option9")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "You have performed well. You show an interest in knowing why we are here. The book I gave you will answer many of your questions. You should feel honored; few have even touched that book in centuries.")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ProveYourself)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, TrustMustBeEarnedPart1)
end

function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, TrustMustBeEarnedPart2)
end


function Quest_Progress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay...")
	StartConversation(conversation, NPC, Spawn, "Please, do not bother me until you are finished.")
end

function Quest1_2_Finish(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, ProveYourself) == 4 then
	AddConversationOption(conversation, "Yes. I have delivered the supplies to the scouts.", "Option4")
	elseif GetQuestStep(Spawn, TrustMustBeEarnedPart1) == 2 then
	AddConversationOption(conversation, "Yes. Here are the attack plans.", "Option7")
	end
	AddConversationOption(conversation, "I must go.")
	StartConversation(conversation, NPC, Spawn, "Have you completed your tasks yet?")
end






function respawn(NPC)
	spawn(NPC)
end