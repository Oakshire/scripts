--[[
	Script Name	: SpawnScripts/Darklight/JhanaDoZyth.lua
	Script Purpose	: Jhana Do'Zyth 
	Script Author	: Cynnar
	Script Date	: 2015.07.15
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local AnAuthorityOnHate = 125
local ProwlerAnnoyance = 128
local AFerociousInconvenience = 129

function spawn(NPC)
	ProvidesQuest(NPC, ProwlerAnnoyance)
	ProvidesQuest(NPC, AFerociousInconvenience)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, AnAuthorityOnHate) and not HasCompletedQuest(Spawn, AnAuthorityOnHate) then
		SetStepComplete(Spawn, AnAuthorityOnHate, 1)
	end
	
	if HasCompletedQuest(Spawn, AFerociousInconvenience) then
		Quest2Chat_3(NPC, Spawn)
	elseif HasQuest(Spawn, AFerociousInconvenience) and GetQuestStep(Spawn, AFerociousInconvenience) == 1 then
		PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana011.mp3", "", "", 3939930942, 3221492064, Spawn)
		AddConversationOption(conversation, "I'm still hunting the beast. Where should I look for it?", "Quest2Chat_2")
		StartConversation(conversation, NPC, Spawn, "Did you find the pack leader of the dusk prowlers?")
	elseif HasQuest(Spawn, AFerociousInconvenience) and GetQuestStep(Spawn, AFerociousInconvenience) == 2 then
		PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana011.mp3", "", "", 3939930942, 3221492064, Spawn)
		AddConversationOption(conversation, "The beast has been slain.", "Quest2Chat_3")
		StartConversation(conversation, NPC, Spawn, "Did you find the pack leader of the dusk prowlers?")
	elseif HasCompletedQuest(Spawn, ProwlerAnnoyance) and not HasQuest(Spawn, AFerociousInconvenience) and not HasCompletedQuest(Spawn, AFerociousInconvenience) then
		Quest2Chat_0(NPC, Spawn)
	elseif HasQuest(Spawn, ProwlerAnnoyance) and GetQuestStep(Spawn, ProwlerAnnoyance) == 2 then
		PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana005.mp3", "", "", 2396106128, 3585430075, Spawn)
		AddConversationOption(conversation, "Their numbers have been greatly reduced.", "Quest2Chat_0")
		StartConversation(conversation, NPC, Spawn, "Have you removed the dusk prowlers from the area?")
	elseif HasQuest(Spawn, ProwlerAnnoyance) and GetQuestStep(Spawn, ProwlerAnnoyance) == 1 then
		PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana005.mp3", "", "", 2396106128, 3585430075, Spawn)
		AddConversationOption(conversation, "Not yet.", "Quest1Chat_1")
		StartConversation(conversation, NPC, Spawn, "Have you removed the dusk prowlers from the area?")
	elseif not HasCompletedQuest(Spawn, AnAuthorityOnHate) and not HasQuest(Spawn, AnAuthorityOnHate) then
		PlayFlavor(NPC, "voiceover/english/neriak/jhana_do_zyth/darklight_wood/quest/hates_envy/qst_jhana_too_low_ee52f282.mp3", "", "", 1579540723, 4221550003, Spawn)
		StartConversation(conversation, NPC, Spawn, "Maybe you could help me... if you were a little bit stronger.")
	elseif not HasQuest(Spawn, ProwlerAnnoyance) then
		PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana001.mp3", "", "", 2468334286, 695035654, Spawn)
		AddConversationOption(conversation, "What is it you want?", "Quest1Chat_0")
		AddConversationOption(conversation, "I seek to serve Neriak in any way I can.", "Quest1Chat_0")
		AddConversationOption(conversation, "I cannot help at this time.", "PlayerEmote_no")
		StartConversation(conversation, NPC, Spawn, "Ah, the hero of Hate's Envy stands before us! Isn't he quite the specimen, Mother? Pellendra has informed us of your successful efforts to stop the Sablevein menace and the Thexians who were behind it. Now we'd like you to help us.")
	end
end

function PlayerEmote_no(NPC, Spawn)
	PlayFlavor(Spawn, "", "", "no", 0, 0, Player)
end

-----------------------------------------------------------------------------------
--				QUEST 1 Chat
-----------------------------------------------------------------------------------
function Quest1Chat_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana003.mp3", "", "agree", 1064695588, 175136461, Spawn)
	AddConversationOption(conversation, "I'm up to the task!", "QuestOffer_ProwlerAnnoyance")
	AddConversationOption(conversation, "I am not up to this task.")
	StartConversation(conversation, NPC, Spawn, "With the recent Sablevein attacks from the east, the dusk prowlers have been forced nearer to Hate's Envy. Now they impede our progress into a Thexian burial chamber we wish to investigate. I need you to cull a number of these prowlers so we can gain access to the caves.")
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(Spawn, "", "", "no", 0, 0, Player)
	PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana007.mp3", "", "tapfoot", 1258715663, 4051557607, Spawn)
	AddConversationOption(conversation, "Very well")
	StartConversation(conversation, NPC, Spawn, "I thought my directions were clear. Do not return until you've slain the dusk prowlers.")
end

function QuestOffer_ProwlerAnnoyance(NPC, Spawn)
	OfferQuest(NPC, Spawn, ProwlerAnnoyance)
end

-----------------------------------------------------------------------------------
--				QUEST 2 Chat
-----------------------------------------------------------------------------------

function Quest2Chat_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, ProwlerAnnoyance, 2)
	
	PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana006.mp3", "", "", 2179526819, 2808298057, Spawn)
	AddConversationOption(conversation, "What do you have in mind this time?", "Quest2Chat_1")
	AddConversationOption(conversation, "Forget it. I'm finished helping you.", "PlayerEmote_no")
	StartConversation(conversation, NPC, Spawn, "Wonderful, " .. GetName(Spawn) .. ". Knowing that, I have no doubt in your ability to help me once more.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana008.mp3", "", "", 2954723683, 1591713165, Spawn)
	AddConversationOption(conversation, "I will remove the pack leader.", "QuestOffer_AFerociousInconvenience")
	AddConversationOption(conversation, "Good luck with that.", "PlayerEmote_no")
	StartConversation(conversation, NPC, Spawn, "While you were indeed successful in removing several of the dusk prowlers from outside the Thexian tomb, it appears their pack leader has moved inside the cave and made it his den. He must be exterminated at once!")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana013.mp3", "", "tapfoot", 2892144271, 4226558009, Spawn)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, NPC, Spawn, "As I mentioned earlier, the pack leader has moved into the cave just west from Hate's Envy. When you find the beast, slay it!")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, AFerociousInconvenience, 2)
	
	PlayFlavor(NPC, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana012.mp3", "", "", 3216838749, 637919977, Spawn)
	AddConversationOption(conversation, "As you wish.")
	StartConversation(conversation, NPC, Spawn, "Fine work, " .. GetName(Spawn) .. ". Fine work indeed. Mother's work can begin at once. I suggest speaking with her if you have not already.")
end

function QuestOffer_AFerociousInconvenience(NPC, Spawn)
	OfferQuest(NPC, Spawn, AFerociousInconvenience)
end