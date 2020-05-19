--[[
	Script Name	: SpawnScripts/Starcrest/MaareonaLudimintium.lua
	Script Purpose	: Maareona Ludimintium <Erudite Mentor>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Race ID's
local Erudite = 3

-- Quest ID's
local MEETING_WITH_CAYAN = 316 -- was 32
local INFORMATION_MERCHANTS = 318 -- was 33
local HIDDEN_TREASURES = 320 -- was 34
local CONFRONTATION = 321 -- was 35
local DELIVERING_NEWS = 322

-- Item ID's
local NULLIFICATION_STONE = 10087
local SOUL_SPIKE = 13134


-- players name was
-- Jinoira


function spawn(NPC)
   ProvidesQuest(NPC, MEETING_WITH_CAYAN)
   ProvidesQuest(NPC, HIDDEN_TREASURES)
   ProvidesQuest(NPC, CONFRONTATION)
   ProvidesQuest(NPC, DELIVERING_NEWS)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
	if GetRace(Spawn) == Erudite then
		Begin(NPC, Spawn)
	else
		NotErudite(NPC, Spawn)
	end
end

function Begin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, MEETING_WITH_CAYAN) then
		if HasCompletedQuest(Spawn, INFORMATION_MERCHANTS) then
			if HasCompletedQuest(Spawn, HIDDEN_TREASURES) then
				if HasCompletedQuest(Spawn, CONFRONTATION) then
					if not HasQuest(Spawn, DELIVERING_NEWS) and not HasCompletedQuest(Spawn, DELIVERING_NEWS) then
						dlg_56_3(NPC, Spawn)
					end
				elseif HasQuest(Spawn, CONFRONTATION) then
					IsItDestroyedYet(NPC, Spawn, conversation)
				else
					FoundPackageYet(NPC, Spawn)
				end
			elseif HasQuest(Spawn, HIDDEN_TREASURES) then
				FoundPackageYet(NPC, Spawn)
			else
				GottenTheInformationYet(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, INFORMATION_MERCHANTS) then
			GottenTheInformationYet(NPC, Spawn, conversation)
		else
			GottenTheInformationYet(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, MEETING_WITH_CAYAN) then
		GottenTheInformationYet(NPC, Spawn, conversation)
	else
		NoGreaterQuest(NPC, Spawn, conversation)
   end
end

function NotErudite(NPC, Spawn)
	Say(NPC, "I suppose I appreciate your interest in speaking with me, but I am here as a service to those of my own kind.", Spawn)
end

-------------------------------------------------------------------------------------------------------------------
--                            ERUDITE MENTOR QUEST 1
-------------------------------------------------------------------------------------------------------------------

function NoGreaterQuest(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona001.mp3", "", "bow", 1982809476, 3400870964, Spawn)
	AddConversationOption(conversation, "Hello, I am " .. GetName(Spawn) .. ".", "dlg_20_1")
	StartConversation(conversation, NPC, Spawn, "There is no greater quest than the truth. Welcome to Starcrest Commune, Erudite. I am Maareona.")
end

function dlg_20_1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona002.mp3", "", "", 284309716, 754775848, Spawn)
   AddConversationOption(conversation, "Truth.", "dlg_21_2")
   AddConversationOption(conversation, "Power.", "dlg_21_2")
   AddConversationOption(conversation, "Enlightenment.", "dlg_21_2")
   AddConversationOption(conversation, "I don't know.", "dlg_20_2")
   StartConversation(conversation, NPC, Spawn, "That you are. Tell me, " .. GetName(Spawn) .. ", what do you seek?")
end

function dlg_20_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona003a.mp3", "", "", 337061547, 3048757721, Spawn)
   AddConversationOption(conversation, "What do you seek?", "dlg_20_3")
   StartConversation(conversation, NPC, Spawn, "Good, it takes a long time to build the resolve to know what you seek. I would be concerned if you thought you already knew.")
end

function dlg_20_3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona006.mp3", "", "", 1647970244, 231936640, Spawn)
   AddConversationOption(conversation, "Why is that?", "dlg_20_4")
   StartConversation(conversation, NPC, Spawn, "Truth. Truth and Enlightenment. I seek individual enlightenment, and racial enlightenment, and eventually sentient enlightenment. I do not expect to succeed anytime soon, but I will succeed. Racial enlightenment is proving to be most difficult at this time, unfortunately.")
end

function dlg_20_4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona007.mp3", "", "", 933673315, 142645817, Spawn)
   AddConversationOption(conversation, "That sounds like a reasonable goal.", "dlg_20_6")
   AddConversationOption(conversation, "That sounds a little intolerant.", "dlg_20_5")
   StartConversation(conversation, NPC, Spawn, "Well... I am not sure if you've been to Freeport recently, but there is a great ideological schism between the Erudites of our city and those of Freeport. Part of what I do here is work with Erudites who share those views and attempt to bring them around to a more, well, compassionate view of things.")
end

function dlg_20_5(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona008.mp3", "", "", 1279054800, 1194830102, Spawn)
   AddConversationOption(conversation, "I suppose that sounds reasonable.", "dlg_20_6")
   StartConversation(conversation, NPC, Spawn, "Views of all kinds I can tolerate. It is actions that I have trouble accepting. Those who subscribe to the views of Freeport commonly turn inappropriate views into inappropriate--and illegal--actions. And, yes, it is true, I cannot tolerate actions such as those. If I work with these people prior to actions of this type then Qeynos is stronger.")
end

function dlg_20_6(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona009.mp3", "", "", 2014412725, 134790625, Spawn)
   AddConversationOption(conversation, "Is there anything I can do to help?", "dlg_20_7")
   StartConversation(conversation, NPC, Spawn, "It is. We've given this much thought and this is the only acceptable solution, we cannot remain idle when Freeport gains influence among the citizens of Qeynos.")
end

function dlg_20_7(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona010.mp3", "", "", 731226683, 4123988397, Spawn)
   AddConversationOption(conversation, "What would you like me to do?", "dlg_21_8")
   AddConversationOption(conversation, "Do you have anything a little more exciting and adventurous?", "dlg_20_8")
   StartConversation(conversation, NPC, Spawn, "There is always some way an Erudite such as yourself can help the cause. I am investigating a package that was recently delivered to Qeynos that was thought to contain a heretical relic of past ages. Whether or not the relic itself contains some curse that would promote its ideals, or would just serve to attract those who would do the same, we must rid Qeynos of such an object.")
end

function dlg_20_8(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona011.mp3", "", "", 296165667, 3976111075, Spawn)
   AddConversationOption(conversation, "All right, thank you.")
   StartConversation(conversation, NPC, Spawn, "Certainly. Well, I personally don't but I have friends who may. Go speak with Rujiarmo Oolamein in the Peat Bog. I am sure he could use any help you can offer.")
end

function dlg_21_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona003.mp3", "", "", 612001961, 3121169439, Spawn)
   AddConversationOption(conversation, "Yes.", "PerhapsYouWill")
   AddConversationOption(conversation, "No.", "dlg_21_3")
   AddConversationOption(conversation, "I don't know.", "dlg_21_3")
   StartConversation(conversation, NPC, Spawn, "Will you achieve it?")
end

function PerhapsYouWill(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "What do you seek?", "dlg_20_3")
   StartConversation(conversation, NPC, Spawn, "Perhaps you will.")
end

function dlg_21_3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona004.mp3", "", "", 738787463, 3083155196, Spawn)
   AddConversationOption(conversation, "What do you seek?", "dlg_20_3")
   StartConversation(conversation, NPC, Spawn, "It would seem not. Perhaps you should seek something else then.")
end

function dlg_21_4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona006.mp3", "", "", 1647970244, 231936640, Spawn)
   AddConversationOption(conversation, "Why is that?", "dlg_21_5")
   StartConversation(conversation, NPC, Spawn, "Truth. Truth and Enlightenment. I seek individual enlightenment, and racial enlightenment, and eventually sentient enlightenment. I do not expect to succeed anytime soon, but I will succeed. Racial enlightenment is proving to be most difficult at this time, unfortunately.")
end

function dlg_21_8(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona012.mp3", "", "", 1465004350, 3954796796, Spawn)
   AddConversationOption(conversation, "Why is this important?", "dlg_21_9")
   StartConversation(conversation, NPC, Spawn, "As part of my job I routinely come in contact with various people of, uhm, ideologies not concurrent with my own. Although I eventually strive for enlightenment of all sentient beings, for I employ such people to help me with my first two goals: my own enlightenment and that of my race.")
end

function dlg_21_9(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona013.mp3", "", "", 3182974274, 1240192562, Spawn)
   AddConversationOption(conversation, "And once I've found him?", "dlg_21_10")
   StartConversation(conversation, NPC, Spawn, "Sorry, I just wanted to prepare you before you meet who I am sending you to. I would like you to speak with a human named Cayan Sable. Behind the armor shop, near its north western corner, there is a bench leaning against the wall. You can climb up it to find Cayan.")
end

function dlg_21_10(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona014.mp3", "", "", 3260022583, 3167071006, Spawn)
   AddConversationOption(conversation, "I will speak to him.", "OfferQuest1")
   StartConversation(conversation, NPC, Spawn, "Tell him we need to find the whereabouts of a package. It was delivered recently to someone by the name of Oolium Artanaes. We were watching him until he fled into South Qeynos. Because of the path he took, our agent could not follow him without revealing himself. Cayan will have friends who can help us find him, and learn the whereabouts of the package.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, MEETING_WITH_CAYAN)
end

function GottenTheInformationYet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona016.mp3", "", "", 1380727633, 48771667, Spawn)
	
	if (HasCompletedQuest(Spawn, INFORMATION_MERCHANTS) and not HasCompletedQuest(Spawn, HIDDEN_TREASURES)) or (HasQuest(Spawn, INFORMATION_MERCHANTS) and GetQuestStep(Spawn, INFORMATION_MERCHANTS) == 3) then
		AddConversationOption(conversation, "Yes, I have.", "GotInformation")
	else
		AddConversationOption(conversation, "No, I haven't.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you gotten the information yet?")
end

--------------------------------------------------------------------------------------------------------------------
--                   ERUDITE MENTOR QUEST 2
--------------------------------------------------------------------------------------------------------------------

function GotInformation(NPC, Spawn)
	if HasQuest(Spawn, INFORMATION_MERCHANTS) then
		SetStepComplete(Spawn, INFORMATION_MERCHANTS, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona017.mp3", "", "", 4022802579, 2271189733, Spawn)
	AddConversationOption(conversation, "Here you go.", "dlg_45_2")
	StartConversation(conversation, NPC, Spawn, "Wonderful. Let me see it.")
end

---------------------------------------------------------------------------------------------------------------------
--					ERUDITE MENTOR QUEST 3
---------------------------------------------------------------------------------------------------------------------

function dlg_45_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona018.mp3", "", "", 4212736399, 3852768396, Spawn)
	AddConversationOption(conversation, "Couldn't the package still be recovered?", "dlg_45_3")
	StartConversation(conversation, NPC, Spawn, "Hmmm... this may be bad news. If he gave up the shipment that means we may never know to whom it was meant to finally be delivered. Worse still, who knows who may stumble upon the relic now. We were so close!")
end

function dlg_45_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona019.mp3", "", "", 2700828927, 1097914142, Spawn)
	AddConversationOption(conversation, "I can do that.", "dlg_45_4")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "I don't know... not likely- actually... there are a pair of grates in the water ways that may have stopped the package. I don't know how big the package was, but these grates may have stopped it. I'll get one of my contacts to check the grates in Nettleville, I'd like you to check the grates in here in Starcrest. What do you say?")
end

function dlg_45_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona020.mp3", "", "", 3437539307, 3210013494, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "Good. I know it is a lot to ask, but at a time like this I think it is best to put aside any fears. You'll have to go to the ferryway near the mariner's bells in the eastern side of Starcrest Commune. Once there swim to the grates and see if any packages were held up on them. It isn't very likely, but it is definitely worth taking a look.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HIDDEN_TREASURES)
end

function FoundPackageYet(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona021.mp3", "", "", 2659241094, 1582601118, Spawn)
	
	if (HasCompletedQuest(Spawn, HIDDEN_TREASURES) and not HasCompletedQuest(Spawn, 35)) or (HasQuest(Spawn, HIDDEN_TREASURES) and GetQuestStep(Spawn, HIDDEN_TREASURES) == 2) then
		AddConversationOption(conversation, "Yes, I have its contents here. And an unsigned delivery receipt.", "FoundPackage")
	else
		AddConversationOption(conversation, "Not yet, no.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you found the package?")
end

function FoundPackage(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona022.mp3", "", "", 560393626, 4096174929, Spawn)
	AddConversationOption(conversation, "It's hard to read and soggy, but here.", "dlg_49_2")
	StartConversation(conversation, NPC, Spawn, "The receipt was with it? Wonderful!")
end

function dlg_49_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona023.mp3", "", "", 1854168160, 123679709, Spawn)
	AddConversationOption(conversation, "And...?", "dlg_49_3")
	StartConversation(conversation, NPC, Spawn, "Hmm, that is fine. It was not the ink that was important. I can sense who the intended recipient was. It will only take a moment...")
end

function dlg_49_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona024.mp3", "", "", 2925464109, 438548200, Spawn)
	AddConversationOption(conversation, "Here you go.", "dlg_49_4")
	StartConversation(conversation, NPC, Spawn, "Velderoth Malraen. He resides here in Starcrest. Now, let's see the package.")
end

function dlg_49_4(NPC, Spawn)
	if HasQuest(Spawn, HIDDEN_TREASURES) then
		SetStepComplete(Spawn, HIDDEN_TREASURES, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona025.mp3", "", "", 4023924866, 963404506, Spawn)
	AddConversationOption(conversation, "A Soul Spike?", "dlg_49_5")
	StartConversation(conversation, NPC, Spawn, "Oh my! Boxes like this were made to hold objects of great metaphysical potential. Oh dear... these symbols... this box contains a Soul Spike.")
end

-------------------------------------------------------------------------------------------------------------
--						QUEST 4
-------------------------------------------------------------------------------------------------------------

function dlg_49_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona026.mp3", "", "", 290912951, 2000708937, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "dlg_49_6")
	StartConversation(conversation, NPC, Spawn, "An ancient weapon of the heretic. Some say it has enormous power, others say it is for ritual only, others say it comes from a different plane of existence... all we know is it is a sure sign of a heretic. Velderoth Malraen is that heretic. He must not be allowed to stay a moment longer in Qeynos.")
end

function dlg_49_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona027.mp3", "", "", 3129182900, 3935897138, Spawn)
	AddConversationOption(conversation, "What do I need to do?", "dlg_49_7")
	StartConversation(conversation, NPC, Spawn, "We must make this Soul Spike public. To most it will mean very little, but to any heretic its destruction will be known.")
end

function dlg_49_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona028.mp3", "", "", 2750149120, 800404761, Spawn)
	AddConversationOption(conversation, "What if Velderoth confronts me?", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Speak with Cayan. There is a stand, he will know of what I speak. You will retrieve the stand from him. Take the stand into central Starcrest, near the fountain, and place it there. When it is destroyed Velderoth will feel it, he will flee.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, CONFRONTATION)
end

function TapIt(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Nullification Stone
	-- Soul Spike
	SummonItem(Spawn, NULLIFICATION_STONE)
	SummonItem(Spawn, SOUL_SPIKE)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona030.mp3", "", "", 720107384, 4004540442, Spawn)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, NPC, Spawn, "Tap it with this stone. The rest will attend to itself. Again, do not be wary of Velderoth.")
end

function IsItDestroyedYet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona031.mp3", "", "", 2023690647, 3266928269, Spawn)
	
	if HasQuest(Spawn, CONFRONTATION) then
		if GetQuestStep(Spawn, CONFRONTATION) == 3 then
			AddConversationOption(conversation, "Yes. Velderoth came.", "dlg_56_1")
		else
			if not HasItem(Spawn, SOUL_SPIKE) then
				AddConversationOption(conversation, "I need the Soul Spike", "NeedSoulSpike")
			end
		
			if not HasItem(Spawn, NULLIFICATION_STONE) then
				AddConversationOption(conversation, "I need the Nullification Stone.", "NeedNullificationStone")
			end
		end
	end
	
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Is it destroyed?")
end

function NeedSoulSpike(NPC, Spawn)
	SummonItem(Spawn, SOUL_SPIKE)
	
	if not HasItem(Spawn, NULLIFICATION_STONE) then
		SummonItem(Spawn, NULLIFICATION_STONE)
	end
end

function NeedNullificationStone(NPC, Spawn)
	SummonItem(Spawn, NULLIFICATION_STONE)
	
	if not HasItem(Spawn, SOUL_SPIKE) then
		SummonItem(Spawn, SOUL_SPIKE)
	end
end

function dlg_56_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona032.mp3", "", "", 632600853, 3687579453, Spawn)
	AddConversationOption(conversation, "Yes, that much seems obvious.", "dlg_56_2")
	StartConversation(conversation, NPC, Spawn, "That is not surprising. He knows he has been found out and will not return. Another heretic fleeing to the lands of Freeport. What an ironic name... Jinoira, this news is rather big for all citizens of Qeynos, but, to Erudites, it is even bigger. We struggle to maintain our image among the other races here in Qeynos.")
end

function dlg_56_2(NPC, Spawn)
	SetStepComplete(Spawn, CONFRONTATION, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona033.mp3", "", "", 3274371824, 4166492978, Spawn)
	AddConversationOption(conversation, "I understand. Where do we go from here?", "dlg_56_3")
	AddConversationOption(conversation, "I thought you were a seeker of the truth?")
	StartConversation(conversation, NPC, Spawn, "It is in our best interest as a race, and as citizens of this city, to keep this information to ourselves. Velderoth may indirectly cause more damage to our city if news of this gets out. The high men of Qeynos cannot have their names soiled by the actions of this individual, if anyone asks of your public encounter with Velderoth you are to claim that he was an illusion of your own creation, that the Soul Spike and he were merely meant as entertainment. Say no more of this to anyone.")
end

function dlg_56_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona035.mp3", "", "", 1033522094, 3989983909, Spawn)
	AddConversationOption(conversation, "I understand.", "dlg_56_4")
	StartConversation(conversation, NPC, Spawn, "I have a friend in the Peat Bog. He is the one person you will tell about this incident. He will do with this information what he must. After you have told him do not speak to him of it again.")
end

function dlg_56_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona036.mp3", "", "", 301046375, 3178279586, Spawn)
	AddConversationOption(conversation, "I will find him.", "OfferDeliveringNews")
	StartConversation(conversation, NPC, Spawn, "Good. His name is Rujiarmo Oolamein. He will have work to give you, I am certain.")
end

function OfferDeliveringNews(NPC, Spawn)
	OfferQuest(NPC, Spawn, DELIVERING_NEWS)
end