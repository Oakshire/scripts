--[[
	Script Name	: SpawnScripts/StonestairByway/SevriIlBethod.lua
	Script Purpose	: Sevri Il'Bethod 
	Script Author	: Jabantiz
	Script Date	: 2018.06.22
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TWEEZING_KERRA = 356
local INCANTATION_ORATION = 357
local ABOLISHING_CURIOUSITY = 358

function spawn(NPC)
	ProvidesQuest(NPC, INCANTATION_ORATION)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, TWEEZING_KERRA) and GetQuestStep(Spawn, TWEEZING_KERRA) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod001.mp3", "", "", 2840183078, 2969997848, Spawn)
		AddConversationOption(conversation, "You are correct. Vess asked me to give you this mixture.", "dlg_29_1")
		StartConversation(conversation, NPC, Spawn, "Oh, did Vess send you? He told me that he'd be sending someone promising along shortly. You seem to meet that criteria.")
	elseif (HasQuest(Spawn, TWEEZING_KERRA) and GetQuestStep(Spawn, TWEEZING_KERRA) == 3) or CanReceiveQuest(Spawn, INCANTATION_ORATION) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod008.mp3", "", "", 1767926562, 4023860365, Spawn)
		AddConversationOption(conversation, "Hey... you aren't allergic, are you?", "dlg_30_1")
		StartConversation(conversation, NPC, Spawn, "Achoo! Blast. I hate this dreaded cat fur. It's all over!")
	elseif HasQuest(Spawn, ABOLISHING_CURIOUSITY) and GetQuestStep(Spawn, ABOLISHING_CURIOUSITY) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod013.mp3", "", "", 1502950619, 3498385228, Spawn)
		AddConversationOption(conversation, "Aye, he did.", "dlg_37_1")
		StartConversation(conversation, NPC, Spawn, "So, Vess taught you the chant then?")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/quest_newbie_erudite_sevri_no_speak_f6ea55bb.mp3", "Please, I don't have anything for you right now.", "", 3441706534, 2672842670, Spawn)
	end
end

function dlg_29_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod002.mp3", "", "", 3354799610, 364441857, Spawn)
	AddConversationOption(conversation, "That's funny, he didn't mention it.", "dlg_29_2")
	StartConversation(conversation, NPC, Spawn, "Splendid! I take it you are the one that gathered these seeds? Vess has many astounding qualities, but his eyesight is not among those. He often fumbles mundane tasks like correctly identifying spell components.")
end

function dlg_29_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod003.mp3", "", "", 148598238, 1216758418, Spawn)
	AddConversationOption(conversation, "Not to worry. No one will find out from me.", "dlg_29_3")
	AddConversationOption(conversation, "I can't promise that my lips would stay sealed for enough coin, but I doubt anyone will ask.")
	StartConversation(conversation, NPC, Spawn, "No. He wouldn't. We do not admit weakness here. I would ask that you keep that bit of information to yourself as well.")
end

function dlg_29_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod004.mp3", "", "", 4204901363, 3185230293, Spawn)
	AddConversationOption(conversation, "That's the second time I've heard about this. Who is this brotherhood?", "dlg_29_4")
	StartConversation(conversation, NPC, Spawn, "May Cazic reject your soul should you reveal such information to the wrong party. We were fractured once before. The brotherhood we seek to protect must look after itself.")
end

function dlg_29_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod005.mp3", "", "", 3118209610, 2540852917, Spawn)
	AddConversationOption(conversation, "I've got it. Loose lips sink ships.", "dlg_29_5")
	StartConversation(conversation, NPC, Spawn, "We are known to each other as the Abbatoirs. No one else knows of our existence. We prefer it to remain so, and will take steps to ensure that it does. I hope you catch my meaning.")
end

function dlg_29_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod006.mp3", "", "", 3867537921, 1281338132, Spawn)
	AddConversationOption(conversation, "I'll help you, but why the problem? There's kerra hair all over.", "dlg_29_6")
	AddConversationOption(conversation, "I don't think so. I'm done for now.")
	StartConversation(conversation, NPC, Spawn, "You do learn quickly. Now, in addition to what you brought me I have need of kerra hair for this process. I would gather it myself, but it is best done by someone new to the area.")
end

function dlg_29_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, TWEEZING_KERRA, 1)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod007.mp3", "", "", 2694294264, 2914273569, Spawn)
	AddConversationOption(conversation, "I'll return with your fur.")
	StartConversation(conversation, NPC, Spawn, "It must be taken directly from the kerra. Here, let me give you a small pair of silver tweezers. Use the tweezers to take a bit of hair from a few kerra, then bring them back to me.")
end

function dlg_30_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod009.mp3", "", "", 1600845257, 1811343873, Spawn)
	AddConversationOption(conversation, "Indeed it would be.", "dlg_30_2")
	StartConversation(conversation, NPC, Spawn, "Nonsense. Just a bit drifted up my nose. It would be hard to live here if one were allergic.")
end

function dlg_30_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod010.mp3", "", "", 1523234099, 1835837683, Spawn)
	AddConversationOption(conversation, "Yes, here's the fur you requested.", "dlg_30_3")
	StartConversation(conversation, NPC, Spawn, "But let's talk about you. Like... did you bring back the fur?")
end

function dlg_30_3(NPC, Spawn)
	SetStepComplete(Spawn, TWEEZING_KERRA, 3)
	OfferQuest(NPC, Spawn, INCANTATION_ORATION)
end

function dlg_37_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod014.mp3", "", "", 2329555346, 2187265522, Spawn)
	AddConversationOption(conversation, "Sometimes you just need someone who can get the job done.", "dlg_37_2")
	StartConversation(conversation, NPC, Spawn, "Very good. I must say, I was unsure that you would be able to assist us when he mentioned you. Now I am quite happy with your progress.")
end

function dlg_37_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, ABOLISHING_CURIOUSITY, 1)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/sevri_ilbethod015.mp3", "", "", 969330079, 2958205445, Spawn)
	AddConversationOption(conversation, "I'll not disappoint.")
	StartConversation(conversation, NPC, Spawn, "Correct. Here are the components. Be careful not to waste them. A lot of effort went into making this mixture.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sevri_il_bethod/fprt_hood02/quest_newbie_erudite_sevri_no_speak_f6ea55bb.mp3", "Please, I don't have anything for you right now.", "", 3441706534, 2672842670, Spawn)
--]]

