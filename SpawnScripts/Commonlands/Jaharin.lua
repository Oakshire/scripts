--[[
    Script Name    : SpawnScripts/Commonlands/Jaharin.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 09:03:34
    Script Purpose : 
                   : 
--]]

local CantWeAllJustGetAlong = 448
local AHardManToPlease = 450

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, CantWeAllJustGetAlong) == 1 then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I have come to speak with you about Ferink.", "Option1")
	StartConversation(conversation, NPC, Spawn, "What are you doing in here?")
	elseif GetQuestStep(Spawn, AHardManToPlease) == 2 then
	Option4(NPC, Spawn)
	else
    PlayFlavor(NPC, "", "Yes?...", "glare", 1689589577, 4560189)
end
   end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "But they love each other. Can't you see how unhappy she is without him?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Ferink? Oh you mean the rat? Don't bother. Amoora needs a proper feline fellow, not some ... snack.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "She seems to disagree. What can I do to convince you of the truth?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Love? Bah, I care not for the feelings of some mouse. Amoora will get over it.")
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, CantWeAllJustGetAlong, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Fine, fine. This isn't over, though.")
	StartConversation(conversation, NPC, Spawn, "The truth? The truth is my patience is at an end. Leave my home before I need to get... nasty.")
end


function Option4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "I barely did anything at all. It was mostly Ferink.", "Option5")
	StartConversation(conversation, NPC, Spawn, "Such a battle! We were barely able to hold them off the north hut. I saw what you did for us.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I would say you are in both of our debts, wouldn't you?", "Option6")
	StartConversation(conversation, NPC, Spawn, "You are too modest a warrior. We are in your debt.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "And what else do you suppose?", "Option7")
	StartConversation(conversation, NPC, Spawn, "Yes, yes... I suppose so.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Exactly! So you are going to get out of their way then?", "Option8")
	StartConversation(conversation, NPC, Spawn, "Well, I suppose that if he does care for Amoora enough to risk his scrawny little neck for us, then he can't be all bad.")
end

function Option8(NPC, Spawn)
    SetStepComplete(Spawn, AHardManToPlease, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "He will be greatly pleased. Thank you, Jaharin.")
	StartConversation(conversation, NPC, Spawn, "Of course, go tell the rat... er... Ferink that he is welcome to feast this evening... Oh, and it won't be rat on the menu...")
end




function respawn(NPC)
	spawn(NPC)
end

