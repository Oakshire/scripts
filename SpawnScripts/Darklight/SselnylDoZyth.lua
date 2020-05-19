--[[
	Script Name	: SpawnScripts/Darklight/SselnylDoZyth.lua
	Script Purpose	: Sselnyl Do'Zyth <Mayor>
	Script Author	: Cynnar
	Script Date	: 2015.08.17
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ProwlerAnnoyance = 128
local NoUndeadGoesUnturned = 134
local ThexianTaint = 135

function spawn(NPC)
	ProvidesQuest(NPC, NoUndeadGoesUnturned)
	ProvidesQuest(NPC, ThexianTaint)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, ProwlerAnnoyance) then
		StartConversation(conversation, NPC, Spawn, "Leave me be!")
	elseif not HasCompletedQuest(Spawn, ThexianTaint) and GetQuestStep(Spawn, ThexianTaint) == 3 then
		PlayFlavor(NPC, "", "", "scold", 0, 0, Spawn)
		StartConversation(conversation, NPC, Spawn, "Speak with Ginwyss D'Arkenett at T'Vatar Post at once.")
	elseif not HasCompletedQuest(Spawn, ThexianTaint) and GetQuestStep(Spawn, ThexianTaint) == 1 then
		PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl010.mp3", "", "", 3344473082, 763160610, Spawn)
		AddConversationOption(conversation, "I am about to embark.")
		StartConversation(conversation, NPC, Spawn, "Why haven't you completed your mission yet?")
	elseif HasCompletedQuest(Spawn, NoUndeadGoesUnturned) and not HasCompletedQuest(Spawn, ThexianTaint) then
		ChatQuest_1_5(NPC, Spawn)
	elseif not HasCompletedQuest(Spawn, NoUndeadGoesUnturned) and GetQuestStep(Spawn, NoUndeadGoesUnturned) == 2 then
		PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl006.mp3", "", "", 2949301327, 3473298486, Spawn)
		AddConversationOption(conversation, "I have the remains here.", "ChatQuest_1_5")
		StartConversation(conversation, NPC, Spawn, "Did you find them?")
	elseif not HasCompletedQuest(Spawn, NoUndeadGoesUnturned) and GetQuestStep(Spawn, NoUndeadGoesUnturned) == 1 then
		PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl006.mp3", "", "", 2949301327, 3473298486, Spawn)
		AddConversationOption(conversation, "Not yet...", "ChatQuest_1_4")
		StartConversation(conversation, NPC, Spawn, "Did you find them?")
	elseif not HasQuest(Spawn, NoUndeadGoesUnturned) and not HasCompletedQuest(Spawn, NoUndeadGoesUnturned) then
		PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl001.mp3", "", "", 2870732726, 2209042878, Spawn)
		AddConversationOption(conversation, "I have been working hard.", "ChatQuest_1_1")
		StartConversation(conversation, NPC, Spawn, "Ah, " .. GetName(Spawn) .. ". Your name has made the rounds.")
	elseif HasCompletedQuest(Spawn, NoUndeadGoesUnturned) and HasCompletedQuest(Spawn, ThexianTaint) then
		PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
		StartConversation(conversation, NPC, Spawn, "Your help has been much appreciated!")
	end
end

function ChatQuest_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl002.mp3", "", "", 1862425876, 99259733, Spawn)
	AddConversationOption(conversation, "What work is that?", "ChatQuest_1_2")
	StartConversation(conversation, NPC, Spawn, "I am well aware of this. You have done much for Hate's Envy, and we are quite thankful. I have additional work for you, however.")
end

function ChatQuest_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl003.mp3", "", "smirk", 1447042899, 779642311, Spawn)
	AddConversationOption(conversation, "Go on.", "ChatQuest_1_3")
	StartConversation(conversation, NPC, Spawn, "Jhana has mentioned your work in clearing the path to the Thexian burial chamber. Inside I have reason to believe a once powerful Thexian Dragoon-General has been laid to rest there.")
end

function ChatQuest_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl004.mp3", "", "", 3800789963, 3276371466, Spawn)
	AddConversationOption(conversation, "I'll return with the remains at once.", "QuestOffer_NoUndeadGoesUnturned")
	AddConversationOption(conversation, "I cannont assist at this time.")
	StartConversation(conversation, NPC, Spawn, "I want you to enter the cave and bring me the remains of the fallen Dragoon-General. Once I have the remains, we can put the next part of my plan in motion.")
end

function ChatQuest_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl008.mp3", "", "", 107641320, 435607180, Spawn)
	AddConversationOption(conversation, "I'll return soon.")
	StartConversation(conversation, NPC, Spawn, "Do not return until you have found the remains of the Thexian Dragoon-General.")
end

function ChatQuest_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, NoUndeadGoesUnturned, 2)
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl007.mp3", "", "", 1506804081, 4126548148, Spawn)
	AddConversationOption(conversation, "What do you intend to do with them?", "QuestChat_1_1")
	StartConversation(conversation, NPC, Spawn, "Well... Aren't these just lovely? It's quite remarkable how a once fierce warrior has now been reduced to mere scraps. We shall find use for them, however.")
end

function QuestOffer_NoUndeadGoesUnturned(NPC, Spawn)
	OfferQuest(NPC, Spawn, NoUndeadGoesUnturned)
end


function QuestChat_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl009.mp3", "", "", 2231372796, 2001694414, Spawn)
	AddConversationOption(conversation, "What can you tell me about the Thexians?", "QuestChat_1_2")
	StartConversation(conversation, NPC, Spawn, "All in good time, " .. GetName(Spawn) .. ". In short, we're going to use them against the Thexians found near the Wellspring of Nightmares. They were reported to us by the Dread Guard. I would like to take them out before the Dread Guard have a chance to get to them to earn a bit of favor with Cristanos.")
end

function QuestChat_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl012.mp3", "", "", 739520586, 1273216737, Spawn)
	AddConversationOption(conversation, "Go on.", "QuestChat_1_3")
	StartConversation(conversation, NPC, Spawn, "They are but insects that bite in the night, " .. GetName(Spawn) .. ". The Thexians do not recognize Cristanos as the ruler of Neriak and seek to steal the throne. They creep into the Darklight Wood and attempt to make it their own. They will fail. For now, they are attempting to harness the spirits trapped within the Wellspring of Nightmares to do their bidding.")
end

function QuestChat_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl013.mp3", "", "", 3807512050, 1047350728, Spawn)
	AddConversationOption(conversation, "How will I do that?", "QuestChat_1_4")
	StartConversation(conversation, NPC, Spawn, "By placing a vexing curse on the remains you gathered for me, I intend for you to disrupt the Thexians' attempt to control the spirits and turn them against our enemy.")
end

function QuestChat_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl014.mp3", "", "", 1429242287, 2342006533, Spawn)
	AddConversationOption(conversation, "I will do this at once!", "QuestChat_1_5")
	StartConversation(conversation, NPC, Spawn, "Your mission is comprised of two parts. First, you must exterminate a number of the spirits that the Thexians have already tainted. Second, you must take the vex-runed remains and toss them into the Wellspring of Nightmares. Doing this will befoul their ritual and cause them great harm.")
end

function QuestChat_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl015.mp3", "", "", 2064460761, 4053677356, Spawn)
	AddConversationOption(conversation, "I will not fail you.", "QuestOffer_ThexianTaint")
	AddConversationOption(conversation, "I must decline.")
	StartConversation(conversation, NPC, Spawn, "Once you've put an end to the ritual, bring news of your success to Ginwyss D'Arkenett at T'Vatar Post. She will be quite happy to receive it. You can get to the Wellspring of Nightmares and the Thexians by taking the road east out of Hate's Envy. Following that road further will lead you to T'Vatar Post.")
end

function QuestOffer_ThexianTaint(NPC, Spawn)
	OfferQuest(NPC, Spawn, ThexianTaint)
end