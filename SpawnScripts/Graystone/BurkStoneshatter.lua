--[[
	Script Name	: SpawnScripts/Graystone/BurkStoneshatter.lua
	Script Purpose	: Burk Stoneshatter <Barbarian Mentor>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

-- Race ID's
local BARBARIAN = 0

-- Quest ID's
local ATIMEFORFIGHTING = 289
local LATESHIPMENT = 290
local IN_THE_DRINK = 291
local VISITING_A_FRIEND = 292

-- Item ID's
local OVERFLOW_MANIFEST = 10268

function spawn(NPC)
	ProvidesQuest(NPC, ATIMEFORFIGHTING)
	ProvidesQuest(NPC, LATESHIPMENT)
	ProvidesQuest(NPC, VISITING_A_FRIEND)
end

function hailed(NPC, Spawn)
	if GetRace(Spawn) == BARBARIAN then
		Begin(NPC, Spawn)
	else
		NotBarbarian(NPC, Spawn)
	end
end

function NotBarbarian(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quest_burk_stoneshatter_notdwarf_20893785.mp3", "I'm rather busy and cannot speak. Sorry.", "", 1027180785, 1173518799, Spawn)
end

function Begin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, ATIMEFORFIGHTING) then
		if HasCompletedQuest(Spawn, LATESHIPMENT) then
			if HasCompletedQuest(Spawn, IN_THE_DRINK) then
				if HasCompletedQuest(Spawn, VISITING_A_FRIEND) then
					SpokenToJornYet(NPC, Spawn, conversation)
				elseif HasQuest(Spawn, VISITING_A_FRIEND) then
					SpokenToJornYet(NPC, Spawn, conversation)
				else
					FoundPackageYet(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, IN_THE_DRINK) then
				FoundPackageYet(NPC, Spawn, conversation)
			else
				FoundPackageYet(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, LATESHIPMENT) then
			FoundPackageYet(NPC, Spawn, conversation)
		else
			HowDidFightsGo(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, ATIMEFORFIGHTING) then
		HowDidFightsGo(NPC, Spawn, conversation)
	else
		AhGoodToSeeYou(NPC, Spawn, conversation)
	end
end


--------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------

function AhGoodToSeeYou(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter001.mp3", "", "", 956434892, 1407762002, Spawn)
	AddConversationOption(conversation, "Have we met before?", "MetBefore")
	StartConversation(conversation, NPC, Spawn, "Ah, good to see you!")
end

function MetBefore(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
	
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter002.mp3", "", "", 1814552755, 3267658415, Spawn)
   AddConversationOption(conversation, "What do we have in common?", "WhatInCommon")
   AddConversationOption(conversation, "Yes, we do.")
   StartConversation(conversation, NPC, Spawn, "Not that I recall, but I am fond of the drink, so it's possible. It don't matter none, though, we've got enough in common for me to strike up a conversation I'd say.")
end

function WhatInCommon(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
	
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter003.mp3", "", "", 1680260293, 3849292210)
   AddConversationOption(conversation, "How do they do that?", "KnowYourAncestors")
   StartConversation(conversation, NPC, Spawn, "Hah! A trickster, eh? If two barbarians don't have something in common, then surely more's gone wrong since The Shattering than we knew! Hah hah! Listen, you can still learn. Even the oldest who have forgotten their ancestors can get to know them before they pass.")
end

function KnowYourAncestors(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter005.mp3", "", "", 1709639983, 584600029)
   AddConversationOption(conversation, "What do you have for me to do?", "WhatToDo")
   AddConversationOption(conversation, "Who can I talk to if I'm looking for something a little more adventurous?", "MoreAdventurous")
   StartConversation(conversation, NPC, Spawn, "By immersing them in their past! Ah, how much can any barbarian know about themselves if they don't know their ancestors? Listen, you look like you know your ancestors rather well. I would hate to bore you, but at the same time I wouldn't mind helping ya out. I've got friends who you can talk to if you're looking for something a little more adventurous, otherwise I'm sure I could find something for you to do around here.")
end

function WhatToDo(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
	
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter007.mp3", "", "", 1329828482, 3458256530)
   AddConversationOption(conversation, "I am a proud barbarian, skin as hard as frost and wit as sharp as the wind.", "Continue")
   AddConversationOption(conversation, "I am a humble barbarian, docile yet fierce.", "Continue")
   AddConversationOption(conversation, "I am a young barbarian, I strike out on my own but miss the warmth of my family.", "Continue")
   AddConversationOption(conversation, "Who I am is not important for you to know.", "Continue")
   AddConversationOption(conversation, "I do not know who I am.", "Continue")
   StartConversation(conversation, NPC, Spawn, "Ah, that's refreshing to hear! So few barbarians these days care to take the time to think uh who they are. Tell me, who are you?")
end

function Continue(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
	
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter009.mp3", "", "", 662479869, 2366767034)
   AddConversationOption(conversation, "What must I do?", "WhatMustIDo")
   StartConversation(conversation, NPC, Spawn, "Hah! The answer doesn't matter so much, so long as you believe it. It can change, if need be, but it always needs to be present in some manner or another. How would you like to adjust, or further confirm, who you are?")
end

function WhatMustIDo(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
	
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter010.mp3", "", "", 3698329964, 3035411942)
   AddConversationOption(conversation, "I can do that.", "PickFights")
   StartConversation(conversation, NPC, Spawn, "War has always shown young soldiers who they were, and refined the ideas old soldiers had about themselves. I wish nothing so terrible or drastic for you. However, there is still much to be learned from fighting. I want you to speak with a few barbarians, and fight them. Don't worry, the guards understand this is how we sometimes do things. They may break up a fight but they won't arrest you or anything.")
end

function PickFights(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
	
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter011.mp3", "", "", 3946771118, 418263937)
   AddConversationOption(conversation, "Mention his feet, got it.", "MarusDonoval")
   StartConversation(conversation, NPC, Spawn, "I know you can. The first barbarian on my list is Marus Donoval. I'm certain he's in the tavern on the ground floor of the inn. To goad him into fighting, mention something about the smell of his feet. That always gets him on the offensive. Got that?")
end

function MarusDonoval(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
	
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter012.mp3", "", "", 1597660554, 3035248824)	
   AddConversationOption(conversation, "And who else?", "AngusFallowfur")
   StartConversation(conversation, NPC, Spawn, "Good. The next person I'd like you to fight is Angus Fallowfur. He usually hangs out just over there behind the armory, on the corner closest to the docks. Nothing gets him fired up more than someone mentioning his bald head, do that and you're sure to get him into a scuffle.")
end

function AngusFallowfur(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
	
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter013.mp3", "", "", 400499408, 1307209674)
   AddConversationOption(conversation, "Marus, Angus, and Dunda. I've got it.", "OfferQuest1")
   StartConversation(conversation, NPC, Spawn, "The last person I'd like you to fight is Dunda Frostgrip. Ooh she's a fiery one to begin with, you shouldn't have any trouble getting her into conflict. But, she has been holding back lately. Mention the name Mav Boilfist around her and that's sure to send her off the deep end. You can find her just southwest of the scribe's shop.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, ATIMEFORFIGHTING)
end

function HowDidFightsGo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter014.mp3", "", "", 1043759845, 3070231888)
   
	if (HasCompletedQuest(Spawn, ATIMEFORFIGHTING) and not HasCompletedQuest(Spawn, 16)) or (HasQuest(Spawn, ATIMEFORFIGHTING) and GetQuestStep(Spawn, ATIMEFORFIGHTING) == 4) then
		AddConversationOption(conversation, "Well enough, I suppose.", "NothingLikeGoodFight")
	end
	
	AddConversationOption(conversation, "I haven't fought everyone yet, I'll be back.")
	StartConversation(conversation, NPC, Spawn, "How did the fights go?")
end

-------------------------------------------------------------------------------------------------------
--            QUEST 2
-------------------------------------------------------------------------------------------------------

function NothingLikeGoodFight(NPC, Spawn)
	if HasQuest(Spawn, ATIMEFORFIGHTING) then
		SetStepComplete(Spawn, ATIMEFORFIGHTING, 4)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter015.mp3", "", "", 1895041228, 2828620978)
	AddConversationOption(conversation, "I agree.", "IAgree")
	StartConversation(conversation, NPC, Spawn, "Hah hah! Nothing like a good fight to help remind you where your place is.")
end

function IAgree(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter016.mp3", "", "", 2170972985, 2218518568)
   AddConversationOption(conversation, "Sure, what can I do?", "WhatCanIDo")
   StartConversation(conversation, NPC, Spawn, "Listen, I like you. I don't want to send you off just yet. How would you like to help me settle a problem I've encountered?")
end

function WhatCanIDo(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter017.mp3", "", "", 792026774, 3751432598)
   AddConversationOption(conversation, "Do you want me to fight him, too?", "OfferQuest2")
   StartConversation(conversation, NPC, Spawn, "I've got this package I've been waiting for. It hasn't been delivered yet, but I know it's arrived in Graystone Yard. Do me a favor and go find the Graystone Courier and ask him why he hasn't delivered my package yet.  It's shipment GG4QC. Here, take this overflow manifest. You'll be able to find the Graystone Courier at one of those locations.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, LATESHIPMENT)
end

function FoundPackageYet(NPC, Spawn, conversation)
	if HasQuest(Spawn, LATESHIPMENT) then
		AddConversationOption(conversation, "I need another copy of the Overflow Manifset.", "NeedManifest")
	end
	
	if (HasCompletedQuest(Spawn, IN_THE_DRINK) and not HasCompletedQuest(Spawn, VISITING_A_FRIEND)) or (HasQuest(Spawn, IN_THE_DRINK) and GetQuestStep(Spawn, IN_THE_DRINK) == 5) then
		AddConversationOption(conversation, "Yes. It turns out it had fallen in the water.", "YesFellInWater")
	end

	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you found my package yet?")
end

function NeedManifest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		
	if not HasItem(Spawn, OVERFLOW_MANIFEST, 1) then
		-- Overflow Manifest
		SummonItem(Spawn, OVERFLOW_MANIFEST, 1)

		AddConversationOption(conversation, "Thanks!")
		StartConversation(conversation, NPC, Spawn, "Here ya go.")
	else
		AddConversationOption(conversation, "Thanks!")
		StartConversation(conversation, NPC, Spawn, "I am certain I already gave it to ya. Make sure you check all your bags, and even the bank.")
	end
end

-------------------------------------------------------------------------------------------------------
--            QUEST 3
-------------------------------------------------------------------------------------------------------

function YesFellInWater(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter020.mp3", "", "", 1785241961, 3949656366, Spawn)
	AddConversationOption(conversation, "It looks like it made it out all right. The crate looks to have been sealed, I had to swim down and hook up buoys so the Shipping Coordinator could pull them out. Here you go.", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "Oh no! That's horrible!")
end

function dlg_26_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter021.mp3", "", "", 578124127, 1198637395, Spawn)
	AddConversationOption(conversation, "Oh?", "dlg_26_3")
	StartConversation(conversation, NPC, Spawn, "Oh, that's great news. Thanks. Oh, um, this isn't all mine. I think this was meant for you.")
end

function dlg_26_3(NPC, Spawn)
	if HasQuest(Spawn, IN_THE_DRINK) then
		SetStepComplete(Spawn, IN_THE_DRINK, 5)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter022.mp3", "", "", 279289992, 1880878619, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg_26_4")
	StartConversation(conversation, NPC, Spawn, "Yeah, probably the Shipping Coordinator's way of saying thank you. Here ya go.")
end

----------------------------------------------------------------------------------------------------
--						QUEST 4
----------------------------------------------------------------------------------------------------

function dlg_26_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter023.mp3", "", "", 2560698253, 1098321894, Spawn)
	AddConversationOption(conversation, "What was it?", "dlg_26_5")
	StartConversation(conversation, NPC, Spawn, "No, thank you. This shipment was very important.")
end

function dlg_26_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter024.mp3", "", "", 2054544634, 3839064950, Spawn)
	AddConversationOption(conversation, "Why did your friend send it to you?", "dlg_26_12")
	StartConversation(conversation, NPC, Spawn, "An old Halasian weaving. A friend of mine found it on an island off the coast of Everfrost, amazingly intact. It details a family's past.")
end

function dlg_26_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter025.mp3", "", "", 360206196, 193916319, Spawn)
	AddConversationOption(conversation, "That is very lucky.", "dlg_26_13")
	StartConversation(conversation, NPC, Spawn, "He recognized some of what was depicted on the weaving. Old wars between two clans, one clan father's disgrace in the public eye, and then his eventual redemption. These images... well, it would seem that this weaving may be from my family, ages ago. We did not have a weaving to show us the past, but we kept the story alive orally. A find like this is... well it's inspirational.")
end

function dlg_26_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter026.mp3", "", "", 3028697624, 1563266355, Spawn)
	AddConversationOption(conversation, "I understand completely.", "dlg_26_14")
	StartConversation(conversation, NPC, Spawn, "Luck or fate. I appreciate all your help, but this is something that I wish to look at right away. I don't know how much you know of your own family, but opportunities like this are sacred.")
end

function dlg_26_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter027.mp3", "", "", 467475685, 2498729045, Spawn)
	AddConversationOption(conversation, "I will find him.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "While I do this, you should speak with my friend, Jorn Sorefoot. You can probably find him in Oakmyst Forest. I have little doubt he can make use of you, help him like you helped me.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, VISITING_A_FRIEND)
end

function SpokenToJornYet(NPC, Spawn, conversation)
	if HasCompletedQuest(Spawn, VISITING_A_FRIEND) then
		AddConversationOption(conversation, "Yes, I have.", "SpokenWithJornYes")
	end
	
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you spoken with Jorn yet?")
end

function SpokenWithJornYes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm sure I can handle it.")
	StartConversation(conversation, NPC, Spawn, "Ah good, good. I hope he doesn't give ya too much trouble.")
end