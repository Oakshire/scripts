--[[
	Script Name	: SpawnScripts/TheRuins/acapturedLonetusk.lua
	Script Purpose	: a captured Lonetusk 
	Script Author	: jakejp
	Script Date	: 2018.12.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local IdentifyingtheLonetuskAlly = 394

function spawn(NPC)
	-- AddVisualStateLoop(NPC, 1000, math.random(500, 2000), 11256, 44024) -- cringe // thanks Scatman
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, IdentifyingtheLonetuskAlly) and GetQuestStep(Spawn, IdentifyingtheLonetuskAlly) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner001.mp3", "", "", 4128768340, 1228262128, Spawn)
		AddConversationOption(conversation, "I am here to get some answers from you.", "dlg_32_1")
		AddConversationOption(conversation, "Quiet down, prisoner!")
		StartConversation(conversation, NPC, Spawn, "No hurt! Me already surrender!")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner012.mp3", "", "", 882748150, 4130498841, Spawn)
		AddConversationOption(conversation, "I have no time for a babbling orc captive")
		StartConversation(conversation, NPC, Spawn, "Let me go! Please!")
	end
end

function dlg_32_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner002.mp3", "", "", 2193050384, 3870757124, Spawn)
		AddConversationOption(conversation, "You speak the Common tongue, so you must not be as dumb as you're pretending to be.", "dlg_32_2")
		AddConversationOption(conversation, "If you say so.")
	StartConversation(conversation, NPC, Spawn, "Me no have answers. Me just am little orc!")
end

function dlg_32_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner003.mp3", "", "", 124478711, 860584252, Spawn)
		AddConversationOption(conversation, "You're in no position to make deals. But I just might let you go if you tell me what I want to know.", "dlg_32_3")
		AddConversationOption(conversation, "I've had enough of you already.")
	StartConversation(conversation, NPC, Spawn, "Me not smart. Me just want to go home. You let me go, me no fight no more. Deal?")
end

function dlg_32_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner004.mp3", "", "", 1469824726, 30408133, Spawn)
		AddConversationOption(conversation, "Then I might as well leave you in the hands of these fine Militia guards. I'm sure they'll take good care of you...", "dlg_32_4")
		AddConversationOption(conversation, "Guess I'll leave then.")
	StartConversation(conversation, NPC, Spawn, "But me know nothing! Me swear!")
end

function dlg_32_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner005.mp3", "", "", 1615553147, 3449079179, Spawn)
		AddConversationOption(conversation, "Who is supplying your people with weapons and armor?", "dlg_32_5")
	StartConversation(conversation, NPC, Spawn, "No! Me not want more beatings! What you want to know?")
end

function dlg_32_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner006.mp3", "", "", 2990020628, 560025747, Spawn)
		AddConversationOption(conversation, "Fine, I'll leave you with your guards.", "dlg_32_6")
		AddConversationOption(conversation, "Okay, enough already.")
	StartConversation(conversation, NPC, Spawn, "Me not know that! Me just am little orc!")
end

function dlg_32_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner007.mp3", "", "", 3410550036, 2668527448, Spawn)
		AddConversationOption(conversation, "Alright, I'm listening.", "dlg_32_7")
		AddConversationOption(conversation, "I'm tired of your babble.")
	StartConversation(conversation, NPC, Spawn, "Wait! Me really not know! But me do know something else.")
end

function dlg_32_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner008.mp3", "", "", 3061313788, 1091321406, Spawn)
		AddConversationOption(conversation, "Where is this safe place?", "dlg_32_8")
	StartConversation(conversation, NPC, Spawn, "Me saw General Lonetusk get note. Me not see who it from, but he read it and say next shipment of weapons coming soon. Then he have his guard lock note away in safe place.")
end

function dlg_32_8(NPC, Spawn)
	SetStepComplete(Spawn, IdentifyingtheLonetuskAlly, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner009.mp3", "", "", 4040035963, 2756024604, Spawn)
		AddConversationOption(conversation, "You'd better not be lying to me, orc.", "dlg_32_9")
	StartConversation(conversation, NPC, Spawn, "Me not know exactly. General keeps important stuff locked away in underground bunker. Me only know it well guarded.")
end

function dlg_32_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner010.mp3", "", "", 309844462, 3131461869, Spawn)
		AddConversationOption(conversation, "Not a chance. You are a prisoner of the Freeport Militia.", "dlg_32_10")
		AddConversationOption(conversation, "I've talked to you enough for one day.")
	StartConversation(conversation, NPC, Spawn, "Me no lie to you! Now me tell you this, you let me go, yes?")
end

function dlg_32_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_captured_lonetusk/fprt_adv04_ruins/revamp/orc_prisoner011.mp3", "", "", 818383826, 2358181749, Spawn)
		AddConversationOption(conversation, "Tell that to the people of Shoreside that your people butchered. I leave you to the mercy of these guards.")
	StartConversation(conversation, NPC, Spawn, "You liar! You say you let me go if I tell you! You bad to poor little orc!")
end

