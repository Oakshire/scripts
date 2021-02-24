--[[
    Script Name    : SpawnScripts/Commonlands/TaskmastersAssistantKozma.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.23 10:02:54
    Script Purpose : 
                   : 
--]]

local FarSeasRequisitionWC124 = 5212

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    
	AddConversationOption(conversation, "What requisition?", "Option1")
	AddConversationOption(conversation, "I have requisition # WC 124", "WC124")
	AddConversationOption(conversation, "Then I'll leave.")
	StartConversation(conversation, NPC, Spawn, "Where's your requisition? Only those who filled requisitions should speak to me.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can be a huntsman.", "Option2")
	AddConversationOption(conversation, "Thanks for the heads up.")
	StartConversation(conversation, NPC, Spawn, "Why are you wasting my time? The Far Seas Trading Company pays huntsmen to track down various items and beasts. Sometimes the huntsmen inadvertently feed the beasts and never return. Too bad ... for them.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I got it, thanks.")
	StartConversation(conversation, NPC, Spawn, "No! No, no, no! We have plenty of huntsmen!  No more huntsmen! And that means you!  Okay?  Got it?  ... That is, unless of course, you happen to find an unfilled order. Get it?")
end

function WC124(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	SetStepComplete(Spawn, FarSeasRequisitionWC124, 2)
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "Lets me see ... Yes, yes! Here we are. This order is overdue, and the Far Seas Trading Company never pays full price for late orders. Consider yourself lucky that you get paid at all.  Thank you, come again.")
end


function respawn(NPC)

end

