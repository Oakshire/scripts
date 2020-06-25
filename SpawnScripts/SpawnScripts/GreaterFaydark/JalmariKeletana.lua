--[[
	Script Name	: SpawnScripts/GreaterFaydark/JalmariKeletana.lua
	Script Purpose	: Jalmari Keletana 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/quest/quest_intro_jalmari_hail_1193678d.mp3", "Not all Fae are flighty.", "", 3091431058, 1671211988, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/quest/quest_intro_jalmari_hail_ff5378ca.mp3", "The key to good government is efficiency.", "", 824038916, 1598888890, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/tutorials/qst_jalmari/qst_jalmari001.mp3", "", "", 2121079748, 3485347487, Spawn)
	AddConversationOption(conversation, "I need to speak with you about the Grender.", "dlg_2_1")
	AddConversationOption(conversation, "Nothing right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Yes? Can I help you?")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/tutorials/qst_jalmari/qst_jalmari002.mp3", "", "", 2082721768, 1564608519, Spawn)
	AddConversationOption(conversation, "But I have proof!", "dlg_2_2")
	AddConversationOption(conversation, "It is a waste of time, never mind.")
	StartConversation(conversation, NPC, Spawn, "The Grender? I do not have time to listen to more rumors about a mythical creature!")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/tutorials/qst_jalmari/qst_jalmari003.mp3", "", "", 1197751578, 2295690654, Spawn)
	AddConversationOption(conversation, "I was much younger then.  And besides, there really is a Grender!", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "Where is your 'proof,' .. GetName(Spawn) .. . Do you think it's wise to pull a prank while you're undergoing the Rite of Passage?  No one has forgotten that stunt you pulled in Joleena's Restaurant.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/tutorials/qst_jalmari/qst_jalmari004.mp3", "", "", 3695624936, 3885790951, Spawn)
	AddConversationOption(conversation, "The scouts focused on areas farther away.  The Grender is beneath Kelethin itself.", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "Where is the proof, then?  How were you able to locate it while our scouts could not?")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/tutorials/qst_jalmari/qst_jalmari007.mp3", "", "", 1547507401, 2590251315, Spawn)
	AddConversationOption(conversation, "I get to meet the Queen?", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "Interesting...then we'll need to hold a meeting to discuss what this could mean and how we're to handle it.  The Queen will want to be involved.  She's very hands-on.  When you get to the Fae Royal Hall, speak with the Lady Milika Vikaarinen.  She'll decide whether you get to meet Queen Amree today or not.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/tutorials/qst_jalmari/qst_jalmari008.mp3", "", "", 313118275, 4120683222, Spawn)
	AddConversationOption(conversation, "I'll be on my way.", "dlg_2_6")
	StartConversation(conversation, NPC, Spawn, "Before you seek an audience with her, speak to Hamnal and Eleoona.  They're both members of the self-defense team stationed near the other two lifts.  Explain to them what has happened and get their recommendations before you head to the Fae Royal Hall.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/quest/quest_intro_jalmari_hail_1193678d.mp3", "Not all Fae are flighty.", "", 3091431058, 1671211988, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/jalmari_keletana/_exp03/exp03_cty_kelethin/quest/quest_intro_jalmari_hail_ff5378ca.mp3", "The key to good government is efficiency.", "", 824038916, 1598888890, Spawn)
--]]

