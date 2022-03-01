--[[
	Script Name		: 	SpawnScripts/Darklight/GinwyssDArkenett.lua
	Script Purpose	: 	Ginwyss D'Arkenett ID 340064
	Script Author	: 	Cynnar
	Script Date		: 	2015.12.30
	Script Notes	: 	A Guard Insignia? Examine item a Neriak recruit badge dropped by moldering soldiers
	Scritp Notes	:	It leads to Gwinyss final quest.
--]]

local NoUndeadGoesUnturned = 134
local ThexianTaint = 135
local RottingScum = 138
local PickingUpSlack = 139
local AGuardInsignia = 140
local MissingRecruit = 141

function spawn(NPC)
	ProvidesQuest(NPC, RottingScum)
	ProvidesQuest(NPC, PickingUpSlack)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, ThexianTaint) and GetQuestStep(Spawn, ThexianTaint) < 3 then
		StartConversation(conversation, NPC, Spawn, "You need speak with Sselnyl Do'Zyth in Hate's Envy, then come back and see me.")
	elseif not HasCompletedQuest(Spawn, ThexianTaint) and GetQuestStep(Spawn, ThexianTaint) == 3 then
		PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss001.mp3", "", "", 3871091964, 1580185291, Spawn)
		AddConversationOption(conversation, "Sselnyl Do'Zyth has sent me from Hate's Envy. I've just stopped a Thexian Desecrator from completing a ritual at the Wellspring of Nightmares.", "ThexianTaint_Finish")
		AddConversationOption(conversation, "Is there nothing I can do to help?", "Quest_RottingScum_B")
		AddConversationOption(conversation, "I must be going.")
		StartConversation(conversation, NPC, Spawn, "You wish to help? If that's the case, then you need speak with Sselnyl Do'Zyth in Hate's Envy")
	elseif HasCompletedQuest(Spawn, ThexianTaint) and not HasCompletedQuest(Spawn, RottingScum) then
		if HasQuest(Spawn, RottingScum) then
			if GetQuestStep(Spawn, RottingScum) ~= 3 then
				PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss009.mp3", "", "", 1363812552, 1394644666, Spawn)
				AddConversationOption(conversation, "Not yet.", "RottingScum_No")
			else
				PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss009.mp3", "", "", 1363812552, 1394644666, Spawn)
				AddConversationOption(conversation, "I have.", "RottingScum_Yes")
			end
			StartConversation(conversation, NPC, Spawn, "Have you decimated the Thexian's proxy army?")
		else
			PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss001.mp3", "", "", 3871091964, 1580185291, Spawn)
			AddConversationOption(conversation, "Is there nothing I can do to help?", "Quest_RottingScum_B")
			AddConversationOption(conversation, "I must be going.")
			StartConversation(conversation, NPC, Spawn, "Yes? We've much to deal with here, so if I seem uneager to speak with you that is why.")
		end
	elseif HasCompletedQuest(Spawn, RottingScum) and not HasQuest(Spawn, PickingUpSlack) and not HasCompletedQuest(Spawn, PickingUpSlack) then
		PickingUpSlack_B(NPC, Spawn)
	elseif HasQuest(Spawn, PickingUpSlack) and not HasCompletedQuest(Spawn, PickingUpSlack) then
		if GetQuestStep(Spawn, PickingUpSlack) < 2 then
			PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss016.mp3", "", "", 1608180400, 3304590468, Spawn)
			AddConversationOption(conversation, "Not yet.", "PickingUpSlack_No")
		else
			PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss016.mp3", "", "", 1608180400, 3304590468, Spawn)
			AddConversationOption(conversation, "I have.", "PickingUpSlack_Yes")
		end
		StartConversation(conversation, NPC, Spawn, "Did you collect enough scrap pieces of armor?")
	elseif HasCompletedQuest(Spawn, PickingUpSlack) and not HasQuest(Spawn, AGuardInsignia) and not HasCompletedQuest(Spawn, AGuardInsignia) then
		PickingUpSlack_02(NPC, Spawn)
	elseif HasQuest(Spawn, AGuardInsignia)then --and not HasQuest(Spawn, MissingRecruit) then
		PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss020.mp3", "", "", 2409485632, 3192848351, Spawn)
		AddConversationOption(conversation, "I found this while hunting undead.", "Quest_MissingRecruit")
		StartConversation(conversation, NPC, Spawn, "Yes, what is it now, " .. GetName(Spawn) .. "?")
	elseif HasCompletedQuest(Spawn, AGuardInsignia) and not HasQuest(Spawn, MissingRecruit) and not HasCompletedQuest(Spawn, MissingRecruit) then
		Quest_MissingRecruit(NPC, Spawn)
	elseif HasQuest(Spawn, MissingRecruit) then
		PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss024.mp3", "", "", 3017598578, 1088608550, Spawn)
		if GetQuestStep(Spawn, MissingRecruit) < 2 then
			AddConversationOption(conversation, "Not yet.", "MissingRecruit_No")
		else
			AddConversationOption(conversation, "I have. Here you go.", "MissingRecruit_Yes")
		end
		StartConversation(conversation, NPC, Spawn, "Have you found his field kit?")
	else
		Say(NPC, "Nice work. Laexyar and I appreciate it.")
	end
end

--------------------------------------------------------------------------------------
--			Thexian Taint Complete
--------------------------------------------------------------------------------------

function ThexianTaint_Finish(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, ThexianTaint, 3)
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss002.mp3", "", "", 195833289, 1438804587, Spawn)
	AddConversationOption(conversation, "Why is that?", "Quest_RottingScum")
	StartConversation(conversation, NPC, Spawn, "Of course. We appreciate this. Anything we can do to keep the Thexians out of these woods is helpful. I am glad you have arrived.")
end

--------------------------------------------------------------------------------------
--			QUEST Rotting Scum
--------------------------------------------------------------------------------------
function Quest_RottingScum(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss004.mp3", "", "", 2620151660, 2492067079, Spawn)
	AddConversationOption(conversation, "I am.", "Quest_RottingScum_01")
	AddConversationOption(conversation, "I am not.")
	StartConversation(conversation, NPC, Spawn, "Laexyra is in charge of the Dread Guard here in the Darklight Wood. She's been moving forces deeper into the wood and will continue to do so until we control this land as cleanly as we do the city of Neriak itself. Are you willing to lend your assistance?")
end

function Quest_RottingScum_B(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss003.mp3", "", "", 3004928751, 1497818906, Spawn)
	AddConversationOption(conversation, "Oh?", "Quest_RottingScum")
	StartConversation(conversation, NPC, Spawn, "You wish to help? If that's the case, then I'm glad you're here.")
end

function Quest_RottingScum_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	AddConversationOption(conversation, "Where have they come from?", "Quest_RottingScum_02")
	StartConversation(conversation, NPC, Spawn, "That is good to hear, " .. GetName(Spawn) .. ". I would like your help with the undead that infest this camp.")
end

function Quest_RottingScum_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss006.mp3", "", "", 1721704244, 1661413444, Spawn)
	AddConversationOption(conversation, "These corpses... Who were they?", "Quest_RottingScum_03")
	StartConversation(conversation, NPC, Spawn, "This was once the site of a very large battle. Though ages old, new corpses are beginning to resurface and attack. I suspect none other than the Thexians to be behind this plot. The cowards would rather have the dead attack us than face us in open battle!")
end

function Quest_RottingScum_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss007.mp3", "", "", 1606040300, 1401696355, Spawn)
	AddConversationOption(conversation, "Very well.", "QuestOffer_RottingScum")
	AddConversationOption(conversation, "I cannot do what you ask.")
	StartConversation(conversation, NPC, Spawn, "The fallen rangers and stout cadavers are the corpses of the halfling armies and their allies who attacked Neriak long ago. Now in undeath they seek to fulfill their mission once more. You must put them down at once!")
end

function QuestOffer_RottingScum(NPC, Spawn)
	OfferQuest(NPC, Spawn, RottingScum)
end

function RottingScum_No(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss011.mp3", "", "", 465595230, 4113153338, Spawn)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, NPC, Spawn, "Do not return until you have put down the stout cadavers and fallen rangers!")
end

function RottingScum_Yes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, RottingScum, 3)
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss010.mp3", "", "agree", 1734208636, 3841795105, Spawn)
	AddConversationOption(conversation, "Isn't there a way to get rid of them permanently?", "PickingUpSlack_A")
	StartConversation(conversation, NPC, Spawn, "Good. They'll be back in short order, unfortunately. Your efforts, however, should cause them to cease annoying us for the time being.")
end

--------------------------------------------------------------------------------------
--			QUEST Picking Up Slack
--------------------------------------------------------------------------------------

function PickingUpSlack_A(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss012.mp3", "", "agree", 1734208636, 3841795105, Spawn)
	AddConversationOption(conversation, "What do you mean?", "PickingUpSlack_B")
	StartConversation(conversation, NPC, Spawn, "I believe Laexyra is looking into that matter. However, before you run along and help her, I first need your assistance in dealing with a few deserters.")
end

function PickingUpSlack_B(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I could help again.", "PickingUpSlack_01")
	AddConversationOption(conversation, "I must take my leave.")
	StartConversation(conversation, NPC, Spawn, "New recruits looking for a fast track into Neriak often disappear. I had one leave just yesterday, and I'm having trouble finding someone to replace him.")
end

function PickingUpSlack_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss014.mp3", "", "", 3763405805, 3752416036, Spawn)
	AddConversationOption(conversation, "All right.", "QuestOffer_PickingUpSlack")
	AddConversationOption(conversation, "I would prefer not to.")
	StartConversation(conversation, NPC, Spawn, "Indeed you could, " .. GetName(Spawn) .. ". I doubt Soltrin is coming back anytime soon. I had him collecting scraps of armor from the moldering soldiers found north from here. Jargos claims he can forge the pieces into new armor plates. Bring me several pieces and you will be rewarded.")
end

function QuestOffer_PickingUpSlack(NPC, Spawn)
	OfferQuest(NPC, Spawn, PickingUpSlack)
end

function PickingUpSlack_No(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss018.mp3", "", "", 3110804349, 157804660, Spawn)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, NPC, Spawn, "Jargos cannot make armor plates with raw material. Do not return until you've collected enough scrap armor from the moldering soldiers.")
end

function PickingUpSlack_Yes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, PickingUpSlack, 2)
		
	if HasQuest(Spawn, AGuardInsignia) then
		AddConversationOption(conversation, "I found this while hunting undead.", "Quest_MissingRecruit")
		StartConversation(conversation, NPC, Spawn, "Good work, young one. You're turning out to be a much harder worker than that no good deserter, Soltrin. Curious... I wonder what became of him.")
	else
		AddConversationOption(conversation, "I'll keep my eyes open for him.", "PickingUpSlack_03")
		StartConversation(conversation, NPC, Spawn, "Good work, young one. You're turning out to be a much harder worker than that no good deserter, Soltrin. Curious... I wonder what became of him.")
	end
end

function PickingUpSlack_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, AGuardInsignia) then
		AddConversationOption(conversation, "I found this while hunting undead.", "Quest_MissingRecruit")
		StartConversation(conversation, NPC, Spawn, "Good work, young one. You're turning out to be a much harder worker than that no good deserter, Soltrin. Curious... I wonder what became of him.")
	else
		AddConversationOption(conversation, "I'll keep my eyes open for him.", "PickingUpSlack_03")
		StartConversation(conversation, NPC, Spawn, "Good work, young one. You're turning out to be a much harder worker than that no good deserter, Soltrin. Curious... I wonder what became of him.")
	end
end

function PickingUpSlack_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'll see what I can do.")
	StartConversation(conversation, NPC, Spawn, "That is much appreciated, " .. GetName(Spawn) .. ". Now, in the meantime I suggest you speak with some of the others found here at this post. There is much work to be done.")
end

--------------------------------------------------------------------------------------
--			QUEST Missing Recruit
--------------------------------------------------------------------------------------

function Quest_MissingRecruit(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, MissingRecruit, 1)
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss021.mp3", "", "", 4046947438, 1960374270, Spawn)
	AddConversationOption(conversation, "Sure.", "Quest_MissingRecruit_01")
	StartConversation(conversation, NPC, Spawn, "Hmm. Interesting. Perhaps Soltrin didn't catch the fever. Perhaps he died while performing his duties--how noble of him. I wonder if we can still retrieve his field kit... Are you up for another task, " .. GetName(Spawn) .. "?")
end

function Quest_MissingRecruit_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, AGuardInsignia, 1)
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss022.mp3", "", "", 2283622719, 1945338688, Spawn)
	AddConversationOption(conversation, "All right.", "QuestOffer_MissingRecruit")
	StartConversation(conversation, NPC, Spawn, "I'd like you to search the same area where you destroyed the undead soldiers. If Soltrin was killed, it's quite possible that his body is nearby. Hopefully his field kit will still be intact. If it is, I'd like you to retrieve it for me.")
end

function QuestOffer_MissingRecruit(NPC, Spawn)
	OfferQuest(NPC, Spawn, MissingRecruit)
end

function MissingRecruit_No(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss026.mp3", "", "", 3389215806, 2500269282, Spawn)
	AddConversationOption(conversation, "Alright, alright!")
	StartConversation(conversation, NPC, Spawn, "Keep searching then!")
end

function MissingRecruit_Yes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, MissingRecruit, 2)
	
	PlayFlavor(NPC, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss025.mp3", "", "", 3122094664, 4174660668, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Nice work, Sygman. These kits aren't cheap. Again, you have our thanks.")
end