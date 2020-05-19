--[[
	Script Name	: SpawnScripts/Nettleville/JohfritGythell.lua
	Script Purpose	: Johfrit Gythell 
	Script Author	: Scatman
	Script Date	: 2008.10.08
	Script Notes	: 
--]]

local QUEST_3_FROM_HELAIN = 297
local QUEST_4 = 298
local QUEST_5 = 299

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_3_FROM_HELAIN) then
		if HasCompletedQuest(Spawn, QUEST_4) then
			if HasCompletedQuest(Spawn, QUEST_5) then
				OnQuest5(NPC, Spawn, conversation)
			elseif HasQuest(Spawn, QUEST_5) then
				OnQuest5(NPC, Spawn, conversation)
			else
				DoNotGoYet(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_4) then
			OnQuest4(NPC, Spawn, conversation)
		else
			GoodDayThere(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_3_FROM_HELAIN) and GetQuestStep(Spawn, QUEST_3_FROM_HELAIN) == 5 then
		GoodDayThere(NPC, Spawn, conversation)
	else
		Hello(NPC, Spawn, conversation)
	end
end

function Hello(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell012.mp3", "", "", 1490365584, 959312393, Spawn)
	AddConversationOption(conversation, "And to you!")
	StartConversation(conversation, NPC, Spawn, "Hello!  I hope your day is rewarding for you.")
end

---------------------------------------------------------------------------------------------------------------------
--						QUEST_3_FROM_HELAIN
---------------------------------------------------------------------------------------------------------------------

function GoodDayThere(NPC, Spawn, conversation)
	if HasQuest(Spawn, QUEST_3_FROM_HELAIN) then
		SetStepComplete(Spawn, QUEST_3_FROM_HELAIN, 5)
	end
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell001.mp3", "", "", 1758157346, 514238757, Spawn)
	AddConversationOption(conversation, "Hello!  I don't suppose you have some work for me?  Laudine Shardalow thought you could use a hand.", "dlg_24_1")
	StartConversation(conversation, NPC, Spawn, "Good day, there!")
end

---------------------------------------------------------------------------------------------------------------------
--						QUEST_4
---------------------------------------------------------------------------------------------------------------------

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell002.mp3", "", "", 1726989098, 3535948978, Spawn)
	AddConversationOption(conversation, "Items others can't get for them?", "dlg_24_2")
	StartConversation(conversation, NPC, Spawn, "Right she is.  See, I am a supplier of goods to some discerning citizens of this village.  They have particular tastes for food, and items that I can procure for them.")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell003.mp3", "", "", 480639092, 2881648434, Spawn)
	AddConversationOption(conversation, "Why did they not just dive and get them?", "dlg_24_3")
	AddConversationOption(conversation, "Why do you not just dive to get them?", "dlg_26_3")
	StartConversation(conversation, NPC, Spawn, "Or just that I can get it for them at a  lower price.  Two items of my latest delivery fell in the water at the Mariner's Bell.  My, uh err suppliers had slipped, and into the drink they went.")
end

function dlg_26_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell015.mp3", "", "", 3831285850, 3765154825, Spawn)
	AddConversationOption(conversation, "You wish me to dive and get the items?", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "I cannot swim.  What?  Don't look at me like that!")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell004.mp3", "", "", 4017622450, 3148551148, Spawn)
	AddConversationOption(conversation, "You wish me to dive and get the items?", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "To make my life difficult, I suspect.  At any rate, they were not paid, as they did not complete the task.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_4) < 3 then
		AddConversationOption(conversation, "Not yet but I will return with them.")
		StartConversation(conversation, NPC, Spawn, "Have you both the crate and barrel?")
	elseif GetQuestStep(Spawn, QUEST_4) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell006.mp3", "", "", 2494699442, 3684194756, Spawn)
		AddConversationOption(conversation, "I have, and I will be happy to part with this slimy and stinky box.", "dlg_28_1")
		StartConversation(conversation, NPC, Spawn, "You have returned, and from the smell of it you have the items!")
	elseif GetQuestStep(Spawn, QUEST_4) < 6 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell019.mp3", "", "", 1714492080, 3648364049, Spawn)
		AddConversationOption(conversation, "Not yet.  The stench of the deliveries must be affecting my focus.  I will be back.")
		StartConversation(conversation, NPC, Spawn, "Have you given the goods to both Amazu and Laudine, yet?")
	elseif GetQuestStep(Spawn, QUEST_4) == 6 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell009.mp3", "", "", 2512367033, 2556387767, Spawn)
		AddConversationOption(conversation, "I do.", "dlg_33_2")
		AddConversationOption(conversation, "Maybe, but what stops me from running off with it?", "dlg_33_1")
		StartConversation(conversation, NPC, Spawn, "You have the money from Laudine and Amazu?")
	end
end

function dlg_28_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell007.mp3", "", "", 3213668997, 2423736455, Spawn)
	AddConversationOption(conversation, "No wonder she knew you had work for me.", "dlg_28_2")
	StartConversation(conversation, NPC, Spawn, "Not so fast!  That is to be delivered to Amazu Kharliko.  He loves his imported squid.  The barrel is to be taken to Laudine Shardalow.")
end

function dlg_28_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell008.mp3", "", "", 2722964210, 4250092190, Spawn)
	AddConversationOption(conversation, "I'll be back shortly.", "dlg_28_3")
	StartConversation(conversation, NPC, Spawn, "Ah, yes.  Laudine has been waiting for that barrel for some time.")
end

function dlg_28_3(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell018.mp3", "", "", 1724182606, 1946010139, Spawn)
	AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, NPC, Spawn, "And be sure to get paid by each, otherwise I will not have money to give you.")
end

function dlg_33_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell020.mp3", "", "", 1446803867, 734215460, Spawn)
	AddConversationOption(conversation, "Makes sense.", "DoNotGoYet")
	StartConversation(conversation, NPC, Spawn, "The guards that I will send after you for smuggling goods.")
end

function dlg_33_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 6)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell010.mp3", "", "", 686711043, 844320139, Spawn)
	AddConversationOption(conversation, "Thanks.", "DoNotGoYet")
	StartConversation(conversation, NPC, Spawn, "Great!  Here's the payment, as I promised, and another item that you may find useful.")
end

---------------------------------------------------------------------------------------------------------------------
--						QUEST_5
---------------------------------------------------------------------------------------------------------------------

function DoNotGoYet(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell013.mp3", "", "", 4074891808, 4030820524, Spawn)
	AddConversationOption(conversation, "Keep talking.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "Do not go yet!  I uh, may not have more for you to do, but I know of others that can use one of your talents.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function OnQuest5(NPC, Spawn, conversation)
	AddConversationOption(conversation, "All right, thank you anyway.")
	StartConversation(conversation, NPC, Spawn, "Oh hello there, again! I wish I had more work for you, but nothing so far.")
end