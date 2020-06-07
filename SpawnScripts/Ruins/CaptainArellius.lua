--[[
	Script Name	: SpawnScripts/TheRuins/CaptainArellius.lua
	Script Purpose	: Captain Arellius <Freeport Militia>
	Script Author	: jakejp
	Script Date	: 2018.09.30 // Finished 2018.12.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QuestFromSprawl = 543
local QuestFromGraveyard
local QuestFromSunkenCity

local First_ReportingForDuty = 368
local Fifth_RequestingFurtherOrders = 372
local Sixth_SteppingUptheOffensive = 373
local Tenth_FileAFinalReport = 395
local Eleventh_AJourneyOutsideTheCity = 396

function spawn(NPC)
	ProvidesQuest(NPC, First_ReportingForDuty)
	ProvidesQuest(NPC, Sixth_SteppingUptheOffensive)
	ProvidesQuest(NPC, Eleventh_AJourneyOutsideTheCity)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,3)
	
	if HasQuest(Spawn, QuestFromGraveyard) or HasQuest(Spawn, QuestFromSprawl) or HasQuest(Spawn, QuestFromSunkenCity) then
		if HasQuest(Spawn, QuestFromGraveyard) then
			SetStepComplete(Spawn, QuestFromGraveyard, 1)
			if not HasCompletedQuest(Spawn, First_ReportingForDuty) and not HasQuest(Spawn, First_ReportingForDuty) then
				AddConversationOption(conversation, "My name is .. GetName(Spawn) .. . Custodian Zaddar in the Graveyard sent me.", "dlg_0_1")
			end
		elseif HasQuest(Spawn, QuestFromSprawl) then 
			SetStepComplete(Spawn, QuestFromSprawl, 1)
			if not HasCompletedQuest(Spawn, First_) and not HasQuest(Spawn, First_) then
				AddConversationOption(conversation, "My name is .. GetName(Spawn) .. . Custodian Zaddar in the Graveyard sent me.", "dlg_0_1")
			end
		elseif HasQuest(Spawn, QuestFromSunkenCity) then
			SetStepComplete(Spawn, QuestFromSunkenCity, 1)
			if not HasCompletedQuest(Spawn, First_) and not HasQuest(Spawn, First_) then
				AddConversationOption(conversation, "My name is .. GetName(Spawn) .. . Custodian Zaddar in the Graveyard sent me.", "dlg_0_1")
			end
		end
		
		if not HasCompletedQuest(Spawn, First_ReportingForDuty) and not HasQuest(Spawn, First_ReportingForDuty) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius001.mp3", "", "", 3910993894, 659100358, Spawn)
			AddConversationOption(conversation, "It sounds like you need a hand. How can I help?")
			AddConversationOption(conversation, "Your conflict is none of my concern.")
			StartConversation(conversation, NPC, Spawn, "Stand your ground! I will defend Freeport to my dying breath! Are you friend or foe?")
			else
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/quest_captain_arellius_callout_257dc2e4.mp3", "To arms! The Ruins must be defended against these mindless brutes!", "brandish", 2691467763, 3825315561, Spawn)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/quest_captain_arellius_callout_5b6ad828.mp3", "The Freeport Militia will make a stand against these orcs!", "threaten", 3371139514, 3350465604, Spawn)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/quest_captain_arellius_callout_6af9e361.mp3", "We must avenge the fallen of Shoreside!", "brandish", 352522731, 4132511279, Spawn)
				end
		end
	end	
	
	if not HasCompletedQuest (Spawn, First_ReportingForDuty) then
		if HasQuest(Spawn, First_ReportingForDuty) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius019.mp3", "", "", 79133986, 324326874, Spawn)
			AddConversationOption(conversation, "Not yet, Captain.", "dlg_1_14")
			StartConversation(conversation, NPC, Spawn, "Have you completed your assignments for Lieutenant Argosian at the first outpost?")
		elseif CanReceiveQuest(Spawn, First_ReportingForDuty) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius001.mp3", "", "", 3910993894, 659100358, Spawn)
			AddConversationOption(conversation, "It sounds like you need a hand. How can I help?", "dlg_1_1")
			AddConversationOption(conversation, "Your conflict is none of my concern.")
			StartConversation(conversation, NPC, Spawn, "Stand your ground! I will defend Freeport to my dying breath! Are you friend or foe?")
		end
	elseif not CanReceiveQuest(Spawn, Sixth_SteppingUptheOffensive) and not HasCompletedQuest(Spawn, Fifth_RequestingFurtherOrders) then 
		if HasQuest(Spawn, Fifth_RequestingFurtherOrders) then 
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius019.mp3", "", "", 79133986, 324326874, Spawn)
			AddConversationOption(conversation, "I completed a number of tasks for the lieutenant. He sent me back to you to receive further orders.", "dlg_2_0")
			AddConversationOption(conversation, "Not yet, Captain.")
			StartConversation(conversation, NPC, Spawn, "Have you completed your assignments for Lieutenant Argosian at the first outpost?")
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius019.mp3", "", "", 79133986, 324326874, Spawn)
			AddConversationOption(conversation, "Not yet, Captain.")
			StartConversation(conversation, NPC, Spawn, "Have you completed your assignments for Lieutenant Argosian at the first outpost?")
		end
	elseif not HasCompletedQuest(Spawn, Sixth_SteppingUptheOffensive) then 
		if CanReceiveQuest(Spawn, Sixth_SteppingUptheOffensive) then -- probably need to look this over again tbh
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius019.mp3", "", "", 79133986, 324326874, Spawn)
			AddConversationOption(conversation, "I completed a number of tasks for the lieutenant. He sent me back to you to receive further orders.", "dlg_2_0")
			AddConversationOption(conversation, "Not yet, Captain.")
			StartConversation(conversation, NPC, Spawn, "Have you completed your assignments for Lieutenant Argosian at the first outpost?")
		elseif HasQuest(Spawn, Sixth_SteppingUptheOffensive) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius029.mp3", "", "", 2327537314, 879285291, Spawn)
			AddConversationOption(conversation, "Not yet.")
			StartConversation(conversation, NPC, Spawn, "Have you finished your assignments given by Lieutenant Imperidus at the second outpost?")
		end
	elseif not CanReceiveQuest(Spawn, Eleventh_AJourneyOutsideTheCity) and not HasCompletedQuest(Spawn, Tenth_FileAFinalReport) then 
		if HasQuest(Spawn, Tenth_FileAFinalReport) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius029.mp3", "", "", 2327537314, 879285291, Spawn)
			AddConversationOption(conversation, "I helped the lieutenant investigate the Lonetusk orcs.", "dlg_40_1")
			AddConversationOption(conversation, "Not yet.")
			StartConversation(conversation, NPC, Spawn, "Have you finished your assignments given by Lieutenant Imperidus at the second outpost?")
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius029.mp3", "", "", 2327537314, 879285291, Spawn)
			AddConversationOption(conversation, "Not yet.")
			StartConversation(conversation, NPC, Spawn, "Have you finished your assignments given by Lieutenant Imperidus at the second outpost?")
		end
	elseif not HasCompletedQuest(Spawn, Eleventh_AJourneyOutsideTheCity) then
			Say(Spawn, "here")
		if HasQuest(Spawn, Eleventh_AJourneyOutsideTheCity) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius037.mp3", "", "", 1359197915, 2412521722, Spawn)
			AddConversationOption(conversation, "Be well, Captain.", "dlg_42_1")
			StartConversation(conversation, NPC, Spawn, "It is good to see you again,  .. GetName(Spawn) .. ! We are in your debt for helping uncover the source of the orc menace. Thanks to you, we are keeping the orcs at bay and I'm confident we will drive them out of the Ruins soon.")
		elseif CanReceiveQuest(Spawn, Eleventh_AJourneyOutsideTheCity) then
			dlg_40_3(NPC, Spawn)
		end 
	elseif HasCompletedQuest(Spawn, Tenth_FileAFinalReport) then
		Say(Spawn, "here")
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius037.mp3", "", "", 1359197915, 2412521722, Spawn)
		AddConversationOption(conversation, "Be well, Captain.", "dlg_42_1")
		StartConversation(conversation, NPC, Spawn, "It is good to see you again,  .. GetName(Spawn) .. ! We are in your debt for helping uncover the source of the orc menace. Thanks to you, we are keeping the orcs at bay and I'm confident we will drive them out of the Ruins soon.")
	end	
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius005.mp3", "", "", 1356974238, 3910566628, Spawn)
		AddConversationOption(conversation, "Orcs, really?", "dlg_0_2")
		AddConversationOption(conversation, "Where did the orcs come from?")
		AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "You've entered a war zone, citizen. The Freeport Militia is here in force to defend our city. Two orc clans seem to be working together in an attempt to take over the Ruins and use it as a staging ground to attack Freeport.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius005.mp3", "", "", 1356974238, 3910566628, Spawn)
	AddConversationOption(conversation, "Where did the orcs come from?", "dlg_1_2")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "You've entered a war zone, citizen. The Freeport Militia is here in force to defend our city. Two orc clans seem to be working together in an attempt to take over the Ruins and use it as a staging ground to attack Freeport.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius006.mp3", "", "", 1435383956, 2150191113, Spawn)
	AddConversationOption(conversation, "What are these tribes called?", "dlg_1_3")
	AddConversationOption(conversation, "I have no desire to mess around with orcs.")
	StartConversation(conversation, NPC, Spawn, "Both tribes have been lurking in the Ruins for some time, but they've never been this aggressive before. They seem to have become more organized and have obtained better weapons and armor.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius007.mp3", "", "", 803622320, 3191751364, Spawn)
		AddConversationOption(conversation, "Why is this place called the Ruins?", "dlg_1_4")
		AddConversationOption(conversation, "What work do you have for me?", "dlg_1_12")
		AddConversationOption(conversation, "I think I will take my leave.")
	StartConversation(conversation, NPC, Spawn, "The weaker of the two tribes is called the Brokentusk. The stronger clan is known as the Lonetusk. I don't know much about their background personally, but my lieutenants stationed in the field may have more information.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius008.mp3", "", "", 471952694, 1388761764, Spawn)
		AddConversationOption(conversation, "This place used to have grand houses and shops?", "dlg_1_5")
		AddConversationOption(conversation, "I don't want to hear any more.")
	StartConversation(conversation, NPC, Spawn, "Take a few steps inside the archway and you'll see why. This is an old section of Freeport that has long been abandoned. Its once stately manors and exclusive boutiques are now burned-out shells and broken walls.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius009.mp3", "", "", 2311879676, 4148126515, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_1_6")
		AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "Oh yes. What we now call the Ruins was once known as Shoreside, an expensive and very exclusive residential district. It was favored by the wealthy for its ocean view and isolation from the hustle and bustle of the city, but the irony is that those very qualities led to its downfall.")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius010.mp3", "", "", 1270241224, 2005347889, Spawn)
		AddConversationOption(conversation, "What happened then?", "dlg_1_7")
		AddConversationOption(conversation, "I have no more time for old stories.")
	StartConversation(conversation, NPC, Spawn, "Freeport has come under attack many times, and our Militia maintains a strong presence in the Commonlands to fend off the Bloodskull orcs. During one particularly fierce battle, the bulk of our forces were committed to a frontal assault on the city gates.")
end

function dlg_1_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius011.mp3", "", "", 2984532909, 290696404, Spawn)
		AddConversationOption(conversation, "Couldn't the Militia save them?", "dlg_1_8")
		AddConversationOption(conversation, "I've heard enough. How can I help you defend the Ruins?", "OfferQuest1")
		AddConversationOption(conversation, "Too bad.")
	StartConversation(conversation, NPC, Spawn, "In an unusually clandestine move, the Brokentusk and Lonetusk tribes seized the opportunity to sneak into the Shoreside docks by nightfall. The cowardly beasts overpowered the small garrison left to defend the district, then proceeded to burn and pillage everything they found. Many noble citizens of Freeport died in that conflict.")
end

function dlg_1_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius012.mp3", "", "", 516488246, 2865302304, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_1_9")
		AddConversationOption(conversation, "What a pity.")
	StartConversation(conversation, NPC, Spawn, "As I said, most of our troops were busy fighting in the Commonlands. By the time reinforcements could be sent, the damage had been done. Since Shoreside was isolated and difficult to defend, it was decided that there was no sense in rebuilding it. The Sprawl serves as a buffer between the Ruins and the city proper, so Freeport remains secure. Still, there was a heavy price to be paid.")
end

function dlg_1_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius013.mp3", "", "", 2907233969, 819802352, Spawn)
		AddConversationOption(conversation, "So what became of the Ruins?", "dlg_1_10")
		AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "Even though the invaders were defeated, War Duke Eutarius, the high-ranking Militia officer who had been charged with the city's defense, was executed in the West Freeport plaza for his incompetence and failure. The Overlord does not tolerate mistakes.")
end

function dlg_1_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius014.mp3", "", "", 2462744754, 2263094364, Spawn)
		AddConversationOption(conversation, "What caused this change?", "dlg_1_11")
		AddConversationOption(conversation, "Sounds like you have work to do.")
	StartConversation(conversation, NPC, Spawn, "The once exclusive Shoreside became the Ruins, a broken-down home to beggars and squatters. Some remnants of the orc tribes remained as well, but they were so weak and disorganized that they posed little threat. In fact, this was a relatively calm area until quite recently.")
end

function dlg_1_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius015.mp3", "", "", 3872903634, 4159828807, Spawn)
		AddConversationOption(conversation, "How can I be of assistance?", "dlg_1_12")
		AddConversationOption(conversation, "I don't have any desire to help you.")
	StartConversation(conversation, NPC, Spawn, "I do not know, adventurer. Perhaps that is something you can help discover. But we must act quickly, lest these orcs rise up and do to the rest of Freeport what they once did to Shoreside.")
end

function dlg_1_12(NPC, Spawn) -- OFFER QUEST1
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius016.mp3", "", "", 3389775257, 1638630596, Spawn)
		AddConversationOption(conversation, "I will do so.", "OfferQuest1")
		AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "I must remain here to give assignments to incoming troops. Go through the archway and report to one of my lieutenants, Argosian. He will tell you how you can best serve our cause.")
end

function dlg_1_13(NPC, Spawn) -- QUEST ACCEPT TEXT
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius017.mp3", "", "", 3161105606, 1921169647, Spawn)
	AddConversationOption(conversation, "Thank you for the advice.", "dlg_2_14")
	StartConversation(conversation, NPC, Spawn, "Good. Oh, be sure to pay homage to the statue of our beloved Overlord. It would prove most beneficial for you to bask in the wisdom of his visage.")
end

function dlg_1_14(NPC, Spawn) -- AFTER QUEST ACCEPT TEXT
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius018.mp3", "", "", 377300022, 2983031406, Spawn)
		AddConversationOption(conversation, "I'll go see him.")
	StartConversation(conversation, NPC, Spawn, "Lieutenant Argosian at the first outpost will be responsible for your initial training. Do not return to me until he has ordered you to do so.")
end

function dlg_2_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius020.mp3", "", "", 1710634773, 3637924946, Spawn)
		AddConversationOption(conversation, "No, we thought an ancient shrine might be behind it, but that turned out to be a dead end.", "dlg_2_1")
		AddConversationOption(conversation, "I'd rather not say.")
	StartConversation(conversation, NPC, Spawn, "Good work! Did you find out what's behind this increase in orc activity?")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, Fifth_RequestingFurtherOrders) then
		SetStepComplete(Spawn, Fifth_RequestingFurtherOrders, 1)
	end 
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius021.mp3", "", "", 93483667, 1523875207, Spawn)
		AddConversationOption(conversation, "Thank you, Captain. Is there anything else I can do to aid the Militia?", "dlg_2_2")
		AddConversationOption(conversation, "I'm going to take my loot and go.")
	StartConversation(conversation, NPC, Spawn, "At least we can rule that out, but clearly further investigation is required. Here, help yourself to your choice of equipment from our supply chests. You should find something that will be of use in our continued efforts against the orc uprising.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius022.mp3", "", "", 1019790101, 3910654951, Spawn)
		AddConversationOption(conversation, "I am willing to do what is necessary to serve Freeport.", "dlg_2_3")
		AddConversationOption(conversation, "I think I will be leaving. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The next step in our investigation will be an arduous one. Although to this point you could journey alone, some parts of the Ruins can be deadly for the lone adventurer.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius023.mp3", "", "", 2666224286, 3160996791, Spawn)
		AddConversationOption(conversation, "I will find some allies. What needs to be done?", "dlg_2_4")
		AddConversationOption(conversation, "I prefer to journey alone.")
	StartConversation(conversation, NPC, Spawn, "I knew you were daring!  My advice is to gather some comrades and form a group. There is safety in numbers, especially in places like this. As you venture further out into the world, you will find groups to be extremely helpful in achieving your goals.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius025.mp3", "", "", 3573308808, 1112650571, Spawn)
		AddConversationOption(conversation, "So the Lonetusk are stronger?", "dlg_2_5")
		AddConversationOption(conversation, "I have no desire to face these orcs.")
	StartConversation(conversation, NPC, Spawn, "To be honest, I could tell that the Brokentusk were too weak to be behind the recent attacks. They have always followed the lead of their more powerful brethren, the Lonetusk orcs.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius026.mp3", "", "", 3395408656, 1462645876, Spawn)
		AddConversationOption(conversation, "I am not afraid. What are your orders, Captain?", "dlg_2_6")
		AddConversationOption(conversation, "I'd best be leaving.")
	StartConversation(conversation, NPC, Spawn, "Yes, the Lonetusk are much more deadly. They are more inclined to work together, and this will require a strong group of adventurers to stand against them.")
end

function dlg_2_6(NPC, Spawn) -- OFFER QUEST 6
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius027.mp3", "", "", 2644659750, 71027369, Spawn)
		AddConversationOption(conversation, "I will report to her.", "OfferQuest6")
		AddConversationOption(conversation, "Time for me to go.")
	StartConversation(conversation, NPC, Spawn, "I need you to report to Lieutenant Imperidus, who is stationed at the second Militia outpost deeper in the Ruins. It is located to the west of here, near the gate to the Sprawl. She is heading up the Lonetusk investigation.")
end

function dlg_40_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius030.mp3", "", "", 669347507, 3609055382, Spawn)
		AddConversationOption(conversation, "It seems another tribe of orcs, the Rujarkians, are supplying them with weapons and training.", "dlg_40_2")
		AddConversationOption(conversation, "I prefer to keep that information private.")
	StartConversation(conversation, NPC, Spawn, "Well done. Did you discover the source of the orc uprising?")
end

function dlg_40_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius031.mp3", "", "", 2636650714, 3532932245, Spawn)
		AddConversationOption(conversation, "Where are these Rujarkian orcs located?", "WhereLocated")
		AddConversationOption(conversation, "Am I to be rewarded for my efforts?", "dlg_40_3")
	StartConversation(conversation, NPC, Spawn, "By the Overlord! This is vital information that I will send back to the Militia House immediately. It threatens the very security of Freeport!")
end

function WhereLocated(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Why does this information pose such a danger to Freeport?", "DangerToFreeport")
	StartConversation(conversation, NPC, Spawn, "The Rujarkian orcs are based out of the clefts in the Desert of Ro, a harsh region that lies to the south of our own continent of D'Lere. Perhaps when you are much more experienced than you are now, you will seek adventure there.")
end

function DangerToFreeport(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm glad the information I obtained was useful.", "dlg_40_3")
	StartConversation(conversation, NPC, Spawn, "The Rujarkian orcs are an extremely powerful and well-organized tribe. If the Rujarkians are supplying smaller groups like the Brokentusk and Lonetusk, it is only a matter of time before they provide weapons and armor to the Bloodskull orcs in the Commonlands. For all we know, such an alliance may already be forming.")
end

function dlg_40_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, Tenth_FileAFinalReport) then 
		SetStepComplete(Spawn, Tenth_FileAFinalReport, 1)
	end 
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius034.mp3", "", "", 4219431602, 1872310999, Spawn)
	AddConversationOption(conversation, "Is there anything else I can do to be of service to Freeport?", "dlg_40_4")
	StartConversation(conversation, NPC, Spawn, "Indeed, your efforts have aided Freeport greatly. To show our thanks, you may choose an additional reward from our supply chests. These items will serve you well.")
end

function dlg_40_4(NPC, Spawn) -- need to add offering quest once its scripted
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I will travel to the Commonlands.")
		AddConversationOption(conversation, "I think I will be going, Captain. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Our service to the Overlord is never finished. I know of some loyal citizens in the Commonlands who need your help. Are you interested?")
end

function dlg_100_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius_solo003.mp3", "", "", 1562481055, 2208348974, Spawn)
		AddConversationOption(conversation, "Understood.", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "Use the bell here on the docks to travel within Freeport and choose East Freeport as your destination. Use your map to guide you to the gate leading to West Freeport. From there, travel through that part of the city until you arrive at the main gate that leads to the Commonlands.")
end

function dlg_100_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/captain_arellius_solo004.mp3", "", "", 91462570, 1357108888, Spawn)
		AddConversationOption(conversation, "I will. Thank you, Captain.", "dlg_1_7")
	StartConversation(conversation, NPC, Spawn, "Remember that the Commonlands can be a dangerous place. Judge your battles carefully,  .. GetName(Spawn) .. . When you gather allies and are ready to undertake the fight against the Lonetusk orcs, return here.")
end

function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, First_ReportingForDuty)
end

function OfferQuest6(NPC, Spawn)
	OfferQuest(NPC, Spawn, Sixth_SteppingUptheOffensive)
end

function OfferQuest11(NPC, Spawn)
	OfferQuest(NPC, Spawn, Eleventh_AJourneyOutsideTheCity)
end
--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/quest_captain_arellius_callout_5b6ad828.mp3", "The Freeport Militia will make a stand against these orcs!", "threaten", 3371139514, 3350465604, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/quest_captain_arellius_callout_6af9e361.mp3", "We must avenge the fallen of Shoreside!", "brandish", 352522731, 4132511279, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/captain_arellius/fprt_adv04_ruins/revamp/quest_captain_arellius_callout_257dc2e4.mp3", "To arms! The Ruins must be defended against these mindless brutes!", "brandish", 2691467763, 3825315561, Spawn)
--]]

