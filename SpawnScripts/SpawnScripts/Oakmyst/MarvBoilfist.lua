--[[
	Script Name	: SpawnScripts/Oakmyst/MarvBoilfist.lua
	Script Purpose	: Marv Boilfist
	Script Author	: Scatman
	Script Date	: 2009.10.07
	Script Notes	: 
--]]

local DWARF = 2
local DWARF_MENTOR_QUEST_FROM_MAV = 288 --	A Missing Husband
local QUEST_1 = 526  --Booze in the Drink
local QUEST_LAST_IN_OAKMYST = 211  --	Clean up

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, DWARF_MENTOR_QUEST_FROM_MAV) then
		SetStepComplete(Spawn, DWARF_MENTOR_QUEST_FROM_MAV, 1)
		AddConversationOption(conversation, "Mav sent me to check up on you.", "Mav")
	end
 
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_LAST_IN_OAKMYST) then
			Say(NPC, "I heard ya created quite a stir, good job to you.", Spawn)
		else
			Say(NPC, "Thanks again for your help.", Spawn)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == DWARF then
			IfItIsntOneThing(NPC, Spawn, conversation)
		else
			NotDwarf(NPC, Spawn)
		end
	end
end

function respawn(NPC)
	spawn(NPC)
end

function NotDwarf(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marv_boilfist/qey_adv01_oakmyst_revamp/qst_marv_notonquest_1cfb7ccc.mp3", "Come back when you're a dwarf, maybe we'll chat some! Har har har!", "", 2659151540, 1499434670, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marv_boilfist/qey_adv01_oakmyst_revamp/qst_marv_notonquest_12fcbc1c.mp3", "Everyone else seems to think this place is so exciting, not me though.", "", 2722242117, 3678566567, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marv_boilfist/qey_adv01_oakmyst_revamp/qst_marv_notonquest_8a49edfc.mp3", "If you're headin' to Graystone Yard, tell Mav I'm not drinking... yet!", "", 796198495, 1984404688, Spawn)
	end
end

----------------------------------------------------------------------------------------------
--						DWARF_MENTOR_QUEST_FROM_MAV
----------------------------------------------------------------------------------------------

function Mav(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "Sure I can help.", "ICanHelp")
		AddConversationOption(conversation, "Sorry, not right now.")
		StartConversation(conversation, NPC, Spawn, "Hah, that means she thinks I'm either in trouble or drunk. Lucky for me, it's not the latter. I'm glad you showed up, how would you like to help me?")
	else
		AddConversationOption(conversation, "Sure.")
		StartConversation(conversation, NPC, Spawn, "Hah, that means she thinks I'm either in trouble or drunk. Lucky for me, it's not the latter. Would ya let her know for me?")
	end
end

----------------------------------------------------------------------------------------------
--						QUEST 1
----------------------------------------------------------------------------------------------

function IfItIsntOneThing(NPC, Spawn, conversation)
	AddConversationOption(conversation, "What's wrong with today?", "WrongToday")
	StartConversation(conversation, NPC, Spawn, "If it isn't one thing, it's another. Have you ever had one of those bad days?")
end

function WrongToday(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sure I can help.", "ICanHelp")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Enough things have gone wrong that I'm considerin' cuttin' my losses and goin' home. If you're every in a position to cut your losses--and it sounds appealing--then you know you're havin' a bad day. I'm at my wit's end! Any chance I could get some help from ya?")
end


function ICanHelp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do to help?", "WhatCanIDo")
	StartConversation(conversation, NPC, Spawn, "That's the first good news I've had all day. I've been waitin' here for word from the courier who dropped off these barrels. He first brought me the wonderful news that my shipment had been dumped in the water here in Oakmyst. So he brought me a partial shipment, a lotta good that does me. He takes off without a second thought, I told him to get someone to come help me but I don't think he remembered. So I'm sittin' here, can't move this shipment without the rest of it, unless I wanna waste a lot of moving fees. And I can't leave this shipment here unless I wanna risk it gettin' stolen.")
end

function WhatCanIDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "You can get the rest of the shipment for me. It's in the drink right now. If you head west you'll get to the docks. Once you're there hop on in and start pulling up the shipment. Once you've collected it you can bring it back to me.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) <= 2 then
		if GetQuestStep(Spawn, QUEST_1) == 2 then
			AddConversationOption(conversation, "Yes I did, here you go.", "YesIDid")
		else
			AddConversationOption(conversation, "Not yet.")
		end
		StartConversation(conversation, NPC, Spawn, "Did ya get my shipment?")
	else
		Say(NPC, "You should take the Blackburrow Stout to Lieutenant Charlin sooner rather than later.", Spawn)
	end
end

function YesIDid(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I should take it back.", "ShouldTakeItBack")
	StartConversation(conversation, NPC, Spawn, "Ah, great! Thank you so much- er, wait a minute. This is my shipment but looks like you snagged part of someone else's shipment too.")
end

function ShouldTakeItBack(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	-- blackburrow stout
	if not HasItem(Spawn, 3774) then
		SummonItem(Spawn, 3774, 1)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks and you're welcome.")
	StartConversation(conversation, NPC, Spawn, "Not so fast. This is Blackburrow Stout, which is more than a little odd. You don't need to take this back to the docks, you should take it to the Qeynos Guard. Speak with Lieutenant Charlin, he'll let you know what to do next. Good find, " .. GetName(Spawn) .. "! And thanks for gettin' my shipment.")
end