--[[
	Script Name	: SpawnScripts/TimorousDeep/TykorGiLok.lua
	Script Purpose	: Tykor Gi'Lok <Chrykori Village Secondary>
	Script Author	: John Adams
	Script Date	: 2009.02.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 105
QUEST_2 = 106
QUEST_3 = 107

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
			if HasCompletedQuest(Spawn, QUSET_3) then
				Say(NPC, "Please do not waste time.", Spawn)
			elseif HasQuest(Spawn, QUEST_3) then
				Say(NPC, "Please do not waste time.", Spawn)
			else
				DoYouHaveTheOre(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			DoYouHaveTheOre(NPC, Spawn, conversation)
		else
			HaveYouSlitGizzards(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		HaveYouSlitGizzards(NPC, Spawn, conversation)
	else
		FinallyNewRecruit(NPC, Spawn, conversation)
	end
end

--------------------------------------------------------------------------------------------------
--						QUEST 1
--------------------------------------------------------------------------------------------------

function FinallyNewRecruit(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok000.mp3", "", "", 2409590075, 1967179251, Spawn)
	AddConversationOption(conversation, "How can this recruit be of use?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Finally, a new recruit! I was beginning to think I'd turn to salt before they sent anyone to this beach. And if I did turn to salt, I suspect the Haoaeran spirocs would have a fine time pecking me to bits. They don't take to our presence on Chrykori Island, you see. And though they have yet to squawk war from those colorful beaks of theirs, they've done everything they can to be a nuisance and prompt us to leave.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok000a.mp3", "", "", 2545146439, 3743717142, Spawn)
	AddConversationOption(conversation, "I will kill the poachers.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Eager! That's good! Perhaps they've sent me more than the usual giblets this time. To think I thought my appointment here was a subtle suggestion that I'm no longer of use to the army of Gorowyn! We'll show them I'm not so inept as they may think... You see, the spirocs have sent poachers to hunt the sand snappers to near extinction, taking from us one of our prime food sources. But you'll show them, won't you?")
end

function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HaveYouSlitGizzards(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok002.mp3", "", "", 2250402818, 734088714, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "I've taken some of them out.", "dlg_1_1")
	else
		AddConversationOption(conversation, "Not yet. More need to fall to see this work done.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you slit their gizzards?")
end

function dlg_1_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok003.mp3", "", "", 1572650022, 3969849806, Spawn)
	AddConversationOption(conversation, "What do you think is so special about this beach?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "A good start! But if you believe my theories, there is more going on down here than my superiors think. They sent me here to baby sit some harmless poachers... but the Haoaerans are up to something on these beaches. The poachers are a diversion, I say. Any fool can see war is coming, " .. GetName(Spawn) .. ". though some may not want to, because the Haoaerans have the advantage here.")
end

--------------------------------------------------------------------------------------------------
--						QUEST 2
--------------------------------------------------------------------------------------------------

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok003a.mp3", "", "", 1948098851, 1635799575, Spawn)
	AddConversationOption(conversation, "I'll bring us back samples straight away.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Oh now I haven't gotten so far as figuring out any of that! But maybe you can help me. I've seen them mining ore along the valley walls, and I suspect they mean to make weapons of it. But oh it could also be something so much more nefarious! And wouldn't discovering such a plot earn the both of us promotions. Why don't you bring back some samples of the ore and let us see for ourselves.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function DoYouHaveTheOre(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok005.mp3", "", "", 3931269326, 274875962, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_2) and not HasCompletedQuest(Spawn, QUEST_3)) or (HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2) then
		AddConversationOption(conversation, "Yes, I do and no, they died too quickly for any of that.", "dlg_4_1")
	else
		AddConversationOption(conversation, "No, they will though.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Do you have the ore? Did they molt at seeing you interrupt their plans?")
end

function dlg_4_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_2) then
		SetStepComplete(Spawn, QUEST_2, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/tykor_gi_lok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/gilok/gilok006.mp3", "", "", 2948220406, 1046702347, Spawn)
	AddConversationOption(conversation, "Very well. ", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "That's the way to do it! Well now, let's have a look... This is strange. Grrr ...  this is mostly rock! There's barely any ore at all... Mighty suspicious, if you ask me. I think it is time to earn our promotions. I'd like you to travel to Chrykori Village, just north of here, and speak with Primary Conzuk Zum'Ha. Show him what we've found, and be sure to mention me.")
end

--------------------------------------------------------------------------------------------------
--						QUEST 3
--------------------------------------------------------------------------------------------------

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Say(NPC, "I haven't finished this quest yet.", Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end