--[[
	Script Name	: SpawnScripts/GreaterFaydark/AthinaePanteraas.lua
	Script Purpose	: Athinae Panteraas <Banker>
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/athinae_panteraas/_exp03/exp03_cty_kelethin/tutorials/banker_athinae/banker_athinae001.mp3", "", "", 2060518952, 3837644303, Spawn)
	AddConversationOption(conversation, "Lyyti suggested I come speak with you.", "dlg_42_1")
	AddConversationOption(conversation, "Nothing today, thanks.")
	StartConversation(conversation, NPC, Spawn, "How can I help you today?")
end

function dlg_42_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/athinae_panteraas/_exp03/exp03_cty_kelethin/tutorials/banker_athinae/banker_athinae002.mp3", "", "", 2898612991, 4167485514, Spawn)
	AddConversationOption(conversation, "Do you remember much about Kelethin's past?", "dlg_42_2")
	StartConversation(conversation, NPC, Spawn, "Ah, .. GetName(Spawn) .. .  You're starting your Rite of Passage already?  Why, I remember when your spirit bud was smaller than a wisp!  Time flows swiftly these days, faster than in the Rings of old.")
end

function dlg_42_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/athinae_panteraas/_exp03/exp03_cty_kelethin/tutorials/banker_athinae/banker_athinae003.mp3", "", "", 262079646, 2170522942, Spawn)
	AddConversationOption(conversation, "I guess you chose the former!  Er, right?", "dlg_42_3")
	StartConversation(conversation, NPC, Spawn, "As much as I need to remember.  Kelethin was made by the Feir'Dal -- the wood elves.  Many of them left or otherwise dwindled away while our Fae spirits continued to grow.  My own spirit reacted so strongly to being inside the bank when I started the Rite of Passage that I knew I was destined to be a banker.  Or a bank robber!")
end

function dlg_42_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/athinae_panteraas/_exp03/exp03_cty_kelethin/tutorials/banker_athinae/banker_athinae004.mp3", "", "", 72224709, 2528981910, Spawn)
	AddConversationOption(conversation, "That's good to know!", "dlg_42_4")
	StartConversation(conversation, NPC, Spawn, "Of course, .. GetName(Spawn) .. . All my memories are tied into financing, tracking the possessions folks place into or take out of their accounts.  As a congratulations for beginning your Rite of Passage, we've prepared a banking slot for you.  You can store items as well as coin safely here.")
end

function dlg_42_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/athinae_panteraas/_exp03/exp03_cty_kelethin/tutorials/banker_athinae/banker_athinae005.mp3", "", "", 2118102052, 2064632205, Spawn)
	AddConversationOption(conversation, "Thank you!", "dlg_42_5")
	StartConversation(conversation, NPC, Spawn, "If you have questions about how banking works, talk to Trainer Kaali at Green Knoll.  She's the one who taught me!  Meanwhile, I need to tend to our customers' needs.  Best wishes on beginning your journey, XXXXXXXX!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/athinae_panteraas/_exp03/exp03_cty_kelethin/merchants/banker_athinae_hail_776b2dc1.mp3", "Welcome to the Kelethin First Regional Bank!", "wave", 175096612, 245728640, Spawn)
--]]

