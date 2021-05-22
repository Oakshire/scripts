--[[
    Script Name    : SpawnScripts/Commonlands/Jaharin.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 09:03:34
    Script Purpose : 
                   : 
--]]

local CantWeAllJustGetAlong = 448

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, CantWeAllJustGetAlong) ~= 1  then
	PlayFlavor(NPC, "", "Yes?...", "glare", 1689589577, 4560189)
	elseif GetQuestStep(Spawn, CantWeAllJustGetAlong) == 1 then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I have come to speak with you about Ferink.", "Option1")
	StartConversation(conversation, NPC, Spawn, "What are you doing in here?")
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



function respawn(NPC)
	spawn(NPC)
end

