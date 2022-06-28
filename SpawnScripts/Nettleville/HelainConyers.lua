--[[
	Script Name	: SpawnScripts/Nettleville/HelainConyers.lua
	Script Purpose	: Helain Conyers <Human Mentor>
	Script Author	: Scatman
	Script Date	: 2009.08.10
	Script Notes	: 
--]]

local HUMAN = 9
local QUEST_1 = 295
local QUEST_2 = 296
local QUEST_3 = 297
local QUEST_4 = 298

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) 
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
else   
 if GetRace(Spawn)==9 then
       FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
        if choice ==1 then
        PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
        else
        PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
        end
    end
end   
end   

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					FoundPathToPeace(NPC, Spawn, conversation)
				else
					HaveYouFoundWork(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				ANaturalHere(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			LookAtAllTheBooks(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == HUMAN then
			HelloTraveler(NPC, Spawn, conversation)
		else
			NotHuman(NPC, Spawn, conversation)
		end
	end
end

function NotHuman(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers027.mp3", "", "hello", 3089860217, 2120414759, Spawn)
	AddConversationOption(conversation, "Thanks for the tip.")
	StartConversation(conversation, NPC, Spawn, "Hello, traveler!  If it is peace you seek, the teachings of Quellious the Tranquil can show you the way.")
end

--------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------

function HelloTraveler(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers027.mp3", "", "hello", 3089860217, 2120414759, Spawn)
	AddConversationOption(conversation, "No, I suppose you can't.", "dlg_0_1")
	AddConversationOption(conversation, "Thanks for the tip.")
	StartConversation(conversation, NPC, Spawn, "Hello, traveler!  If it is peace you seek, the teachings of Quellious the Tranquil can show you the way.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers002.mp3", "", "", 2562313108, 1727059508, Spawn)
	AddConversationOption(conversation, "The only thing that is safe to assume about a human is that we strive to survive.", "dlg_0_2")
	AddConversationOption(conversation, "Well, you know what happens when you assume.  Good day.")
	StartConversation(conversation, NPC, Spawn, "Why, it used to be that you could know certain things about a person's faith by their race, but just look at us humans. Some are agnostic while others praise the likes of Erollisi Marr, Tunare, or even Bristlebane, just to name a few.  ")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers003.mp3", "", "agree", 2892663311, 3066293848, Spawn)
	AddConversationOption(conversation, "You obviously are a person of faith.", "dlg_0_3")
	AddConversationOption(conversation, "We may not be the oldest of races, but we are tenacious. ")
	StartConversation(conversation, NPC, Spawn, "Right you are!  And while change is constant and all around us, we adjust and adapt right along with it.  Thus our faiths and philosophies are very diverse.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers004.mp3", "", "nod", 4064224894, 855111154, Spawn)
	AddConversationOption(conversation, "No doubt, especially in these times of turmoil and conflict.", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Oh, yes!  I follow Quellious, the Tranquil child-goddess. I've been seeking inner peace for many years now. It has helped me so much! I look around and see so many others that would benefit from such personal peace.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers005.mp3", "", "", 862333499, 1544985177, Spawn)
	AddConversationOption(conversation, "You find knowledge to be necessary for personal peace?", "dlg_0_5")
	AddConversationOption(conversation, "Perhaps, a conversation we can have another day.  I was curious if you had work for me?", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "So true. Some peace and knowledge would go far.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers006.mp3", "", "agree", 1674826360, 1009450237, Spawn)
	AddConversationOption(conversation, "Interesting.  I still think that many wage war for the sake of war, or to gain power.", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "I do!  Knowledge of other cultures and philosophies is very important.  Why, if everyone fully understood themselves and their neighbors, there would be no conflict or war.  No need for it!")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers007.mp3", "", "", 2276149336, 1155210883, Spawn)
	AddConversationOption(conversation, "Hmm.  Some words to think about. ", "dlg_0_7")
	StartConversation(conversation, NPC, Spawn, "But see, if those people had peace, they would not seek power.")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers008.mp3", "", "", 2766152393, 2773509836, Spawn)
	AddConversationOption(conversation, "Wouldn't mind at all.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Ya know, I am glad to have found another to talk to about these kinds of things. Would you mind helping me?")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		SetStepComplete(Spawn, QUEST_1, 2)
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers010.mp3", "", "", 4087382660, 558784349, Spawn)
		AddConversationOption(conversation, "You're welcome.", "LookAtAllTheBooks")
		StartConversation(conversation, NPC, Spawn, "Oh, gracious!  I did not expect so many at once. Thank you!")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers025.mp3", "", "", 1625074590, 2007128908, Spawn)
		AddConversationOption(conversation, "I am sorry.  I have not yet done what you asked.  I will be back shortly!")
		StartConversation(conversation, NPC, Spawn, "Hello again!  I did not expect you back so soon.")
	end
end

--------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------

function LookAtAllTheBooks(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers011.mp3", "", "", 1566451168, 2959134489, Spawn)
	AddConversationOption(conversation, "'Humans, Barbarians, and Erudites.' ", "dlg_7_2")
	AddConversationOption(conversation, "'Age of Blood, Age of Glory.'", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "Oh, look at all these books you brought me. What is the title of that one, near you?")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers012.mp3", "", "", 3119581167, 1698005795, Spawn)
	AddConversationOption(conversation, "Perhaps some insight can be gained.", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "That should be a good read.  We are often thought of to have evolved from the barbarian race, you know?  And well, the Erudites are a more intellectual subset of us.  It is interesting, and can offer a bit more of an understanding of them and ourselves, when you put it in perspective like that.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers013.mp3", "", "", 3228480005, 2535926237, Spawn)
	AddConversationOption(conversation, "Height of human power?", "dlg_7_4")
	StartConversation(conversation, NPC, Spawn, "Ah, look at this one! It is about the Age of Blood. A violent age, thought to be the height of human power, when the Combine Empire ruled over most of Norrath. If I recall right, the empire eventually splintered due to internal conflicts. Relics of the Combine Empire could be found across Norrath for ages.")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers031.mp3", "", "", 3917036825, 1372729086, Spawn)
	AddConversationOption(conversation, "Quite the testament to the humans who built Qeynos.", "dlg_7_5")
	StartConversation(conversation, NPC, Spawn, "That is not to say, that as a race, our time has come and gone. Why, just look at this city as an example. Qeynos has survived thousands of years, through wars, sieges, disease, famine, betrayals, and cataclysms, we have endured!")
end

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers034.mp3", "", "", 3381534468, 2598998174, Spawn)
	AddConversationOption(conversation, "And humans still rule it.", "dlg_7_6")
	StartConversation(conversation, NPC, Spawn, "I should say so!  We should be proud of them, and of ourselves for continuing the work. Our city, like us, has survived by adapting. Thus, it still stands and is open to all that seek its protection.")
end

function dlg_7_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers032.mp3", "", "", 2855759340, 2852857359, Spawn)
	AddConversationOption(conversation, "Yeah. Uh oh!", "dlg_7_7")
	StartConversation(conversation, NPC, Spawn, "Of course. Queen Antonia Bayle is someone who understands the ways of peace and knowledge. She's to be admired by all! Listen to me prattling on... Is that another book I see?")
end

function dlg_7_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers014.mp3", "", "ponder", 2665081235, 3868863075, Spawn)
	AddConversationOption(conversation, "It was, and Andret told me to be careful, but it is now missing some of its pages. ", "dlg_7_8")
	StartConversation(conversation, NPC, Spawn, "What's wrong? Uh, that book looks ragged. Don't worry, I'll bet its spine was broken when you got it.")
end

function dlg_7_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers015.mp3", "", "wince", 4075505082, 3317310532, Spawn)
	AddConversationOption(conversation, "I will go look for the pages. I dropped them, so I will find them. ", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Oh, dear. You're right. We are missing six pages from the book 'Followers of Brell Serilis.'  That would have been a great read, too. Oh, that's too bad.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_2) == 2 then	
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers017.mp3", "", "", 2087241060, 3147700165, Spawn)
		AddConversationOption(conversation, "I did!  Though they are a little more smudged with dirt now.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Did you find all the pages?")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers025.mp3", "", "", 1625074590, 2007128908, Spawn)
		AddConversationOption(conversation, "I am sorry.  I have not yet done what you asked.  I will be back shortly!")
		StartConversation(conversation, NPC, Spawn, "Hello again!  I did not expect you back so soon.")
	end
end

function dlg_10_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers018.mp3", "", "", 4089087839, 2292542610, Spawn)
	AddConversationOption(conversation, "I guess it is rather fitting.", "ANaturalHere")
	StartConversation(conversation, NPC, Spawn, "Oh well, I'm sure the Duke of Below doesn't mind being a bit soiled.")
end

--------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
--------------------------------------------------------------------------------------------------------------------------

function ANaturalHere(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers020.mp3", "", "nod", 2357657431, 1390308351, Spawn)
	AddConversationOption(conversation, "Thanks. I just try to do what's right.", "dlg_10_3")
	AddConversationOption(conversation, "Would you happen to have any other work for me?", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "You know, you are a natural here in Qeynos. So willing to learn and help your fellow citizens.")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers021.mp3", "", "orate", 2715980640, 3245538913, Spawn)
	AddConversationOption(conversation, "You refer to Lucan and Freeport when you speak of ruling with fear. ", "dlg_10_4")
	StartConversation(conversation, NPC, Spawn, "That will do you well in these troubled times, no matter your faith. Qeynos is a collective people who are all driven by the same desire to better the world rather than being ruled by fear.")
end

function dlg_10_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers022.mp3", "", "", 1835163421, 380513186, Spawn)
	AddConversationOption(conversation, "I hope so.  Would you happen to have any other work for me?", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "I do. We strive to live as free individuals here in Qeynos. Everyone is doing their best to serve Queen Antonia and our community. You have already shown yourself to fit in nicely!")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers024.mp3", "", "", 1790327288, 1244496180, Spawn)
	AddConversationOption(conversation, "I have not asked all of them, but so far, no.")
	StartConversation(conversation, NPC, Spawn, "Did my friends have some work for you?")
end

function HaveYouFoundWork(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers028.mp3", "", "", 1128584230, 3587308240, Spawn)
	AddConversationOption(conversation, "Laudine sent me to Johfrit Gythell.  He has some work for me.")
	StartConversation(conversation, NPC, Spawn, "Have you found work, friend?  ")
end

function FoundPathToPeace(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers026.mp3", "", "", 2566936431, 637185107, Spawn)
	AddConversationOption(conversation, "I have found my path.  Let's hope it leads to peace.")
	StartConversation(conversation, NPC, Spawn, "Have you found your path to peace, friend?")
end