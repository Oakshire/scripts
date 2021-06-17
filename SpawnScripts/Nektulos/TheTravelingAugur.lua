--[[
    Script Name    : SpawnScripts/Nektulos/TheTravelingAugur.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.15 06:06:22
    Script Purpose : 
                   : 
--]]

local TheTravelersThreeMeaningsOfLife = 5255

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, TheTravelersThreeMeaningsOfLife) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I wasn't looking for you.", "Option1")
	AddConversationOption(conversation, "I have no idea what you're talking about.")
	StartConversation(conversation, NPC, Spawn, "Ah, so you've arrived at last! I wondered when you would seek my knowledge of the meaning of life.  Come closer and we shall begin your quest for enlightenment, my child.")
	elseif GetQuestStep(Spawn, TheTravelersThreeMeaningsOfLife) == 1 or GetQuestStep(Spawn, TheTravelersThreeMeaningsOfLife) == 2 or GetQuestStep(Spawn, TheTravelersThreeMeaningsOfLife) == 3 or GetQuestStep(Spawn, TheTravelersThreeMeaningsOfLife) == 4  then
	QuestProgress1(NPC, Spawn)
	elseif GetQuestStep(Spawn, TheTravelersThreeMeaningsOfLife) == 5 or GetQuestStep(Spawn, TheTravelersThreeMeaningsOfLife) == 6 or GetQuestStep(Spawn, TheTravelersThreeMeaningsOfLife) == 7 then
	QuestProgress2(NPC, Spawn)
	elseif GetQuestStep(Spawn, TheTravelersThreeMeaningsOfLife) == 8 or GetQuestStep(Spawn, TheTravelersThreeMeaningsOfLife) == 9 then
	QuestProgress3(NPC, Spawn)  
	elseif HasCompletedQuest(Spawn,  TheTravelersThreeMeaningsOfLife) then
	QuestFinished(NPC, Spawn)
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "The meanings of life?", "offer")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "And yet, you have found me, have you not?  Whether consciously or not, many seek the wisdom and foresight of the Augurs.  We are many, as there are many paths to self-awareness and enrichment.  I can give you the keys to some of the meanings of life, if you desire.")
end






function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheTravelersThreeMeaningsOfLife)
end

function QuestFinished(NPC, Spawn)
    PlayAnimation(NPC, 11882)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "I have given you the keys, my child.  How or if you ever use them is in your hands.  Other Augurs you meet in your travels may provide you with more wisdom.")
end


function QuestProgress1(NPC, Spawn)
	local conversation = CreateConversation()
    PlayAnimation(NPC, 121)
    if GetQuestStep(Spawn,  TheTravelersThreeMeaningsOfLife) == 4 then
	AddConversationOption(conversation, "I traveled far.  I mean, yes.", "Option2")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "And so you return.  Have you traveled far and seen much?")
end

function QuestProgress2(NPC, Spawn)
	local conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
    if GetQuestStep(Spawn,  TheTravelersThreeMeaningsOfLife) == 7 then
    AddConversationOption(conversation, "Yes, finally.", "Option3")
    end
    AddConversationOption(conversation, "I'm working on it.")
	StartConversation(conversation, NPC, Spawn, "Have you been able to select a single item from its greater surroundings?")
end


function QuestProgress3(NPC, Spawn)
	local conversation = CreateConversation()
     PlayAnimation(NPC, 11882)
    if 	GetQuestStep(Spawn,  TheTravelersThreeMeaningsOfLife) == 9 then
	AddConversationOption(conversation, "You didn't tell me anything about seeing the future.", "Option4")
	end
	AddConversationOption(conversation, "Yes, well, I'm off again.")
	StartConversation(conversation, NPC, Spawn, "You've returned, as I had foreseen.")
end



function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Huh?", "Option3")
	AddConversationOption(conversation, "I'll understand later.")
	StartConversation(conversation, NPC, Spawn, "Broadening one's mind does not mean neglecting that which is close at hand.  The act of harvesting even one item from a group of weeds, or of catching a single fish from a school is to learn that everything large is comprised of another that is small.  Do you understand this, my child?")
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, TheTravelersThreeMeaningsOfLife, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I wasn't asking a question, I was...oh, never mind.  I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Must you answer each question of mine with a question of your own?  It is quite disconcerting.  In any event, go into the wilds and search for a single item within a larger group of similar items.  When you have the skill to separate a mote of dust from the earth, return to me.")
end


function Option4(NPC, Spawn)
    PlayAnimation(NPC, 11909)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Not really.", "Option5")
	StartConversation(conversation, NPC, Spawn, "I am not telling you everything, only that which you might comprehend.  Your personal efforts work in concert with the broadening of your mind and the exquisite vision techniques of seeing that which is unseen by many.  Three meanings of life that coalesce into one simple constant.  Do you understand now, my child?")
end

function Option5(NPC, Spawn)
    SetStepComplete(Spawn, TheTravelersThreeMeaningsOfLife, 9)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you, I think.")
	StartConversation(conversation, NPC, Spawn, "Then you are not ready, my child.  A pity.  Perhaps when you have studied for as many years as I have, you will realize that these three meanings of life are essential elements of all that you experience.  The broadening of the mind, seeing the individual amongst the many and personal effort.  I foresee much personal effort on your part.")
end








function respawn(NPC)
	spawn(NPC)
end