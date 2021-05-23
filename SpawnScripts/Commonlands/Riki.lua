--[[
    Script Name    : SpawnScripts/Commonlands/Riki.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 05:03:16
    Script Purpose : 
                   : 
--]]

local CantWeAllJustGetALong = 448
local TheLoverbirdsRoost = 449

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if  GetQuestStep(Spawn, QUEST) == 2  then
	local conversation = CreateConversation()    
	AddConversationOption(conversation, "Wait, I am here to talk to you about your son.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Yes? I'm sorry, we don't need any more supplies until the end of the month. Good day.")
    elseif GetQuestStep(Spawn, TheLoverbirdsRoost) == 2 then
    local conversation = CreateConversation()
   	AddConversationOption(conversation, "I have something you might find interesting.", "Option4")
	StartConversation(conversation, NPC, Spawn, "You again? You just don't get it, do you?")
	else 
	PlayFlavor(NPC, "", "What do you want?", "glare", 1689589577, 4560189)    
end
   end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes. He asked me to try to talk to you about Amoora.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Ferink? What about him? Is he still moping by the river about that cat?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "She is no killer. The kerrans are a noble race and she is a wonderful person, er... cat.  I have met her and she is very much in love with Ferink.", "Option3")
	StartConversation(conversation, NPC, Spawn, "Don't say her name to me! It's ridiculous, really, being in love with a killer for goodness' sakes!")
end


function Option3(NPC, Spawn)
    SetStepComplete(Spawn, QUEST, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "If I must.")
	StartConversation(conversation, NPC, Spawn, "Love? Children know nothing of love! It's out of the question! Now, since you are wasting both of our time here, please leave me be. I have the day's chores to see to.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I went to see Jojo, and he told me a story of kindness and honor. Can you guess who the main character was?", "Option5")
	StartConversation(conversation, NPC, Spawn, "I highly doubt you have anything I would find interesting.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Does the name Duia sound familiar? I bet it does. How quickly we forget those that have helped us in the past.", "Option6")
	StartConversation(conversation, NPC, Spawn, "I'm listening...")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I do. You mean that you were wrong about him, as you are wrong about Amoora. Isn't that what you were trying to say? Oh, and he also asked me to give you this.", "Option7")
	StartConversation(conversation, NPC, Spawn, "Duia... Duia... oh... well, yes but he was an exception... I mean, they are not all like him. Such a kind man, er, cat... Well, you know what I mean.")
end

function Option7(NPC, Spawn)
    SetStepComplete(Spawn,  TheLoverbirdsRoost, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Wonderful! You won't be disappointed with this decision. I will go tell him.")
	StartConversation(conversation, NPC, Spawn, "A rememberance necklace! Oh, it's just gorgeous. I must send him my thanks.  Sigh... I suppose sometimes the wisdom of children is overlooked by the ways of the elders. I will give this Amoora a chance. Tell Ferink he has my blessing.")
end




function respawn(NPC)
	spawn(NPC)
end

