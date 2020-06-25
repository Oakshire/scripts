--[[
	Script Name	: SpawnScripts/Graystone/ShippingCoordinatorHando.lua
	Script Purpose	: Shipping Coordinator Hando 
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

-- Quest ID's
local DWARF_MENTOR_QUEST_3 = 286
local LATESHIPMENT = 290
local INTHEDRINK = 291

-- Item ID's
local LOCATION_BUOYS = 9109

function spawn(NPC)
	ProvidesQuest(NPC, INTHEDRINK)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	GenericHail(NPC, Spawn)
	
	if HasCompletedQuest(Spawn, LATESHIPMENT) then
		if HasCompletedQuest(Spawn, INTHEDRINK) then
			GreatJobOnBuoys(NPC, Spawn, conversation)
		elseif HasQuest(Spawn, INTHEDRINK) then
			if GetQuestStep(Spawn, INTHEDRINK) >= 1 and GetQuestStep(Spawn, INTHEDRINK) <= 3 then
				DoesntLookAllConnectedYet(NPC, Spawn, conversation)
			else
				GreatJobOnBuoys(NPC, Spawn, conversation)
			end
		else
			WhatDidMarusSay(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, LATESHIPMENT) then
		if GetQuestStep(Spawn, LATESHIPMENT) == 3 then
			BusyWithQuest(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, LATESHIPMENT) == 4 or GetQuestStep(Spawn, LATESHIPMENT) == 5 then
			FindWhatYouNeeded(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, LATESHIPMENT) >= 6 then
			WhatDidMarusSay(NPC, Spawn, conversation)
		else
			Say(NPC, "Kind of busy at the moment, sorry.", Spawn)
		end
	elseif HasQuest(Spawn, DWARF_MENTOR_QUEST_3) and GetQuestStep(Spawn, DWARF_MENTOR_QUEST_3) <= 3 then
		OnDwarfMentorQuest3(NPC, Spawn, conversation)
	else
		Say(NPC, "Kind of busy at the moment, sorry.", Spawn)
	end
end

------------------------------------------------------------------------------------------------------------
--							BARBARIAN MENTOR QUEST
------------------------------------------------------------------------------------------------------------

function BusyWithQuest(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I need to talk to you about a missing package for Burk Stoneshatter.", "dlg_16_1")
	StartConversation(conversation, NPC, Spawn, "Listen, I'm sure sitting around chewing the fat with you is a great way to pass the time, but I'm busy here and can't be bothered with small talk.")
end

function FindWhatYouNeeded(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, LATESHIPMENT) == 5 then
		AddConversationOption(conversation, "No, it's not in the shipments on the dock.", "dlg_18_1")
	end
	
	AddConversationOption(conversation, "I haven't looked yet.")
	StartConversation(conversation, NPC, Spawn, "Did you find what you needed?")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Shipment GG4QC isn't listed on your overflow manifest, and it hasn't been delivered yet.", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "Burk, eh? What's he need?")
end

function dlg_16_2(NPC, Spawn)
	SetStepComplete(Spawn, LATESHIPMENT, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Yeah, all new packages will be on the docks until we can move em. Go check the crates at the end of the docks and these here. I'm sure you'll find what you're looking for. Right now there are 13 crates and barrels on the docks to check in. Bring it to me once you've found it.")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "The shipment number was GG4QC.", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "What shipment number was it again?")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm positive it wasn't on the docks.", "dlg_18_3")
	StartConversation(conversation, NPC, Spawn, "Hmm. According to the charts that was unloaded but never sent into overflow... and never delivered. If it's not at the end of the docks then something is wrong.")
end

function dlg_18_3(NPC, Spawn)
	SetStepComplete(Spawn, LATESHIPMENT, 5)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right, I'll speak to him.")
	StartConversation(conversation, NPC, Spawn, "I believe you. You're going to need to talk to the dock loader. You would never think it, looking at him, but he's got a great mind for remembering numbers. He'll tell you whether or not the packages were unloaded. His name is Marus Donoval, you can find him in the tavern, on the ground floor of the inn.")
end

function WhatDidMarusSay(NPC, Spawn, conversation)
	if (HasCompletedQuest(Spawn, LATESHIPMENT) and not HasCompletedQuest(Spawn, INTHEDRINK)) or (HasQuest(Spawn, LATESHIPMENT) and GetQuestStep(Spawn, LATESHIPMENT) == 7) then
		AddConversationOption(conversation, "He said the shipment was off-loaded. He says it's possible it may have fallen in the water.", "dlg_21_1")
	end
	
	AddConversationOption(conversation, "I haven't talked to him yet.")
	StartConversation(conversation, NPC, Spawn, "What did Marus have to say?")
end

function dlg_21_1(NPC, Spawn)
	if HasQuest(Spawn, LATESHIPMENT) then
		SetStepComplete(Spawn, LATESHIPMENT, 7)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "No...", "dlg_21_2")
	AddConversationOption(conversation, "Yes, I am, actually. Sorry.")
	StartConversation(conversation, NPC, Spawn, "It's starting to look that way, unfortunately. Listen, you aren't afraid of the water, are you?")
end

------------------------------------------------------------------------------------------------
--				QUEST 3
------------------------------------------------------------------------------------------------

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, I can do that.", "dlg_21_3")
	AddConversationOption(conversation, "Not a chance.")
	StartConversation(conversation, NPC, Spawn, "The shipment must be down there, somewhere. How would you like to help us retrieve it?")
end

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right!", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "Great! Here, take these location buoys. Swim down into the water and find the missing shipment crates, there were three of them. Attach a location buoy to each crate, then swim back here while we pull them out.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, INTHEDRINK)
end

function DoesntLookAllConnectedYet(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I need more location buoys.", "MoreBuoys")
	StartConversation(conversation, NPC, Spawn, "It doesn't look like they're all connected yet, come back when that's done.")
end

function MoreBuoys(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Location Buoys
	if HasItem(Spawn, LOCATION_BUOYS, 1) then
		AddConversationOption(conversation, "All right.")
		StartConversation(conversation, NPC, Spawn, "It looks like you've already got them. Check your bags, maybe even your bank.")
	else
		SummonItem(Spawn, LOCATION_BUOYS, 1)
		AddConversationOption(conversation, "Thanks.")
		StartConversation(conversation, NPC, Spawn, "Sure, here you go.")
	end
end

function GreatJobOnBuoys(NPC, Spawn, conversation)
	if HasQuest(Spawn, INTHEDRINK) and GetQuestStep(Spawn, INTHEDRINK) == 4 then
		AddConversationOption(conversation, "Thanks.", "dlg_25_1")
	else
		AddConversationOption(conversation, "Thanks.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Hey, great job with those buoys.")
end

function dlg_25_1(NPC, Spawn)
	SetStepComplete(Spawn, INTHEDRINK, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Great, thank you.", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "We've already pulled up the first package. Burk's shipment was inside. Here, you can take it to him.")
end

function dlg_25_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "No, thank you. You've been very helpful. We're so backlogged around here we may have not known about the missing shipment for weeks. Some of the cargo was still ruined, but we saved a lot more than we would have been able to, thanks to you. I really appreciate it.")
end

------------------------------------------------------------------------------------------------------------
--							DWARF MENTOR QUEST
------------------------------------------------------------------------------------------------------------

function OnDwarfMentorQuest3(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, DWARF_MENTOR_QUEST_3) == 1 then
		AddConversationOption(conversation, "I'm here to pick up a package for Mav Boilfist.", "dlg_22_1")
		StartConversation(conversation, NPC, Spawn, "Interruption after interruption! What do you want?")
	else
		if GetQuestStep(Spawn, DWARF_MENTOR_QUEST_3) == 3 then
			AddConversationOption(conversation, "Yes. It's right here.", "dlg_29_1")
		end
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Did you find it?")
	end
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It should have just arrived. It's a package from the Baubbleshire.", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "Arg! Her packages are backlogged already, what do you need?")
end

function dlg_22_2(NPC, Spawn)
	SetStepComplete(Spawn, DWARF_MENTOR_QUEST_3, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right, thank you.")
	StartConversation(conversation, NPC, Spawn, "Newly arrived packages are at the end of the dock. Go check there. Bring it to me if you find it.")
end

function dlg_29_1(NPC, Spawn)
	SetStepComplete(Spawn, DWARF_MENTOR_QUEST_3, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "That is okay, and thank you.")
	StartConversation(conversation, NPC, Spawn, "All right, this all seems to be in order. Sorry for snapping at you, it's been a busy week.")
end