--[[
	Script Name     : TayilNVelex.lua
	Script Purpose  : Spawnscript for Tayil N'Velex
	Script Author   : Scatman (Updated by Cynnar 2018.09.23 05.32.10)
	Script Date     : 2008.09.05
	Script Notes    :
--]]

-- Quest ID's
local WelcomeToNorrath = 362
local TheArtOfCombat = 363
local SeasideStew = 364
local PreventativeMaintenance = 365
local DisruptionForDistraction = 366
local TheFinalAssault = 367

function spawn(NPC)
	ProvidesQuest(NPC, TheArtOfCombat)
	ProvidesQuest(NPC, SeasideStew)
	ProvidesQuest(NPC, PreventativeMaintenance)
	ProvidesQuest(NPC, DisruptionForDistraction)
	ProvidesQuest(NPC, TheFinalAssault)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   
   if not HasCompletedQuest(Spawn, TheArtOfCombat) then
	   if HasQuest(Spawn, TheArtOfCombat) then
		   ReadyToLearnAboutOutpost(NPC, Spawn)
	   elseif CanReceiveQuest(Spawn, TheArtOfCombat) then
		   BeenExpectingYou(NPC, Spawn)
	   end
   elseif not HasCompletedQuest(Spawn, SeasideStew) then
	   if  HasQuest(Spawn, SeasideStew) then
		   EnjoyHuntingWithChef(NPC, Spawn)
	   elseif CanReceiveQuest(Spawn, SeasideStew) then
		   IAmReady(NPC, Spawn)
	   end
   elseif not HasCompletedQuest(Spawn, PreventativeMaintenance) then
	   if HasQuest(Spawn, PreventativeMaintenance) then
		   WorkWithVamirSuccessfull(NPC, Spawn)
	   elseif CanReceiveQuest(Spawn, PreventativeMaintenance) then
		   ThankYouTayil(NPC, Spawn)
	   end
   elseif  not HasCompletedQuest(Spawn, DisruptionForDistraction) then
	   if HasQuest(Spawn, DisruptionForDistraction) then
		   DisruptedMine(NPC, Spawn)
	   elseif CanReceiveQuest(Spawn, DisruptionForDistraction) then
		   DidNotReadNote(NPC, Spawn)
	   end
   elseif not HasCompletedQuest(Spawn, TheFinalAssault) then
	   if HasQuest(Spawn, DisruptionForDistraction) then
		   BraveryNoted(NPC, Spawn)
	   elseif CanReceiveQuest(Spawn, TheFinalAssault)then
		   ReportToCaptain(NPC, Spawn)
	   end
   end
end

function BeenExpectingYou(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex001.mp3", "", "nod", 2948130929, 4294504666, Spawn)
	AddConversationOption(conversation, "You were expecting me? Who are you?", "WhoAreYou")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	AddConversationOption(conversation, "I should be going.")
	StartConversation(conversation, NPC, Spawn, "Ah, there you are " .. GetName(Spawn) .. ". I have been expecting you. There is much work ahead of us in establishing Freeport's dominance over this island. There Overlord's troops have secured the output, but there is a growing nuisance on the other side of the island that must be addressed. That is where you come in.")
end

function LeaveIsland(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex_leave000.mp3", "", "", 3045154578, 2506070034, Spawn)
	AddConversationOption(conversation, "Where can I find Captain Varlos?", "WhereCaptainVarlos")
	StartConversation(conversation, NPC, Spawn, "If you feel you are prepared then you are allowed to leave the outpost whenever you desire. To do so simply speak with Captain Varlos. We have a deal worked out with him and he will bring you to the grand city of Freeport.")
end

function WhereCaptainVarlos(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex_leave001.mp3", "", "", 719992004, 84658304, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "The beach is just southeast of here. Captain Varlos' ship will be on the northern dock. He can be found on his ship.")
end

function WhoAreYou(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex002.mp3", "", "salute_freeport", 2553820270, 1636531124, Spawn)
	AddConversationOption(conversation, "Who is the Overlord?", "WhoIsOverlord")
	AddConversationOption(conversation, "I'm ready to begin my adventures.", "ThanksForAdvice")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am Tayil N'Velex, attendant and confidante of the Overlord. I am here to ensure that our operation on this island is successful. You, on the other hand, will be assisting us with some field work to help prepare you for life as a citizen of Freeport.")
end

function WhoIsOverlord(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex003.mp3", "", "", 416547700, 1925188764, Spawn)
	AddConversationOption(conversation, "I will remember that. What can you tell me of Freeport?", "WhatIsFreeport")
	AddConversationOption(conversation, "I'll hear more of this later.")
	StartConversation(conversation, NPC, Spawn, "The Overlord is the fiercely courageous rule of Freeport. A statue of his glowing visage graces the pond in the center of the outpost. Though he is merciless to his enemies, he is generous to those who serve him. Pray you never do anything to fall from his grace, " .. GetName(Spawn) .. ".")
end

function WhatIsFreeport(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex004.mp3", "", "", 255811438, 796501072, Spawn)
	AddConversationOption(conversation, "What is Qeynos?", "WhatIsQeynos")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Freeport is the center of power and commerce on Norrath. The city sits on the eastern edge of the continent of D'Lere. This grand city shall be your home here on Norrath, should you prove yourself worthy. If not, you can cower and beg for shelter at the gates of Qeynos.")
end

function WhatIsQeynos(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex005.mp3", "", "threaten", 2390968770, 501699972, Spawn)
	AddConversationOption(conversation, "Thank you for the advice, Tayil.", "ThanksForAdvice")
	AddConversationOption(conversation, "I prefer to make up my own mind.")
	StartConversation(conversation, NPC, Spawn, "The city of Qeynos is the enemy of Freeport. It is a weak land ruled by an incompetent queen, Antonia Bayle. I've had my share of battles with her and my pet kerra, I assure you. Qeynosians try to spread lies about the Overlord and portray him as some kind of power-mad tyrant. Don't believe their propaganda, " .. GetName(Spawn) .. "!")
end

function ThanksForAdvice(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex006.mp3", "", "nod", 3631541151, 3425399137, Spawn)
	AddConversationOption(conversation, "I pledge myself to Freeport.", "PledgeToFreeport")
	AddConversationOption(conversation, "Not just yet.")
	StartConversation(conversation, NPC, Spawn, "Remember to always keep the will of the Overlord foremost in your thoughts and you will go far. The city of Freeport is a power unrivaled on Norrath, no matter what you may hear from Qeynosian riffraff. You must pledge yourself to this power and become part of it. Do this and I will reward you handsomely.")
end

function PledgeToFreeport(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- update WelcomeToNorrath Quest
	if not HasCompletedQuest (Spawn, WelcomeToNorrath) then
		SetStepComplete(Spawn, WelcomeToNorrath, 1)
                PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn) --Ding!
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex007.mp3", "", "agree", 4165919735, 3979142709, Spawn)
	AddConversationOption(conversation, "I am ready to begin.", "ReadyToBegin")
	AddConversationOption(conversation, "I'll begin later.")
	StartConversation(conversation, NPC, Spawn, "Excellent! There is indeed much potential in you. I think it is time to begin your training.")
end

function ReadyToBegin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex008.mp3", "", "", 1866217478, 1257770871, Spawn)
	AddConversationOption(conversation, "I will speak with him.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "You must be strong if you wish to serve properly. Northwest of here you can find Trainer Darg Frostwind. Speak with him about combat training and do as he tells you.")
end

function ReadyToLearnAboutOutpost(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetQuestStep(Spawn, TheArtOfCombat) >= 1 and GetQuestStep(Spawn, TheArtOfCombat) <= 3 then
		AddConversationOption(conversation, "I haven't completed my training yet, I'll return to Darg.")
	elseif GetQuestStep(Spawn, TheArtOfCombat) == 4 then
		AddConversationOption(conversation, "I am ready.", "IAmReady")
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex012.mp3", "", "nod", 780859497, 3478920233, Spawn)
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	AddConversationOption(conversation, "Not just yet.")
	StartConversation(conversation, NPC, Spawn, "So, " .. GetName(Spawn) .. ", are you ready to learn more about the outpost and perform your first services for the Overlord?")
end

-- 1st QUEST DIALOG


-----------------------------------------------------------------------------------------------------------------------------------------------
-- 2nd QUEST DIALOG Chef Gorga
-----------------------------------------------------------------------------------------------------------------------------------------------

function IAmReady(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, TheArtOfCombat) then
		if GetQuestStep(Spawn, TheArtOfCombat) == 4 then
			SetStepComplete(Spawn, TheArtOfCombat, 4)
                        PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn) --Ding!
		end
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex013.mp3", "", "scold", 2559303107, 2971364705, Spawn)
	AddConversationOption(conversation, "I'll keep that in mind. So who are the inhabitants?", "WhoInhabitants")
	AddConversationOption(conversation, "We'll discuss this later.")
	StartConversation(conversation, NPC, Spawn, "This outpost was recently established as a training ground for potential citizens of Freeport to hone their skills. Our first scouts on the island reported it as being uninhabited, perfect for our needs. It soon became clear that the initial reports were incorrect, and those scouts have been permanently reassigned to the bottom of the bay. Such is the price of failure.")
end

function WhoInhabitants(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex014.mp3", "", "", 298813640, 3848290979, Spawn)
	AddConversationOption(conversation, "So I should go wipe them out?", "WipeThemOut")
	AddConversationOption(conversation, "That sounds like a lot of effort.")
	StartConversation(conversation, NPC, Spawn, "The intruders are a sect of the Tunarian Alliance, a lowly order of vermin originating from Qeynos. As a true servant of the Overlord, your duty is to eliminate them. This should prove extremely useful in preparing you for the challenges that lie ahead after you leave the outpost.")
end

function WipeThemOut(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex015.mp3", "", "no", 907106950, 578099041, Spawn)
	AddConversationOption(conversation, "I am ready.", "IAmReady2")
	AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "Not just yet, " .. GetName(Spawn) .. ". You will strike against those Qeynosian scum when the time is right. First we need to see if that weapon of yours is working! Are you ready for your first test?")
end

function IAmReady2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex016.mp3", "", "nod", 727910371, 354103417, Spawn)
	AddConversationOption(conversation, "I will go help Chef Gorga.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Go talk to Chef Gorga just past the west archway. She needs help gathering supplies to feed the members of the Freeport Militia who guard this outpost, which should provide a chance to test your combat skills. There is more to hunt on this island than just Qeynosians.")
end

function HelpedGorgaGather(NPC, Spawn)
	SetStepComplete(Spawn, SeasideStew, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
   
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex018.mp3", "", "agree", 4113250414, 3675047452, Spawn)
	AddConversationOption(conversation, "Thank you, Tayil.", "ThankYouTayil")
	StartConversation(conversation, NPC, Spawn, "Gorga was impressed with your handiwork. I'm sure the outpost Militia guards will be pleased with her stew, though I can't stomach troll cooking myself. You show potential indeed, " .. GetName(Spawn) .. ". As promised, here is your reward.")
end

function EnjoyHuntingWithChef(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetQuestStep(Spawn, SeasideStew) >= 1 and GetQuestStep(Spawn, SeasideStew) <= 5 then
		AddConversationOption(conversation, "I haven't finished with Gorga yet.")
	elseif GetQuestStep(Spawn, SeasideStew) == 6 then
		AddConversationOption(conversation, "I helped Gorga gather supplies.", "HelpedGorgaGather")
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex017.mp3", "", "agree", 1018943888, 25598510, Spawn)
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	AddConversationOption(conversation, "I still have some more hunting to do.")
	StartConversation(conversation, NPC, Spawn, "Did you enjoy your hunting in the Seaside Glad with Chef Gorga?")
end

-----------------------------------------------------------------------------------------------------------------------------------------------
-- 3rd QUEST DIALOG - Assassin Vamir
-----------------------------------------------------------------------------------------------------------------------------------------------

function ThankYouTayil(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex019.mp3", "", "", 3119184913, 1183036509, Spawn)
	AddConversationOption(conversation, "I am ready for my next assignment.", "ReadyForNextAssignment")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	AddConversationOption(conversation, "Not just yet.")
	StartConversation(conversation, NPC, Spawn, "So, " .. GetName(Spawn) .. ", are you ready to prove your worth again?")
end

function ReadyForNextAssignment(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex020.mp3", "", "cutthroat", 712284535, 2640983070, Spawn)
	AddConversationOption(conversation, "You're suggesting some kind of sinister plan?", "SinisterPlan")
	AddConversationOption(conversation, "I can't really figure out what you mean right now.")
	StartConversation(conversation, NPC, Spawn, "Good, now listen closely. Though a direct attack upon your enemy can be quite satisfying, there are often more subtle means of inflicting damage. Cut off the feet and the head is sure to follow, if you get my meaning.")
end

function SinisterPlan(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex021.mp3", "", "nod", 1415726143, 629403231, Spawn)
	AddConversationOption(conversation, "I will go speak to Assassin Vamir.", "OfferQuest3")
	AddConversationOption(conversation, "I don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "Indeed, cunning and subtlety are often effective. And who is more cunning and subtle than an assassin? We've established a camp through the archway to the west, at the far end of Seaside Glade. Go and speak to Assassin Vamir, who has devised a plan to strike at the heart of the Tunarians.")
end

function WorkWithVamirSuccessfull(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I have more to learn from him.")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	StartConversation(conversation, NPC, Spawn, "Hello again, " .. GetName(Spawn) .. ". Was your work with Assassin Vamir successful?")
end

-----------------------------------------------------------------------------------------------------------------------------------------------
-- 4TH QUEST - Coercer Zlith
-----------------------------------------------------------------------------------------------------------------------------------------------

function DidNotReadNote(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
   
	AddConversationOption(conversation, "I am ready to serve my liege.", "ReadyToServe")
	AddConversationOption(conversation, "How do I leave the island?", "LeaveIsland")
	AddConversationOption(conversation, "Not just yet.")
	StartConversation(conversation, NPC, Spawn, "Perhaps you did not read my note.  Are you prepared to lend your services to the Overlord once again?")
end

function ReadyToServe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Sounds good. How do I proceed?", "OfferQuest4")
	AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "We have discovered that the Tunarian Alliance's main source of income is from a mine in the Wilderwood. The mine is the perfect setting to employ our next strategy for conquering the island: distraction. By causing a disruption at the mine, it will allow us to flank the Qeynosians from the opposite side.")
end

function DisruptedMine(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "How do I leave the Island?", "LeaveIsland")
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you succeeded in disrupting Qeynosian activities at the mine?")
end

-----------------------------------------------------------------------------------------------------------------------------------------------
-- 5TH QUEST
-----------------------------------------------------------------------------------------------------------------------------------------------

function ResourcesAreDwindling(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I am ready, Tayil.", "ReadyQuest5")
	AddConversationOption(conversation, "How do I leave the Island?", "LeaveIsland")
	StartConversation(conversation, NPC, Spawn, "The Tunarian Alliance's resources are dwindling and their forces are focused on defending the mine. The time has come to strike the final blow. Are you prepared to face your greatest challenge so far?")
end

function ReadyQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "North of Cliffdiver Canyon, then east. Got it.", "NorthThenEast")
	StartConversation(conversation, NPC, Spawn, "The Militia has pushed through the Tunarian Alliance's line into the Valley of Discipline, they area they use to train their animals. Our forces have set up a forward camp in an alcove located in the eastern portion of the valley near the archway leading to the falls.")
end

function NorthThenEast(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will speak to Captain Tyreth.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "The Militia is using this position as our point of attack. Go to the camp and seek out Captain Tyreth, the leader of the forward operation. He will direct your efforts in this final phase of the assault. We will drive out the Tunarian Alliance and take their treasures as our own!")
end

function ReportToCaptain(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will go speak to Captain Tyreth.")
	AddConversationOption(conversation, "How do I leave the Island?", "LeaveIsland")
	StartConversation(conversation, NPC, Spawn, "Report to Captain Tyreth at the Militia camp in the Valley of Discipline. He can be found in an alcove located in the eastern part of the valley near the archway leading to the falls. We must make our final stand against the Tunarians!")
end

function BraveryNoted(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex033.mp3", "", "", 2106485870, 4220225925, Spawn)
	AddConversationOption(conversation, "I am honored to have served the Overlord.", "dlg_8_1")
	AddConversationOption(conversation, "How do I leave the island?")
	StartConversation(conversation, NPC, Spawn, "Your bravery has been noted, young one. The Tunarian Circle of Elders was defeated and their treasure is ours. The Militia troops will remain here to clear out the remaining Qeynosians, but they present no danger to us.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/tayil_n_velex/tutorial_island02_evil_revamp/quests/citizenship/tayilnvelex/tayilnvelex034.mp3", "", "", 1646478663, 778919284, Spawn)
	AddConversationOption(conversation, "Thank you, Tayil.")
	StartConversation(conversation, NPC, Spawn, "It was my pleasure to fight beside you. I have no doubt that you will be well received in Freeport. When you are ready to leave the outpost and venture to our great city, speak with Captain Varlos on the deck of the Far Journey. His ship is waiting on the dock through the south archway. Farewell.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheArtOfCombat)
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, SeasideStew)
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, PreventativeMaintenance)
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, DisruptionForDistraction)
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheFinalAssault)
end