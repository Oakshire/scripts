--[[
	Script Name	: SpawnScripts/Nettleville/LakoshaMaera.lua
	Script Purpose	: Lakosha Maera <Kerra Mentor>
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

-- Race ID's
local KERRA = 11

-- Quest ID's
local RITUAL_OF_HEALTH = 300 -- was 37
local CURIOUS_FINDINGS = 301 -- was 38
local REQUIRED_COMPONENTS = 302 -- was 39
local UNFORTUNATE_MISTAKES = 303 -- was 40
local TO_THE_SOURCE = 304 -- was 41

function spawn(NPC)
	ProvidesQuest(NPC, RITUAL_OF_HEALTH)
	ProvidesQuest(NPC, CURIOUS_FINDINGS)
	ProvidesQuest(NPC, UNFORTUNATE_MISTAKES)
	ProvidesQuest(NPC, TO_THE_SOURCE)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, RITUAL_OF_HEALTH) then
		if HasCompletedQuest(Spawn, CURIOUS_FINDINGS) then
			if HasCompletedQuest(Spawn, REQUIRED_COMPONENTS) then
				if HasCompletedQuest(Spawn, UNFORTUNATE_MISTAKES) then
					if HasCompletedQuest(Spawn, TO_THE_SOURCE) then
					
					elseif HasQuest(Spawn, TO_THE_SOURCE) then
						SpokenWithLithYet(NPC, Spawn)
					else
						StoppedRitualYetYes(NPC, Spawn)
					end
				elseif HasQuest(Spawn, UNFORTUNATE_MISTAKES) then
					if GetQuestStep(Spawn, UNFORTUNATE_MISTAKES) == 1 then
						StoppedRitualYetNo(NPC,  Spawn)
					elseif GetQuestStep(Spawn, UNFORTUNATE_MISTAKES) == 2 then
						StoppedRitualYetYes(NPC,  Spawn)
					end
				else
					FindOutWhatWasInSoilYes(NPC, Spawn)
				end
			elseif HasQuest(Spawn, REQUIRED_COMPONENTS) then
				if GetQuestStep(Spawn, REQUIRED_COMPONENTS) >= 1 and GetQuestStep(Spawn, REQUIRED_COMPONENTS) <= 3 then
					FindOutWhatWasInSoilNo(NPC, Spawn)
				elseif GetQuestStep(Spawn, REQUIRED_COMPONENTS) == 5 then
					FindOutWhatWasInSoilYes(NPC, Spawn)
				end
			else
				FindOutWhatWasInSoilNo(NPC, Spawn)
			end
		elseif HasQuest(Spawn, CURIOUS_FINDINGS) then
			FindOutWhatWasInSoilNo(NPC, Spawn)
		else
			GetSoilYetYes(NPC, Spawn)
		end
	elseif HasQuest(Spawn, RITUAL_OF_HEALTH) then
		if GetQuestStep(Spawn, RITUAL_OF_HEALTH) == 4 then
			GetSoilYetYes(NPC, Spawn)
		else
			GetSoilYetNo(NPC, Spawn)
		end
	else
		if GetRace(Spawn) == KERRA then
			DoYouSeekDirection(NPC, Spawn)
		else
		  PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/qst_lakosha_maera_notkerra_4ac0f123.mp3", "I am sorry, but I am not in a mood to speak.", "", 2967268605, 2864900763, Spawn)
	  end
	end
end

--------------------------------------------------------------------------------------------------------------------
--								  QUEST 1
--------------------------------------------------------------------------------------------------------------------

function DoYouSeekDirection(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera001.mp3", "", "", 3108156461, 1871862413, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_15_1")
	StartConversation(conversation, NPC, Spawn, "Greetings. Do you seek direction?")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera002.mp3", "", "", 216566417, 180925659, Spawn)
	AddConversationOption(conversation, "How do rituals help?", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "Direction. Purpose. Meaning. I have seen our people struggle with it from time to time, some unaware. I help, with words and friendship, but mostly with rituals.")
end


function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera003.mp3", "", "", 3025633439, 1456244576, Spawn)
	AddConversationOption(conversation, "What kind of rituals do you teach?", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "They give us something to hold on to that we know others are also holding on to. It helps, and we can use that help as little or as much as we need to.")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera004.mp3", "", "", 1100012524, 2857852328, Spawn)
	AddConversationOption(conversation, "I am interested in learning the ritual.", "dlg_15_4")
	AddConversationOption(conversation, "I would prefer a more challenging task.", "dlg_16_4")
	StartConversation(conversation, NPC, Spawn, "All kinds, old and new. They have helped our people--well, some of our people--for ages. I could teach a simple one to you if you like. It may or may not help you, but it is easy to learn and almost anyone can do it. If a ritual does not appeal to you, and you wish something more challenging, I believe I know where you can find that as well.")
end

function dlg_15_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera006.mp3", "", "", 960364760, 2384294721, Spawn)
	AddConversationOption(conversation, "How much dirt do I need?", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "I am pleased to hear that. The Ritual of Hearth is simple, and it is a means of becoming acquainted with one's home. It requires only the gathering of soil from three separate places where you dwell. In Nettleville the most appropriate places are the tree just south of here--at the western end of the Market Row, the tree near the entrance to the Peat Bog, and around the gate that leads into Qeynos.")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera005.mp3", "", "", 3531677818, 1764879381, Spawn)
	AddConversationOption(conversation, "I will seek him out.")
	AddConversationOption(conversation, "On second though, I would like to learn the ritual.", "dlg_15_4")
	StartConversation(conversation, NPC, Spawn, "That task I cannot provide, but I can put you on a path to find it. In the Peat Bog, a friend of mine has been doing some research. His name is Nareh Lith, and he is always accepting of proposed help.")
end

function GetSoilYetNo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera008.mp3", "", "", 3730752906, 155519371, Spawn)
	AddConversationOption(conversation, "No, I have not.")
	StartConversation(conversation, NPC, Spawn, "Have you collected the soil?")
end

function GetSoilYetYes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera008.mp3", "", "", 3730752906, 155519371, Spawn)
	AddConversationOption(conversation, "Yes, I have.", "dlg_19_1")
	StartConversation(conversation, NPC, Spawn, "Have you collected the soil?")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera009.mp3", "", "", 1477384079, 55827537, Spawn)
	AddConversationOption(conversation, "Ok. [let the soil pass between your fingers]", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Good. Now, let it pass between your fingers and fall to the ground at your feet.")
end


function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera010.mp3", "", "", 3892927672, 816906452, Spawn)
	AddConversationOption(conversation, "I do not feel any different.", "dlg_19_3")
	AddConversationOption(conversation, "I feel more at home already!", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "Good, good... the ritual is complete. Nettleville now knows you, and perhaps you now know it.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, RITUAL_OF_HEALTH)
end

--------------------------------------------------------------------------------------------------------------------
--								  QUEST 2
--------------------------------------------------------------------------------------------------------------------

function dlg_19_3(NPC, Spawn)
	if HasQuest(Spawn, RITUAL_OF_HEALTH) then
		SetStepComplete(Spawn, RITUAL_OF_HEALTH, 4)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera011.mp3", "", "", 877184864, 471092130, Spawn)
	AddConversationOption(conversation, "Yes, I did.", "dlg_19_4")
	StartConversation(conversation, NPC, Spawn, "For some the change is instant. For others it takes more time. Take this coin, it too is part of a ritual. This one of welcoming. Hm, did you collect this soil from where I specified?")
end

function dlg_19_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera012.mp3", "", "", 365783891, 519851629, Spawn)
	AddConversationOption(conversation, "What do you need?", "dlg_19_5")
	AddConversationOption(conversation, "Sorry, I can't right now.")
	StartConversation(conversation, NPC, Spawn, "That is interesting. This soil is not the proper color. Hmm, and it smells a little odd. Imolau, this is a little concerning. This soil looks like someone was in the middle of the Pa'Rok, but there are elements here that do not belong. It may be nothing, but it also may be something. Would you do me a favor?")
end

function dlg_19_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera013.mp3", "", "", 172847039, 638167001, Spawn)
	AddConversationOption(conversation, "I will do that now.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Could you take some of this soil to the Spiritist? Laharn Rahai is his name, you can find him just northeast of the armor shop here in Nettleville. Ask him if he can find out what is in the soil.")
end

function FindOutWhatWasInSoilNo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera014.mp3", "", "", 1143283618, 2442308330, Spawn)
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Did the spiritist find out what was in the soil?")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, CURIOUS_FINDINGS)
end

--------------------------------------------------------------------------------------------------------------------
--								  QUEST 3
--------------------------------------------------------------------------------------------------------------------

function FindOutWhatWasInSoilYes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera014.mp3", "", "", 1143283618, 2442308330, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_28_1")
	StartConversation(conversation, NPC, Spawn, "Did the spiritist find out what was in the soil?")
end

function dlg_28_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera015.mp3", "", "", 681420516, 1462428671, Spawn)
	AddConversationOption(conversation, "Laharn first sent me to the alchemists to attempt to enlist their help. They refused, stating that they were too busy.", "dlg_28_2")
	StartConversation(conversation, NPC, Spawn, "Tell me what happened.")
end

function dlg_28_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera016.mp3", "", "", 1395658399, 725264089, Spawn)
	AddConversationOption(conversation, "After I gathered the components for Laharn, he performed the test. He is very worried. He says the ritual is corrupted, but that there is one final stage needed to complete it.", "dlg_28_3")
	StartConversation(conversation, NPC, Spawn, "No surprise there.")
end

function dlg_28_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera017.mp3", "", "", 3652032020, 1710878793, Spawn)
	AddConversationOption(conversation, "And beyond that Laharn says there may be danger, to the spirit or the person performing the ritual.", "dlg_28_4")
	StartConversation(conversation, NPC, Spawn, "That stage will be a waste.")
end

function dlg_28_4(NPC, Spawn)
	SetStepComplete(Spawn, REQUIRED_COMPONENTS, 5)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera018.mp3", "", "", 777539162, 2279868143, Spawn)
	AddConversationOption(conversation, "I can.", "dlg_28_5")
	StartConversation(conversation, NPC, Spawn, "Then it must be stopped. You must return to the three places from which you gathered soil and find the person who is performing this ritual, they will be at one of them. Can you do this?")
end

--------------------------------------------------------------------------------------------------------------------
--				QUEST 4
--------------------------------------------------------------------------------------------------------------------

function dlg_28_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera019.mp3", "", "", 972178161, 3123309728, Spawn)
	AddConversationOption(conversation, "I remember.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Good. In case you forgot, you gathered the soil at the tree on the western end of the Market Row, the tree near the entrance to the Peat Bog, and near the gates that lead into Qeynos.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, UNFORTUNATE_MISTAKES)
end

function dlg_29_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera015.mp3", "", "", 681420516, 1462428671, Spawn)
	AddConversationOption(conversation, "Laharn first sent me to the alchemists to attempt to enlist their help. They refused, stating that they were too busy.", "dlg_29_2")
	StartConversation(conversation, NPC, Spawn, "Tell me what happened.")
end

function StoppedRitualYetNo(NPC,  Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera020.mp3", "", "", 3049124346, 1314797650, Spawn)
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you stopped the ritual?")
end

function StoppedRitualYetYes(NPC,  Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera020.mp3", "", "", 3049124346, 1314797650, Spawn)
	AddConversationOption(conversation, "I was too late, the ritual was completed.", "dlg_34_1")
	StartConversation(conversation, NPC, Spawn, "Have you stopped the ritual?")
end

function dlg_34_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera021.mp3", "", "", 1097663315, 806264705, Spawn)
	AddConversationOption(conversation, "His name was Ralkesh Orto. I met him near the entrance to the Peat Bog. He had finished the Pa'Rok earlier. He came back after feeling no better off. When he and I were both there some sort of spirit attacked.", "dlg_34_2")


	StartConversation(conversation, NPC, Spawn, "I feared we would be too late. Do you know who performed the ritual? He may be in danger.")
end

function dlg_34_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera022.mp3", "", "", 4078309873, 3485008964, Spawn)
	AddConversationOption(conversation, "We are both fine. I fought the spirit, it left. Ralkesh will find Laharn and see what he can do to reattempt the ritual, properly.", "dlg_34_3")
	StartConversation(conversation, NPC, Spawn, "You look all right, how is he?")
end

function dlg_34_3(NPC, Spawn)
	SetStepComplete(Spawn, UNFORTUNATE_MISTAKES, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera023.mp3", "", "", 366740379, 2790792055, Spawn)
	AddConversationOption(conversation, "Ralkesh said he got the soil he used from the Peat Bog.", "dlg_34_4")
	StartConversation(conversation, NPC, Spawn, "I wonder why it went so wrong.")
end

---------------------------------------------------------------------------------------------------------------------
--			  QUEST 5
---------------------------------------------------------------------------------------------------------------------

function dlg_34_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera024.mp3", "", "", 2784457515, 1936365380, Spawn)
	AddConversationOption(conversation, "I am willing.", "dlg_34_5")
	StartConversation(conversation, NPC, Spawn, "Ah, very good thinking of you to find that out. Perhaps further investigation will turn something up, perhaps not. How do you feel about venturing into the Peat Bog?")
end

function dlg_34_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera025.mp3", "", "", 3981705980, 3354159055, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "How fortunate. Nareh Lith is a friend of mine, and he has been studying the Peat Bog for some time now.")
end

function SpokenWithLithYet(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera026.mp3", "", "", 47750656, 1276810438, Spawn)
	AddConversationOption(conversation, "No, not yet.", "dlg_35_1")
	StartConversation(conversation, NPC, Spawn, "Have you spoken with Nareh Lith yet?")
end

function OfferQuest5(NPC, Spawn)
	OfferQuest(NPC, Spawn, TO_THE_SOURCE)
end