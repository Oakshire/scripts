--[[
	Script Name	: SpawnScripts/SunkenCity/InvestigatorCurfeld.lua
	Script Purpose	: Investigator Curfeld <Dismal Rage>
	Script Author	: Scatman
	Script Date	: 2009.07.28
	Script Notes	: 
--]]

local QUEST_4_FROM_THORSON = 379
local QUEST_1 = 380
local QUEST_2 = 381
local QUEST_3 = 382
local QUEST_5_FROM_THORSON = 383

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
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
				if HasCompletedQuest(Spawn, QUEST_5_FROM_THORSON) then
					Say(NPC, "You again? You can't stop a son of Prexus. Maybe the next fool who comes after you will have better luck!", Spawn)
                                        PlayAnimation(NPC, 20601)
				elseif HasQuest(Spawn, QUEST_5_FROM_THORSON) then
					OnQuest3(NPC, Spawn, conversation)
				else
					OnQuest3(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				SoYouFoundTheShrine(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			WhyHaveYouReturned(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if not HasCompletedQuest(Spawn, QUEST_4_FROM_THORSON) then
			VeryBusy(NPC, Spawn, conversation)
		else
			YouAgain(NPC, Spawn, conversation)
		end
	end
end

---------------------------------------------------------------------------------------------------------------------------
--						QUEST_4_FROM_THORSON
---------------------------------------------------------------------------------------------------------------------------

function VeryBusy(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld001.mp3", "", "", 587048685, 18941612, Spawn)
	if HasQuest(Spawn, QUEST_4_FROM_THORSON) then
		AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Inquisitor Thorson sent me.", "dlg_12_1")
	end
	AddConversationOption(conversation, "Nothing at all.")
	StartConversation(conversation, NPC, Spawn, "I'm very busy. What is it that you want from me?")
end

function dlg_12_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4_FROM_THORSON, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld002.mp3", "", "", 2776959402, 3983139293, Spawn)
	AddConversationOption(conversation, "The inquisitor did some research on spectral essences, and he asked me to give it to you.", "dlg_12_2")
	AddConversationOption(conversation, "I'll leave you alone.")
	StartConversation(conversation, NPC, Spawn, "Thorson, eh? He mentioned a newly arrived hero of Freeport was coming. State your business quickly, for my time is valuable.")
end

---------------------------------------------------------------------------------------------------------------------------
--						QUEST 1
---------------------------------------------------------------------------------------------------------------------------

function YouAgain(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Inquisitor Thorson sent me to help look into the rise of undead activity.", "dlg_12_5")
	AddConversationOption(conversation, "Nevermind.")
	StartConversation(conversation, NPC, Spawn, "You again. What is it that you wanted?")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld003.mp3", "", "", 1468838299, 855905444, Spawn)
	AddConversationOption(conversation, "He mentioned you might need my assistance.", "dlg_12_3")
	AddConversationOption(conversation, "That's all.")
	StartConversation(conversation, NPC, Spawn, "Fine, hand it over! Is that all?")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld004.mp3", "", "", 984029368, 2280448766, Spawn)
	AddConversationOption(conversation, "I am willing to do whatever is required to serve Freeport.", "dlg_12_4")
	AddConversationOption(conversation, "Never mind, I rescind my offer.")
	StartConversation(conversation, NPC, Spawn, "Assistance? What I need is solitude so that I can complete my research! What is it that you think you can offer an investigator who serves the Dismal Rage?")
end

function dlg_12_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld005.mp3", "", "", 1117786309, 2475990866, Spawn)
	AddConversationOption(conversation, "Looking into the increase in undead activity, correct?", "dlg_12_5")
	AddConversationOption(conversation, "This doesn't interest me.")
	StartConversation(conversation, NPC, Spawn, "Well, come to think of it, there is some work you could do for me. As you know, I've been here in the Sunken City for a while now, conducting some important research.")
end

function dlg_12_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld006.mp3", "", "", 3352004340, 1089685047, Spawn)
	AddConversationOption(conversation, "Who do you suspect has stolen it?", "dlg_12_6")
	AddConversationOption(conversation, "Do your own grunt work.")
	StartConversation(conversation, NPC, Spawn, "Yes, undead activity... of course. At any rate, some of my research has been stolen, and it is vital that I get it back. I need you to retrieve it for me.")
end

function dlg_12_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld007.mp3", "", "", 753008127, 4149258442, Spawn)
	AddConversationOption(conversation, "Where should I look for your research papers?", "OfferQuest1")
	AddConversationOption(conversation, "I have no interest in pirates.")
	StartConversation(conversation, NPC, Spawn, "I have observed a gang of pirates operating in the abandoned houses to the north. I believe they call themselves the Blackshields, a group of thugs based on the shores of the Commonlands. It is my belief that they're using the Sunken City as a place to store their stolen treasures.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld009.mp3", "", "", 987373655, 3497715065, Spawn)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Yes, I found a notebook in an old barrel.", "dlg_19_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you retrieved my research materials from the Blackshields yet?")
end

function dlg_19_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld010.mp3", "", "", 1290071481, 14179397, Spawn)
	AddConversationOption(conversation, "I'm ready for anything.", "dlg_19_2")
	AddConversationOption(conversation, "I don't need your insults.")
	StartConversation(conversation, NPC, Spawn, "Excellent! You may prove useful to me after all. I wonder if I can now entrust you with a more crucial task.")
end

---------------------------------------------------------------------------------------------------------------------------
--						QUEST 2
---------------------------------------------------------------------------------------------------------------------------

function WhyHaveYouReturned(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I would like to help you further.", "dlg_19_2")
	AddConversationOption(conversation, "I guess I will be leaving.")
	StartConversation(conversation, NPC, Spawn, "Why have you returned to me?")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld011.mp3", "", "", 2158708484, 291273731, Spawn)
	AddConversationOption(conversation, "What do you mean by 'usable'?", "dlg_19_3")
	AddConversationOption(conversation, "Your task doesn't interest me.")
	StartConversation(conversation, NPC, Spawn, "Back when this place was known as Plank's Edge, the followers of Prexus built a shrine to the Ocean Lord. I need to know if any part of that shrine still exists, and if so, whether it still resonates with any usable divine power.")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld012.mp3", "", "", 3900893827, 953702832, Spawn)
	AddConversationOption(conversation, "No need to be so testy! I will do it.", "dlg_19_4")
	AddConversationOption(conversation, "I don't need to stand for your rudeness.")
	StartConversation(conversation, NPC, Spawn, "Do not question me! You are not experienced enough in the ways of the Dismal Rage to understand these matters. Will you undertake this mission or not?")
end

function dlg_19_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld013.mp3", "", "", 279847227, 949322829, Spawn)
	AddConversationOption(conversation, "I will be careful.", "OfferQuest2")
	AddConversationOption(conversation, "I'd best be off.")
	StartConversation(conversation, NPC, Spawn, "Then be about your work. Find whatever remains of the shrine of Prexus and tell me if it has any remnants of its former power. Beware, for the corpses of the Darkfathom followers may still be guarding their once holy place.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld015.mp3", "", "", 3353662707, 2467058534, Spawn)
	if GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "I've found the ruined shrine, and it has an eerie hum surrounding it.", "dlg_20_1")
	end
	AddConversationOption(conversation, "I haven't found it yet.")
	StartConversation(conversation, NPC, Spawn, "Did you find the shrine of Prexus? Does it still resonate with power?")
end

function dlg_20_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld016.mp3", "", "", 2893810330, 4143475866, Spawn)
	AddConversationOption(conversation, "What may still be possible?", "dlg_20_2")
	AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "Magnificent news! Then it might still be possible! This confirms all my fondest hopes!")
end

---------------------------------------------------------------------------------------------------------------------------
--						QUEST 3
---------------------------------------------------------------------------------------------------------------------------

function SoYouFoundTheShrine(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I was curious what you wanted from that shrine.", "dlg_20_2")
	AddConversationOption(conversation, "I'm tired of this abuse.")
	StartConversation(conversation, NPC, Spawn, "So you found the Shrine of Prexus. Why are you still disturbing my work?")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld017.mp3", "", "", 3975555869, 3311883027, Spawn)
	AddConversationOption(conversation, "Inquisitor Thorson said he needed information from you to complete his report.", "OfferQuest3")
	AddConversationOption(conversation, "I'm tired of this abuse.")
	StartConversation(conversation, NPC, Spawn, "Uh... nothing! You have no right to question me! Go back to Thorson, for I have no further use for you.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld019.mp3", "", "", 1269088457, 2406366669, Spawn)
	if HasQuest(Spawn, QUEST_5_FROM_THORSON) and GetQuestStep(Spawn, QUEST_5_FROM_THORSON) == 1 then
		AddConversationOption(conversation, "You did, and we found some rather disturbing notes in your journal.", "dlg_23_1")
	end
	AddConversationOption(conversation, "I'm going back to him right now.")
	StartConversation(conversation, NPC, Spawn, "You again! I thought I sent you back to Thorson.")
end

--------------------------------------------------------------------------------------------------------------------
--						QUEST_5_FROM_THORSON
--------------------------------------------------------------------------------------------------------------------

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld020.mp3", "", "", 1297570306, 1157170727, Spawn)
	AddConversationOption(conversation, "Indeed we did. You have some explaining to do.", "dlg_23_2")
	AddConversationOption(conversation, "No, we didn't.")
	StartConversation(conversation, NPC, Spawn, "In my journal? What do you... Oh, I, uh, seem to have given you the wrong notes to take to him. Just some old scribbles, nothing too interesting. You two didn't read it, did you?")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld021.mp3", "", "", 2210460542, 3190306576, Spawn)
	AddConversationOption(conversation, "You're a madman!", "dlg_23_3")
	AddConversationOption(conversation, "Time for me to get out of here.")
	StartConversation(conversation, NPC, Spawn, "I do not need to explain myself to lesser beings like you. Soon I will recreate Aquel's ritual, only this time I will succeed in sinking Freeport to the bottom of the ocean. And the delicious irony is that you are the one who helped me do it!")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld022.mp3", "", "", 2667398233, 1390342428, Spawn)
	AddConversationOption(conversation, "Oh no you won't, Curfeld!", "dlg_23_4")
	AddConversationOption(conversation, "Nevermind, we'll settle this another time.")
	StartConversation(conversation, NPC, Spawn, "When I have caused the waters to rise and drown this city, Prexus will return and bless me with unlimited power! Even the Overlord's floating citadel will sink to the depths, leaving me to rule all of Norrath!")
end

function dlg_23_4(NPC, Spawn)
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	AddHate(Spawn, NPC, 100)
end