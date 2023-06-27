--[[
	Script Name	: SpawnScripts/ScaleYard/BroodMatronVrimMalthyk.lua
	Script Purpose	: Brood Matron Vrim Malthyk <Iksar Mentor>
	Script Author	: Xanibunib
	Script Date	: 2008.09.29 (updated by torsten 1.8.2022 including questline)
	Script Notes	: 
--]]

local Iksar = 10 --10
QUEST_1 = 340 --A Puppy for your potion--
QUEST_2 = 341 --He said, he said--
QUEST_3 = 342 --Paying homage to the past--
QUEST_4 = 343 --Kill or be killed--
QUEST_5 = 344 --Report To Enforcer Kurdek

function spawn(NPC)

	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						VrimDone(NPC, Spawn)
					elseif HasQuest(Spawn, QUEST_5) then
						VrimDone(NPC, Spawn)
					else
						dlg_3_5(NPC, Spawn)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					if GetQuestStep(Spawn, QUEST_4) == 1 then
						Quest5NotComplete(NPC, Spawn)
					else
						AnthonyDead(NPC, Spawn)
					end
				else
					dlg_3_1(NPC, Spawn)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				if GetQuestStep(Spawn, QUEST_3) == 6 then
					RitualComplete(NPC, Spawn)
				else 
					Say(NPC, "Ok.", Spawn)
				end
			else
				dlg_2_1(NPC, Spawn)
			end			
		elseif HasQuest(Spawn, QUEST_2) then
			if GetQuestStep(Spawn, QUEST_2) == 3 then
				HeSaidComplete(NPC, Spawn)
			else 
				Say(NPC, "Do no speak to me untill you have spoken to both Barbarians.", Spawn)
			end
		else 
			dlg_1_0(NPC, Spawn)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		--has quest 1
		HaveComponents(NPC, Spawn)			
	else 
		--no quest
		if GetRace(Spawn) == Iksar then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim001.mp3", "", "", 3951556103, 2696411688, Spawn)
			AddConversationOption(conversation, "I'm " .. GetName(Spawn) .. ". Who might you be", "dlg_0_0")
			AddConversationOption(conversation, "My name is my own, witch. Leave me be!", "dlg_end")
			StartConversation(conversation, NPC, Spawn, "Mmmm. Something wicked this way comes... Why hello there young broodling, I've not seen you here before. Tell me your name.")
		else
			Say(NPC, "S-s-step away! I only deal with those of my brood.", Spawn)
		end
	end
end

--[[-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----1st Quest "A Puppy for your potion" -----------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------]]
function HasNoQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim001.mp3", "", "", 3951556103, 2696411688, Spawn)
	AddConversationOption(conversation, "I'm " .. GetName(Spawn) .. ". Who might you be", "dlg_0_0")
	AddConversationOption(conversation, "My name is my own, witch. Leave me be!", "dlg_end")
	StartConversation(conversation, NPC, Spawn, "Mmmm. Something wicked this way comes... Why hello there young broodling, I've not seen you here before. Tell me your name.")
end
	
function dlg_end(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim042.mp3", "", "", 3418892585, 1985428776, Spawn)
	StartConversation(conversation, NPC, Spawn, "Suit yourself, but I promise you it's in your best interest to speak with me. A young broodling like yourself won't last long here without a little help from an elder.")
end

function dlg_0_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim002.mp3", "", "", 2641409844, 3774141075, Spawn)
	AddConversationOption(conversation, "Perhaps I could be of service.", "dlg_0_1")
	AddConversationOption(conversation, "Alas, I couldn't care less.")
	StartConversation(conversation, NPC, Spawn, "Well aren't you a shining example of our progeny. You may simply call me Vrim. I would love to take a moment and share with you a tale about our forefathers, but alas, I've other pressing matters that simply must be resolved.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim003.mp3", "", "", 918892922, 4039686777, Spawn)
	AddConversationOption(conversation, "What is it you would have me do?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Excellent, I see you know just whom to make friends with. Make enemies with the wrong sort of folk here and you'll find yourself killed in a most gruesome, yet interesting manner.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim004.mp3", "", "", 159295642, 1874003311, Spawn)
	AddConversationOption(conversation, "Sounds interesting.", "dlg_0_3")
	AddConversationOption(conversation, "On second thought. This doesn't sound like my sort of thing.")
	StartConversation(conversation, NPC, Spawn, "Oh, nothing much really, just a little extortion and a smidge of blackmail.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim005.mp3", "", "", 1789681265, 978357776, Spawn)
	AddConversationOption(conversation, "Why don't you just confront him and demand the package back?", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Indeed, doesn't it? There's a man in the local pub here. A dockworker by the name of Melvin Dunford. It has come to my attention that he has stolen some rather important alchemy components from a shipment that I was about to... receive.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim006.mp3", "", "", 3171651020, 2225852779, Spawn)
	AddConversationOption(conversation, "Where do I come in?", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Oh, believe me, I did. He claimed to not know of what I spoke, though... I could see it in his eyes and smell it on him! He's got those components alright, he's just hidden them from me and is playing dumb!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HaveComponents(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim008.mp3", "", "", 3349262936, 3154850258, Spawn)
		AddConversationOption(conversation, "Yes, here they are.", "dlg_0_5")
		StartConversation(conversation, NPC, Spawn, "You return, tell me. Did you recover the components?")
	
	elseif HasQuest(Spawn, QUEST_1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim008.mp3", "", "", 3349262936, 3154850258, Spawn)
		AddConversationOption(conversation, "No, not yet.")
		StartConversation(conversation, NPC, Spawn, "You return, tell me. Did you recover the components?")
	end
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_1, 3)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim009.mp3", "", "", 197335648, 1866625970, Spawn)
	AddConversationOption(conversation, "Thank you, Brood Matron.", "dlg_1_0")
	StartConversation(conversation, NPC, Spawn, "Oh, you are too good to me" ..GetName(Player).. "! Too good. I see you possess the bold intrepidity common to the highest pedigree of our kind. You will go far young one. Very far indeed.")
end

--[[-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----2nd Quest "He said, he said" ------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------]]
function dlg_1_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim017.mp3", "", "", 2455418157, 3928748864, Spawn)
	AddConversationOption(conversation, "I know of Barbarians. What of them?", "dlg_1_3")
	AddConversationOption(conversation, "A pity.", "dlg_1_3")
	AddConversationOption(conversation, "They don't seem so bad.", "dlg_1_3")
	AddConversationOption(conversation, "If we killed them all, then perhaps we Iksar could live by ourselves...", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "You may have noticed several large squishy things lumbering about this place. Those are called Barbarians, apparently the Overlord has decreed that we must share this place with them.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim018.mp3", "", "", 3389510546, 879079764, Spawn)
	AddConversationOption(conversation, "Indeed. Please continue.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "That's what I said! It would make things much simpler! Cut down on the overcrowding, pollution... But alas, no. Something about genocide not being permitted within city limits or some such nonsense. A shame really.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim019.mp3", "", "", 168409045, 576187712, Spawn)
	AddConversationOption(conversation, "Tell me more.", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Yes, well they have their uses. You see, our neighbors here are highly suggestible and prone to acting on their feelings, often neglecting simple logic. A fact that we Iksar are only so inclined to take advantage of.")
end	

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim020.mp3", "", "", 2951123714, 3814243721, Spawn)
	AddConversationOption(conversation, "Anything else?", "OfferQuest2")
	AddConversationOption(conversation, "Lying to a bunch of barbarian doesn't sound like anything I want to be a part of. Good day.")
	StartConversation(conversation, NPC, Spawn, "Oh, it's not that hard really. I recently heard that someone has ransacked the office of Guard Captain Issik here in the Scale Yard and a Barbarian was seen leaving the scene of the crime. Find a brute named Tristan O'Rilley and tell him that another Barbarian, Wesley Tundrafoot fingered him as the culprit. After you tell Tristan, find Wesley and tell him Tristan has accused him of the same crime.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	OfferQuest(NPC, Spawn, QUEST_2)
end


function HeSaidComplete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim022.mp3", "", "", 1574173658, 1243270308, Spawn)
	AddConversationOption(conversation, "With any luck, they will be at each other's throats soon.", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "You return. Were you successful?")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_2, 3)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim023.mp3", "", "", 1821929117, 1132414130, Spawn)
	AddConversationOption(conversation, "Um, how do you mean.", "dlg_2_1")
	StarttConversation(conversation, NPC, Spawn, "Splendid work, broodling. You've turned those two into bitter enemies with a minimum amount of effort. Do you see the inherent greatness in our kind my silver-tongued catalyst of chaos?")
end


--[[-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----3rd Quest "Paying homage to the past"----------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------]]


function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim024.mp3", "", "", 1213078111, 3741061033, Spawn)
	AddConversationOption(conversation, "Go on.", "dlg_2_2")
	AddConversationOption(conversation, "You call this thriving?")
	StartConversation(conversation, NPC, Spawn, "The Iksar have overcome numerous calamities from enslavement and persecution to civil war. Empires rose and were toppled. Majestic cities founded only to be razed by our enemies. Despite all of that we still survive and continue to thrive.")
	end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim025.mp3", "", "", 1015226008, 2593758640, Spawn)
	AddConversationOption(conversation, "Tell me more!", "dlg_2_3")
	AddConversationOption(conversation, "Um, I'm not looking for any sort of history lesson. Do you have anything else I could do?")
	StartConversation(conversation, NPC, Spawn, "Yes, it may be true that many of our kind now live in destitution, but it is Iksar like yourself, young adventurer, that we look to help our kind once again achieve greatness. ")
end


function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim026.mp3", "", "", 3166224232, 2882270872, Spawn)
	AddConversationOption(conversation, "Continue.", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "I haven't the time to give you an accurate history of the Iksar at this time, though it would behoove you to learn more about your forefathers. We have overcome perils and accomplished feats no other race could come close to achieving! ")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim027.mp3", "", "", 945509375, 1619107607, Spawn)
	AddConversationOption(conversation, "I will do as you ask.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "I was about to perform a ritual that is often performed to reflect upon the history of our ancestors. However, I believe it would be more beneficial if you performed the ritual. Here, take this tome. Read the passage I have bookmarked and perform the tasks it mentions.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	OfferQuest(NPC, Spawn, QUEST_3)
end

function RitualComplete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_3, 6)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim029.mp3", "", "", 1615497286, 3154360016, Spawn)
	AddConversationOption(conversation, "I have gained knowledge of the trials and tribulations of our brethren. We have both prospered and suffered. That being said, I wish to know more.", "dlg_3_1")
	AddConversationOption(conversation, "I have learned nothing but a history of follies made by those too ineffective to stay in power for any amount of time. Where they failed, I will thrive.", "dlg_3_0")
	AddConversationOption(conversation, "I have gained a snakebite, an hour of community service picking up trash around the neighborhood, and a better understanding of this city's canal system.", "dlg_3_a")
	StartConversation(conversation, NPC, Spawn, "You needn't say anything. I can see in your eyes that you have completed the ritual. What do you feel you have gained?")
end

--[[-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----4th Quest "Kill or be killed"------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------]]
function dlg_3_a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim031.mp3", "", "", 3372014983, 2078752954, Spawn)
	AddConversationOption(conversation, "I will consider this. What is it you wish me to do?", "dlg_3_1")
	AddConversationOption(conversation, "I need to get going now.")
	StartConversation(conversation, NPC, Spawn, "Perhaps you are right, Trepid. Though perhaps you do not yet have the... perspective to see larger picture. Learn from the mistakes of the past and use that knowledge to crush your enemies.")
end

function dlg_3_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim032.mp3", "", "", 1914572947, 207925594, Spawn)
	AddConversationOption(conversation, "Indeed I do. Tell me more.", "dlg_3_1")
	AddConversationOption(conversation, "I need to get going now.")
	StartConversation(conversation, NPC, Spawn, "I find your mockery... distasteful. You should think twice before dismissing the accomplishments of those before you. After all, you might not be here if it were not for them. Regardless, I can tell by your restless nature that you wish to sink your teeth into something... a bit more physical, yes? I have just the task for you.")
end
	
function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim033.mp3", "", "", 3997214161, 2851942903, Spawn)
	AddConversationOption(conversation, "I suppose I could do that.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Poor Issik is so busy trying to track down the criminal that ransacked his office that he hasn't had time to take care of some of his... administrative duties. I'm sure you could help him, couldn't you?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim034.mp3", "", "", 2500219231, 1556258908, Spawn)
	AddConversationOption(conversation, "And how am I supposed to do that? I'm not even a member of the Militia!", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Well, it seems one of his men, Anthony Glavias, I believe, has proven to be most incompetent. Rather than deal with piles of transfer notices and disciplinary forms and other such nonsense, I would have you simply relieve him of his duty as a member of the Militia.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim035.mp3", "", "", 3506678968, 774551287, Spawn)
	AddConversationOption(conversation, "But... won't the other guards notice? Won't they care?", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "With a sword! Or a bow... or lightning bolt. A dull spoon for all I care. Simply put, he must be killed.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	OfferQuest(NPC, Spawn, QUEST_4)
end

function Quest5NotComplete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/quest_vrim_finish_quest4_8b5005c8.mp3", "You return to me with no blood on your claws? Finish your task and then return to me.", "", 2222768719, 617970237, Spawn)
	StartConversation(conversation, NPC, Spawn, "You return to me with no blood on your claws? Finish your task and then return to me.")
end
	
function AnthonyDead(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim037.mp3", "", "", 4005568891, 3645423130, Spawn)
	AddConversationOption(conversation, "He's dead, Vrim.", "dlg_3_5")
	StartConversation(conversation, NPC, Spawn, "Well? Have you paid a visit to Mr. Glavias? How did he take the news of his early retirement?")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_4, 2)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim038.mp3", "", "", 1894531159, 2959157043, Spawn)
	AddConversationOption(conversation, "I still can't believe no one cared!", "dlg_notcollected")
	AddConversationOption(conversation, "He was weak and unfit to serve in the Militia. Weakness must not be tolerated.", "dlg_3_6")
	StartConversation(conversation, NPC, Spawn, "Good, then that's that. A replacement should arrive in a couple days. Let's hope for both our sakes that this one proves to be a little more useful.")
end
	
function dlg_3_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim039.mp3", "", "", 1170740682, 3182778261, Spawn)
	AddConversationOption(conversation, "Any one else need... reassignment?", "dlg_3_7")
	StartConversation(conversation, NPC, Spawn, "Well said! Most well said! I say, you are indeed destined for greatness!")
end

function dlg_3_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	OfferQuest(NPC, Spawn, QUEST_5)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim041.mp3", "", "", 4228891781, 3096479379, Spawn)
	AddConversationOption(conversation, "Strike-tail!")
	StartConversation(conversation, NPC, Spawn, "Oh," ..GetName(Player).. ". You have been most resourceful in everything that I have asked you to do. I'm afraid that I must bid you farewell for now though. I must see to the other Iksar arriving here in Freeport. Go speak to Enforcer Kurdek in the Sprawl. He could most certainly use your help. Strike-tail young one. You do us proud!")
end
