--[[
	Script Name	: SpawnScripts/DarklightWood/PellandraDXatyl.lua
	Script Purpose	: Pellandra D'Xatyl (340038)
	Script Author	: Cynnar
	Script Date	: 2015.07.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ASolidifiedFront = 120
local SealingTheRift = 122
local SearchingForSigils = 123
local ReclaimingTheSableveinTear = 124
local AnAuthorityOnHate = 125

function spawn(NPC)
	ProvidesQuest(NPC, SealingTheRift)
	ProvidesQuest(NPC, SearchingForSigils)
	ProvidesQuest(NPC, ReclaimingTheSableveinTear)
	ProvidesQuest(NPC, AnAuthorityOnHate)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

        if not QuestStepIsComplete(Spawn, ASolidifiedFront, 2) then
			SetStepComplete(Spawn, ASolidifiedFront, 2)
		end
        if HasQuest(Spawn, SealingTheRift) and GetQuestStep(Spawn, SealingTheRift) == 1 then
			PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra006.mp3", "", "", 1661628815, 3964293147, Spawn)
			AddConversationOption(conversation, "I have not yet found a rift.", "dlg_1_1")
			StartConversation(conversation, NPC, Spawn, "Ah, you return, and in one piece I might add. Tell me, were you able to seal one of the rifts?")
		elseif HasQuest(Spawn, SealingTheRift) and GetQuestStep(Spawn, SealingTheRift) == 2 then --[[ needs an or check here if possible --]]
			PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra006.mp3", "", "", 1661628815, 3964293147, Spawn)
			AddConversationOption(conversation, "I found one and sealed it!", "dlg_2_1")
			StartConversation(conversation, NPC, Spawn, "Ah, you return, and in one piece I might add. Tell me, were you able to seal one of the rifts?")
		elseif HasCompletedQuest(Spawn, SealingTheRift) and not HasQuest(Spawn, SearchingForSigils) and not HasCompletedQuest(Spawn, SearchingForSigils) then
			dlg_2_1(NPC, Spawn)
		elseif not HasCompletedQuest(Spawn, SearchingForSigils) and GetQuestStep(Spawn, SearchingForSigils) == 1 then
			PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra012.mp3", "", "", 4283446564, 112709310, Spawn)
			AddConversationOption(conversation, "Not yet...", "dlg_8_1")
			StartConversation(conversation, NPC, Spawn, "Did you bring me the Sablevein sigil stones?")
		elseif not HasCompletedQuest(Spawn, SearchingForSigils) and GetQuestStep(Spawn, SearchingForSigils) == 2 then
			PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra012.mp3", "", "", 4283446564, 112709310, Spawn)
			AddConversationOption(conversation, "Yes, I have them here.", "dlg_6_1")
			StartConversation(conversation, NPC, Spawn, "Did you bring me the Sablevein sigil stones?")
		elseif HasCompletedQuest(Spawn, SearchingForSigils) and not HasCompletedQuest(Spawn, ReclaimingTheSableveinTear) and not HasQuest(Spawn, ReclaimingTheSableveinTear) then
			dlg_6_2(NPC, Spawn)
		elseif not HasCompletedQuest(Spawn, ReclaimingTheSableveinTear) and GetQuestStep(Spawn, ReclaimingTheSableveinTear) == 1 then
			PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra021.mp3", "", "", 894106996, 369904668, Spawn)
			AddConversationOption(conversation, "I'm still searching.", "dlg_5_1")
			StartConversation(conversation, NPC, Spawn, "Have you discovered the source of the Sablevein elemental attacks?")
		elseif not HasCompletedQuest(Spawn, ReclaimingTheSableveinTear) and GetQuestStep(Spawn, ReclaimingTheSableveinTear) == 2 then
			PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra021.mp3", "", "", 894106996, 369904668, Spawn)
			AddConversationOption(conversation, "I found a Thexian Occultist inside the cave and slew her.", "dlg_7_1")
			StartConversation(conversation, NPC, Spawn, "Have you discovered the source of the Sablevein elemental attacks?")
		elseif not HasCompletedQuest(Spawn, SealingTheRift) and not HasQuest(Spawn, SearchingForSigils) and GetQuestStep(Spawn, ASolidifiedFront) > 0 then
			PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra001.mp3", "", "", 2805015969, 2303192664, Spawn)
			AddConversationOption(conversation, "I've been sent by Verex N'Za to assist you.", "dlg_0_1")
			StartConversation(conversation, NPC, Spawn, "Curse these infernal things, there's no end to them in sight! You there, what do you want?")
		elseif not HasCompletedQuest(Spawn, SealingTheRift) and not HasQuest(Spawn, SearchingForSigils) and HasCompletedQuest(Spawn, ASolidifiedFront) then
			PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra001.mp3", "", "", 2805015969, 2303192664, Spawn)
			AddConversationOption(conversation, "I've been sent by Verex N'Za to assist you.", "dlg_0_1")
			StartConversation(conversation, NPC, Spawn, "Curse these infernal things, there's no end to them in sight! You there, what do you want?")
		elseif HasCompletedQuest(Spawn, SealingTheRift) and HasCompletedQuest(Spawn, SearchingForSigils) and HasCompletedQuest(Spawn, ReclaimingTheSableveinTear) then
			if not HasQuest(Spawn, AnAuthorityOnHate) then
				PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra025.mp3", "", "bow", 360494739, 4156662992, Spawn)
				AddConversationOption(conversation, "I will speak with her at once.", "QuestOffer_AnAuthorityOnHate")
				AddConversationOption(conversation, "I'll decide who I speak to!", "PlayerEmote_brandish")
				StartConversation(conversation, NPC, Spawn, "Your efforts have not gone unnoticed by authorities here in Hate's Envy. Your presence has been requested by the mayor's daughter, Jhana Do'Zyth. You can meet with her inside Hate's Envy Town Hall, northwest from here.")
			else
				PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra025.mp3", "", "bow", 360494739, 4156662992, Spawn)
				AddConversationOption(conversation, "I will speak with her at once.", "dlg_9_1")
				AddConversationOption(conversation, "I'll decide who I speak to!", "PlayerEmote_2")
				StartConversation(conversation, NPC, Spawn, "Your efforts have not gone unnoticed by authorities here in Hate's Envy. Your presence has been requested by the mayor's daughter, Jhana Do'Zyth. You can meet with her inside Hate's Envy Town Hall, northwest from here.")
			end
		elseif not HasCompletedQuest(Spawn, ASolidifiedFront) then
            StartConversation(conversation, NPC, Spawn, "The Sablevein elementals must be stopped before they burn down all of Hate's Envy!")
		end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra003.mp3", "", "frustrated", 1298376887, 2297284297, Spawn)
	AddConversationOption(conversation, "What is it you would have me do?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "I told Verex I could handle things here by myself! Bah, no matter. If you think you're cut out for the job, it's no skin off my back whether or not you succeed. Verex can always send another recruit to replace the fallen.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra004.mp3", "", "", 4198693006, 595147579, Spawn)
	AddConversationOption(conversation, "Yes, I will seal one of the rifts.", "QuestOffer_SealingTheRift")
	AddConversationOption(conversation, "Not right now.", "PlayerEmote_no")
	StartConversation(conversation, NPC, Spawn, "The elementals first started appearing inside Sablevein Tear forcing our miners to retreat. Now they're spewing forth from rifts in the ground! I need you to find one of these rifts and seal it. Are you up to the task?")
end

function PlayerEmote_no(NPC, Spawn)
	PlayFlavor(Spawn, "", "", "no", 0, 0, Player)
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will find it.")
		StartConversation(conversation, NPC, Spawn, "Do not return until you have found the rift and sealed it!")
end

function QuestOffer_SealingTheRift(NPC, Spawn)
	OfferQuest(NPC, Spawn, SealingTheRift)
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, SealingTheRift, 2)

	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra007.mp3", "", "", 3453657784, 2286828041, Spawn)
	AddConversationOption(conversation, "The rift may be sealed, but the battlefield is far from clear. Is there more I can do?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Remarkable work, " .. GetName(Spawn) .. "! Your enemies will soon quake upon hearing your name!")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra009.mp3", "", "", 1573554820, 3218022167, Spawn)
	AddConversationOption(conversation, "Tell me more.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "Indeed there is, rift walker. The Sablevein elementals did not appear here naturally. Something or someone summoned them. To learn more about their creator I have a new mission for you to undertake.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra010.mp3", "", "", 918403175, 3688051078, Spawn)
	AddConversationOption(conversation, "I will collect sigils from the Sablevein pulverizers.", "QuestOffer_SearchingForSigils")
	AddConversationOption(conversation, "I cannot assist at this time.", "PlayerEmote_no")
	StartConversation(conversation, NPC, Spawn, "I need you to hunt the Sablevein pulverizers found near the entrance of Sablevein Tear. These more superior forms of elemental magic will likely be imbued with a sigil of some sort. Analyzing these sigils will give us insight as to who is really behind these attacks.")
end

function QuestOffer_SearchingForSigils(NPC, Spawn)
	OfferQuest(NPC, Spawn, SearchingForSigils)
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra016.mp3", "", "", 188105745, 1139692175, Spawn)
	AddConversationOption(conversation, "I see. What can we do to stop them?", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "I haven't the time to give you a comprehensive history lesson, but needless to say, the Thexians are nothing more than the former ruling class of Neriak. An emasculated family who proved themselves too weak to rule Neriak. We Teir'Dal must thank Queen Cristanos for recognizing this weakness and removing it, as one would carve a burrowing tick from the back of a dog.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra017.mp3", "", "agree", 1551019218, 1492381224, Spawn)
	AddConversationOption(conversation, "Nothing will stand in my way!", "dlg_4_5")
	AddConversationOption(conversation, "I will defeat all who oppose me!", "dlg_4_5")
	AddConversationOption(conversation, "I'm actually not feeling very courageous at this time. Perhaps later.", "PlayerEmote_cringe")
	StartConversation(conversation, NPC, Spawn, "It is time we put an end to this attack once and for all. We must confront this threat at its source. You've proven your strength to me, Oamoothao. Now you must prove your rancor toward those who would dare to keep us from our goals.")
end

function PlayerEmote_cringe(NPC, Spawn)
	PlayFlavor(Spawn, "", "", "cringe", 0, 0, Player)
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Spawn, "", "", "cheer", 0, 0, Player)
	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra018.mp3", "", "", 1441675499, 2064064965, Spawn)
	AddConversationOption(conversation, "Go on.", "dlg_4_6")
	StartConversation(conversation, NPC, Spawn, "Good, then we shall begin. I believe the source of our problems lies within the depths of Sablevein Tear, the place our miners were recently excavating before the elementals attacked.")
end

function dlg_4_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra019.mp3", "", "", 1398439421, 3597583644, Spawn)
	AddConversationOption(conversation, "I will put an end to the attacks!", "QuestOffer_ReclaimingTheSableveinTear")
	AddConversationOption(conversation, "I cannot assist at this time.", "PlayerEmote_no")
	StartConversation(conversation, NPC, Spawn, "I want you to journey inside the cave and remove the one responsible for creating this mayhem. Do this for me, young one, and prove your ruthlessness to be unquestionable.")
end

function QuestOffer_ReclaimingTheSableveinTear(NPC, Spawn)
	OfferQuest(NPC, Spawn, ReclaimingTheSableveinTear)	
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will find the source of the attacks.")
	StartConversation(conversation, NPC, Spawn, "Time is of the essence, " .. GetName(Spawn) .. ". You must continue your search at once!")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, SearchingForSigils, 2)
	RemoveItem(Spawn, 11837)
	RemoveItem(Spawn, 11837)
	RemoveItem(Spawn, 11837)
	RemoveItem(Spawn, 11837)
	
	PlayFlavor(Spawn, "", "", "agree", 0, 0, Player)
	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra013.mp3", "", "", 1325789306, 33394254, Spawn)
	AddConversationOption(conversation, "What's that?", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Good, let me see them. Hmm, this is just as I thought.")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra015.mp3", "", "", 1970700762, 2434868211, Spawn)
	AddConversationOption(conversation, "What can we do to stop them?", "dlg_4_2")
	AddConversationOption(conversation, "Who are the Thexians?", "dlg_4_1")
	StartConversation(conversation, NPC, Spawn, "The marks on the sigil stones you recovered confirm my suspicions. The Sablevein elementals are no doubt the creation of the cowardly Thexians.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, ReclaimingTheSableveinTear, 2)
	
	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra022.mp3", "", "cheer", 2095462758, 507648174, Spawn)
	AddConversationOption(conversation, "Now what?", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Skillfully done, " .. GetName(Spawn) .. "! The meddling Thexians should know better than to try to disrupt our grip on these lands. I hope you made her suffer.")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra024.mp3", "", "", 739852284, 4285882362, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "Fortunately the direct threat appears to be abated for now. Udiyitas and the other guards will concentrate on mopping up the rest of the stray Sablevein while others can begin to repair the damage done. Your fate, however, lies elsewhere.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra025.mp3", "", "", 360494739, 4156662992, Spawn)
	AddConversationOption(conversation, "I will speak with her at once.", "QuestOffer_AnAuthorityOnHate")
	AddConversationOption(conversation, "I'll decide who I speak to!", "PlayerEmote_brandish")
	StartConversation(conversation, NPC, Spawn, "Your efforts have not gone unnoticed by authorities here in Hate's Envy. Your presence has been requested by the mayor's daughter, Jhana Do'Zyth. You can meet with her inside Hate's Envy Town Hall, northwest from here.")
end

function PlayerEmote_brandish(NPC, Spawn)
	PlayFlavor(Spawn, "", "", "brandish", 0, 0, Player)
end

function QuestOffer_AnAuthorityOnHate(NPC, Spawn)
	if not HasCompletedQuest(Spawn, AnAuthorityOnHate) and not HasQuest(Spawn, AnAuthorityOnHate) then
		OfferQuest(NPC, Spawn, AnAuthorityOnHate)
	end
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Spawn, "", "", "no", 0, 0, Player)
	PlayFlavor(NPC, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra008.mp3", "", "", 4200285970, 1831158049, Spawn)
	AddConversationOption(conversation, "I will return with the Sigils!")
	StartConversation(conversation, NPC, Spawn, "Do not return until you have collected the sigil stones from the Sablevein pulverizers.")
end