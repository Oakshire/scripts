--[[
	Script Name	: SpawnScripts/SunkenCity/InquisitorThorson.lua
	Script Purpose	: Inquisitor Thorson <Dismal Rage>
	Script Author	: Scatman
	Script Date	: 2009.07.28
	Script Notes	: 
--]]

local MeettheInquisitor = 5671
local HALFELF_MENTOR_QUEST_5 = 189
local QUEST_1 = 376
local QUEST_2 = 377
local QUEST_3 = 378
local QUEST_4 = 379
local QUEST_3_FROM_CURFIELD = 382
local QUEST_5 = 383
local QUEST_6 = 384

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
	ProvidesQuest(NPC, QUEST_6)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local chance = math.random(1, 2)
		if chance <= 25 then
			local choice = math.random(1,2)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/quest_character/qst_inquisitor_thorson_callout_2a6613bd.mp3", "We must all act to defend Freeport.", "nod", 1841304758, 774355519, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/quest_character/qst_inquisitor_thorson_callout_f96a8b27.mp3", "This cursed place holds many secrets that must be uncovered.", "", 2921290119, 2384027850, Spawn)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	RandomVoiceOver(NPC, Spawn)

	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_5) then
		AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Delcairn Sebastian sent in Beggar's Court sent me here to speak with you.", "Delcairn")
	end
	if GetQuestStep(Spawn, MeettheInquisitor) == 1 then
        SetStepComplete(Spawn, MeettheInquisitor, 1)
        Delcairn(NPC, Spawn)
    end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_3_FROM_CURFIELD) then
						if HasCompletedQuest(Spawn, QUEST_5) then
							if HasCompletedQuest(Spawn, QUEST_6) then
								PlayFlavor(NPC, "", "Thank you for all your help, my friend. I will speak favorably of you to my superiors.", "thank", 0, 0, Spawn)
							elseif HasQuest(Spawn, QUEST_6) then
								MustRemainHere(NPC, Spawn, conversation)
							else
								HelloAgainBraveOne(NPC, Spawn, conversation)
							end
						elseif HasQuest(Spawn, QUEST_5) then
							OnQuest5(NPC, Spawn, conversation)
						else
							HelloOnceAgain(NPC, Spawn, conversation)
						end
					elseif HasQuest(Spawn, QUEST_3_FROM_CURFIELD) then
						OnQuest4(NPC, Spawn, conversation)
					else
						SpeakWithInvestigator(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					Greetings4(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				GreetingsAdventurer(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			HelloAdventurer(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		Greetings(NPC, Spawn, conversation)
	end
end

function RandomVoiceOver(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
	end
end

--------------------------------------------------------------------------------------------------------------------
--				HALFELF_MENTOR_QUEST_5		
--------------------------------------------------------------------------------------------------------------------

function Delcairn(NPC, Spawn)
	SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_5, 1)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasQuest(Spawn, QUEST_1) and not HasCompleted(Spawn, QUEST_1) then
		AddConversationOption(conversation, "I would be an honor to serve Freeport.", "dlg_0_1")
	end
	AddConversationOption(conversation, "I am pleased to have met you.")
	StartConversation(conversation, NPC, Spawn, "Ah yes, I was told to expect your arrival. I've heard that you show great promise and may well prove to be an asset to the Overlord.")
end

--------------------------------------------------------------------------------------------------------------------
--				QUEST_1		
--------------------------------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Who are you?", "dlg_0_1")
	AddConversationOption(conversation, "My business is none of your concern.")
	StartConversation(conversation, NPC, Spawn, "Greetings, adventurer. What business do you have here?")

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson003.mp3", "", "", 463981298, 3396454386, Spawn)
	AddConversationOption(conversation, "What is the Dismal Rage?", "dlg_0_2")
	AddConversationOption(conversation, "Undead? No thank you.")
	StartConversation(conversation, NPC, Spawn, "I suppose formal introductions are in order. I am Inquisitor Thorson, sent by my masters in the Dismal Rage to investigate a recent increase in undead activity here.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What gods do you serve?", "dlg_0_3")
	AddConversationOption(conversation, "I have heard enough about the Dismal Rage. What is this place?", "dlg_0_6")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "The Dismal Rage looks after the spiritual needs of Freeport's people. We congregate in the Temple of War in North Freeport. We are made up largely of priests, though we do employ other professions from time to time.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "If there are no gods around anymore, from where do you draw your power?", "dlg_0_4")
	AddConversationOption(conversation, "I think I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "Though in ancient times our priests served the old gods, we no longer bow to such archaic symbols of authority. Today the Dismal Rage serves the Overlord and our high priestess, .. GetName(Spawn) .. . Nevagon.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What principles do you mean?", "dlg_0_5")
	AddConversationOption(conversation, "I think I should be leaving.")
	StartConversation(conversation, NPC, Spawn, "Some of us believe it was not the gods themselves that were the true power, but rather the planar forces they represented. The ancient gods were symbols, the embodiment of the principles we now serve.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What is this place?", "dlg_0_6")
	AddConversationOption(conversation, "I think I should be leaving.")
	StartConversation(conversation, NPC, Spawn, "We draw our power from many sources, including the principles of Hate, Fear, War, and Decay. There are sects within the Dismal Rage dedicated to all these ideals and more, though we are united in our service to the Overlord and High Priestess Nevagon.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you mean?", "dlg_0_7")
	AddConversationOption(conversation, "I don't need to hear anything else.")
	StartConversation(conversation, NPC, Spawn, "You have arrived in the Sunken City, once a thriving district of Freeport. Now it stands as a monument to the madness of those who would have sacrificed our beloved city to the waves.")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will do it.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "I will tell you more if you want to hear it, but first I must review the notes I have been taking on what I have observed since my arrival here. To learn a bit more about this place, go through the archway just ahead and speak to an iksar named Saydith Yarr.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Yes, though he seemed to babble a lot.", "dlg_2_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Did you speak to Saydith Yarr?")
end

function dlg_2_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'd like to hear more about the Sunken City.", "dlg_2_2")
	AddConversationOption(conversation, "Enough chatter. Do you have anything for me to do?", "dlg_2_10")
	AddConversationOption(conversation, "I'd rather leave, thanks.")
	StartConversation(conversation, NPC, Spawn, "Saydith has been here a long time, and I think he has gone a bit mad. I can tell you more about this place if you like, or we can skip all that and you can do some work for me.")
end

--------------------------------------------------------------------------------------------------------------------
--				QUEST_2		
--------------------------------------------------------------------------------------------------------------------

function HelloAdventurer(NPC, Spawn, conversation)
AddConversationOption(conversation, "I spoke to a rather disturbed iksar.", "dlg_2_1")
	AddConversationOption(conversation, "Goodbye, Inquisitor Thorson.")
	StartConversation(conversation, NPC, Spawn, "Hello, adventurer. I hope you travel safely here in the Sunken City.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Go on.", "dlg_2_3")
	AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "What we now call the Sunken City was once a residential district in the northern section of Freeport known affectionately by its residents as Plank's Edge. It was home to many of the sailors and merchants that worked on the docks of East Freeport's bustling shipping trade.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Please continue.", "dlg_2_4")
	AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "As was typical of a seafaring community, many of the residents worshiped Prexus, the Ocean Lord. Though a boisterous and sometimes rowdy bunch, they lived peaceably enough with the other citizens of Freeport.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I see.", "dlg_2_5")
	AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "When the Rending began and the seas became impassible, Freeport's harbor fell on hard times. Shipping and trade ground to a halt and the fishing industry collapsed. East Freeport became a ghost town, known more for its crime than for its commerce.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Who followed Aquel?", "dlg_2_6")
	AddConversationOption(conversation, "I'm losing interest in this story. Do you have any work for me?", "dlg_2_10")
	AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "In this climate of fear and uncertainty, a half elven extremist named Elwyn Aquel gained a following. He preached that Prexus was angry with Freeport, and only through the hard work and sacrifice of his followers would the seas calm and prosperity return.")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Did Aquel really want to help them?", "dlg_2_7")
	AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "Aquel's followers, called the Circle of Darkfathom, quickly rose in prominence among the disgruntled citizens of Plank's Edge. Aquel promised brighter days to these desperate people on the brink of losing everything they had.")
end

function dlg_2_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Did anyone try to stop him?", "dlg_2_8")
	AddConversationOption(conversation, "Enough of this babbling.")
	StartConversation(conversation, NPC, Spawn, "Little did the people of Plank's Edge know that they had fallen victim to a madman's scheme. The sacrifice Aquel spoke of was a literal one: he intended to sink Freeport to the bottom of the ocean in a twisted scheme to gain favor with Prexus. He believed that the flood waters would wash away the city and grant him immortality in the process.")
end

function dlg_2_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Was all of Freeport flooded?", "dlg_2_9")
	AddConversationOption(conversation, "I've heard enough.")
	StartConversation(conversation, NPC, Spawn, "It was only as Aquel began his ritual of sacrifice that some of his followers saw through his deception. As the ground beneath Plank's Edge began to sink and the flood waters came pouring in, some of the Darkfathom members interrupted Aquel's incantation and broke the spell. Though Freeport was saved, it was too late for the people of Plank's Edge, who drowned beneath the unholy tide. Aquel's body was never recovered.")
end

function dlg_2_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "This area is haunted?", "dlg_2_10")
	AddConversationOption(conversation, "I don't like ghosts. Time to go.")
	StartConversation(conversation, NPC, Spawn, "Thankfully the high walls around the outside of the district held strong, so damage to neighboring parts of Freeport was minimal. Gradually the waters receded but never fully went away, leaving the area all but unlivable. Abandoned by the city's residents, Plank's Edge is now called the Sunken City, a dangerous place haunted by the souls of those who met their doom within.")
end

function dlg_2_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you want me to do?", "dlg_2_11")
	AddConversationOption(conversation, "I have no interest in this.")
	StartConversation(conversation, NPC, Spawn, "The Sunken City is haunted, by both the spirits of those innocents who died here and by the fallen Prexians who caused this catastrophe. It is said that there are even more spirits who walk these flooded streets after night falls.")
end

function dlg_2_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll do it. Where can I find these creatures?", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "When the undead are defeated and their spirits are freed, they often leave behind a spectral essence that, if properly analyzed, reveals much about their past. I must find out what is causing the increase in activity among the undead. I need you to obtain four spectral essences from the undead creatures.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Yes, I obtained all four essences.", "dlg_7_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Hello again. Do you have the spectral essences I asked you to obtain?")
end

function dlg_7_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What other inhabitants?", "dlg_7_2")
	AddConversationOption(conversation, "No thanks, I will be going.")
	StartConversation(conversation, NPC, Spawn, "Well done! These essences will aid in my research. It will take me some time to study them. While I do that, it may be a good idea for you to have a look around and discover some of the other inhabitants of the Sunken City.")
end

--------------------------------------------------------------------------------------------------------------------
--				QUEST_3		
--------------------------------------------------------------------------------------------------------------------

function GreetingsAdventurer(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Hello, Inquisitor. I am ready to explore more of the Sunken City.", "dlg_7_2")
	AddConversationOption(conversation, "Nothing. Goodbye, Inquisitor Thorson.")
	StartConversation(conversation, NPC, Spawn, "Greetings, adventurer! What brings you back to me?")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What kind of vermin?", "dlg_7_3")
	AddConversationOption(conversation, "Just tell me how to collect the information you need.")
	StartConversation(conversation, NPC, Spawn, "This place is home to more than just the spirits of those who died here. I've been told there are a few types of vermin scattered around the Sunken City, and I'd like you to confirm their presence for me.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What other creatures?", "dlg_7_4")
	StartConversation(conversation, NPC, Spawn, "Crabs like to roam in shallow water, so I need a rough estimate of their density here. You should find plenty of brine sifters just through the archway, as well as farther on to the east.")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Anything else?", "dlg_7_5")
	StartConversation(conversation, NPC, Spawn, "Though a coastal city, Freeport has a very arid climate. Scorpions may be found here on some of the dry portions of ground. You might try going west, then south a bit.")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How do I collect information on these creatures?", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "Of particular interest to me are the strange rust monsters that scurry around here. There is little information on where they come from, but they showed up in this area after the destruction caused by the Rending. They get their name not only for their brownish color, but for their odd taste for consuming rusty metal. If any of your gear becomes rusty due to the moisture here, be on your guard.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_3) == 5 then
		AddConversationOption(conversation, "Yes, I've studied the nearby creatures.", "dlg_10_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Greetings once again. Have you studied the local wild creatures?")
end

function dlg_10_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3, 5)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Are you working alone here?", "dlg_10_2")
	AddConversationOption(conversation, "I think I will go now.")
	StartConversation(conversation, NPC, Spawn, "Well done! Your reputation as a hard worker is well earned. It seems there is no shortage of life here in the Sunken City, even if most of it scuttles about in the shadows.")
end

--------------------------------------------------------------------------------------------------------------------
--				QUEST_4		
--------------------------------------------------------------------------------------------------------------------

function Greetings4(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Are you working alone here?", "dlg_10_2")
	AddConversationOption(conversation, "Speaking of traveling, I must be off.")
	StartConversation(conversation, NPC, Spawn, "Greetings. I hope you travel safely, adventurer.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Who am I looking for?", "dlg_10_3")
	AddConversationOption(conversation, "Run your own errands.")
	StartConversation(conversation, NPC, Spawn, "I am not the only one sent here by the Dismal Rage. Some of my allies have ventured deeper into the Sunken City. In fact, since I have completed my examination of the spectral essences you obtained, I need you to take the information to one of them.")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll do it. Where can I find him?", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Seek out Investigator Curfeld, a highly respected member of our order. He has spent a lot of time researching the events that transpired here, and no doubt has some insight into the recent rise in undead activity. Take my findings on the spectral essences and give them to him.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	if HasQuest(Spawn, QUEST_3_FROM_CURFIELD) then
		AddConversationOption(conversation, "Yes, he asked me to bring this journal to you.", "dlg_22_1")
	end
	AddConversationOption(conversation, "I looked, but I didn't find him.", "DidntFindHim")
	AddConversationOption(conversation, "Not yet. I'm still doing some tasks for him.")
	StartConversation(conversation, NPC, Spawn, "Thank you for assisting the Dismal Rage in investigating the Sunken City. Has Investigator Curfield made any discoveries?")
end

function DidntFindHim(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'll have another look.")
	StartConversation(conversation, NPC, Spawn, "He is near the gateway to the Graveyard. Look to the south and the west of here, near some other inquisitors from the Dismal Rage. Investigator Curfield often makes expeditions deeper into the Sunken City, so if you don't see him right now just wait a while and he should present himself.")
end

function SpeakWithInvestigator(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I will go speak to Investigator Curfield.")
	StartConversation(conversation, NPC, Spawn, "Greetings, adventurer. Please see if Investigator Curfield has any work for you. He can be found near the gate to the Graveyard. He'll send you back to me when he sees fit.")
end

--------------------------------------------------------------------------------------------------------------------
--				QUEST_3_FROM_CURFIELD		
--------------------------------------------------------------------------------------------------------------------

function dlg_22_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3_FROM_CURFIELD) then
		SetStepComplete(Spawn, QUEST_3_FROM_CURFIELD, 1)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson037.mp3", "", "", 1891000932, 649787837, Spawn)
	AddConversationOption(conversation, "First he had me uncover what some unsavory pirates are doing in the area.", "dlg_22_2")
	AddConversationOption(conversation, "That is none of your business.")
	StartConversation(conversation, NPC, Spawn, "Ah, thank you. I'm glad to have someone of his expertise in charge of these matters. I will look through his journal as I prepare to return to North Freeport to present my report. If I may ask, what did the investigator have you do?")
end

--------------------------------------------------------------------------------------------------------------------
--				QUEST_3_FROM_CURFIELD		
--------------------------------------------------------------------------------------------------------------------

function HelloOnceAgain(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I returned with information from Investigator Curfield.", "dlg_22_1")
	AddConversationOption(conversation, "My pleasure. Goodbye, Inquisitor Thorson.")
	StartConversation(conversation, NPC, Spawn, "Hello once again friend. As a loyal servant of the Dismal Rage, I continue to investigate the strange happenings here in the Sunken City.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson038.mp3", "", "", 4129824747, 1521555979, Spawn)
	AddConversationOption(conversation, "No, he just had me retrieve some documents that were in their possession.", "dlg_22_3")
	AddConversationOption(conversation, "That doesn't concern you.")
	StartConversation(conversation, NPC, Spawn, "Pirates, eh? I'd heard rumors of their kind stashing their goods around here. I guess they figured no one would go looking for stolen goods in a place that is haunted by the spirits of the past. I assume he asked you to report their activity to the Freeport Militia.")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson039.mp3", "", "", 4059080083, 3742743573, Spawn)
	AddConversationOption(conversation, "He had me investigate a ruined shrine to Prexus that was guarded by zombies.", "dlg_22_4")
	AddConversationOption(conversation, "Mind your own business.")
	StartConversation(conversation, NPC, Spawn, "Documents? Well, surely Investigator Curfeld knows what's best. What else did he ask you to do?")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson040.mp3", "", "", 3404715072, 1791529373, Spawn)
	AddConversationOption(conversation, "Uh, actually not. He just asked me to find out whether it still emanated mystical energy.", "dlg_22_5")
	AddConversationOption(conversation, "Stop asking so many questions.")
	StartConversation(conversation, NPC, Spawn, "The ruins of that ancient shrine are certainly cursed. No doubt he asked you to destroy the shrine and sanctify the ground.")
end

function dlg_22_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson041.mp3", "", "", 3942402517, 3906834551, Spawn)
	AddConversationOption(conversation, "I'm sure there must be a good explanation.", "dlg_22_6")
	AddConversationOption(conversation, "Let's just forget about this.")
	StartConversation(conversation, NPC, Spawn, "What? I don't understand it. Why would he not want the shrine destroyed, especially if it still has arcane power? Let me see if he explains it in this journal.")
end

function dlg_22_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson042.mp3", "", "", 3952859177, 2366255979, Spawn)
	AddConversationOption(conversation, "Why would he have such notes?", "dlg_22_7")
	AddConversationOption(conversation, "You sound like a fool.")
	StartConversation(conversation, NPC, Spawn, "Wait... what is going on? This journal isn't about ending the threat of the undead and keeping Freeport safe. It contains notes on how to recreate the spell used by Elwyn Aquel and the Circle of Darkfathom to destroy our city!")
end

function dlg_22_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson043.mp3", "", "", 3919422201, 2706704450, Spawn)
	AddConversationOption(conversation, "What should we do?", "dlg_22_8")
	AddConversationOption(conversation, "I really don't care.")
	StartConversation(conversation, NPC, Spawn, "I'd heard it said that members of the investigator's family were worshipers of Prexus. They must have been members of the Circle of Darkfathom. Our city is in grave danger! We have to stop him!")
end

function dlg_22_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson044.mp3", "", "", 4213844077, 3519190459, Spawn)
	AddConversationOption(conversation, "I will. But what if he refuses to surrender?", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "There's no time to waste! Curfeld must not be allowed to complete this unholy ritual. The safety of Freeport itself is at stake! Go back and face him. You must put an end to his foul scheme before all is lost.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

--------------------------------------------------------------------------------------------------------------------
--				QUEST 5		
--------------------------------------------------------------------------------------------------------------------

function OnQuest5(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_5) == 2 then
		AddConversationOption(conversation, "His plans are foiled. Freeport is safe.", "dlg_24_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "You're back! Did you stop Investigator Curfeld?")
end

function dlg_24_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_5, 2)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It was my pleasure to serve. Do you have any other tasks for me?", "OfferQuest6")
	AddConversationOption(conversation, "I'm tired of being around you.")
	StartConversation(conversation, NPC, Spawn, "Splendid work! I cannot express how pleased I am with all you have done for us. Your name shall be known within the Dismal Rage as a true hero. I would not be surprised if the Overlord himself hears of your actions this day. Please, take this reward as a token of thanks.")
end

--------------------------------------------------------------------------------------------------------------------
--				QUEST 6		
--------------------------------------------------------------------------------------------------------------------

function HelloAgainBraveOne(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Are there any other tasks we can undertake together?", "OfferQuest6")
	AddConversationOption(conversation, "I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "Hello again, brave one. I want to thank you again for defeating Curfield.")
end

function OfferQuest6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_6)
end

function MustRemainHere(NPC, Spawn, conversation)
	AddConversationOption(conversation, "How do I get there?", "dlg_24_3")
	AddConversationOption(conversation, "I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "I must remain here to finish my report for the Dismal Rage. However, I would like you to journey to the Freeport Ruins and seek out an acquaintance of mine named Captain Arellius. I have heard that your help is much needed there. I will send word that you are coming, hero of Freeport.")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson049.mp3", "", "", 3163252250, 288796806, Spawn)
	AddConversationOption(conversation, "Are there any other places you could recommend where I can find adventures?", "dlg_24_4")
	AddConversationOption(conversation, "Thank you, Inquisitor Thorson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The fastest route to the Ruins is to use the mariner's bell at the end of the dock for traveling outside the city proper. This will summon transportation to take you to the Ruins, where Captain Arellius of the Freeport Militia will be awaiting your assistance.")
end

function dlg_24_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson061.mp3", "", "", 2845086086, 1715171802, Spawn)
	AddConversationOption(conversation, "Tell me more about Custodian Zaddar.", "dlg_24_5")
	AddConversationOption(conversation, "Tell me more about Enforcer Kurdek.", "dlg_24_6")
	AddConversationOption(conversation, "I may seek them out. Thank you.")
	StartConversation(conversation, NPC, Spawn, "You can speak to Custodian Zaddar in the Graveyard and Enforcer Kurdek in the Sprawl. They could both use assistance from an able adventurer.")
end

function dlg_24_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson062.mp3", "", "", 4025975768, 1084751097, Spawn)
	AddConversationOption(conversation, "Tell me more about Enforcer Kurdek.", "dlg_24_6")
	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "Custodian Zaddar in the Graveyard is trying to determine what's behind a recent increase in undead attacks. Use the mariner's bell on the docks of your home district to travel to Stonestair Byway. Head west until you see a passage to the south. The gate at the end leads to the Graveyard.")
end

function dlg_24_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson063.mp3", "", "", 3377387482, 1184471101, Spawn)
	AddConversationOption(conversation, "Tell me more about Custodian Zaddar.", "dlg_24_5")
	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "Enforcer Kurdek in the Sprawl could use a hand keeping the local gangs in line. To journey to the Sprawl, use the mariner's bell on the docks of your home district to travel to Big Bend. Follow the halls north, then take the west passageway to the west gate.")
end
