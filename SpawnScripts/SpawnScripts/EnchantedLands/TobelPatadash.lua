--[[
	Script Name	: SpawnScripts/EnchantedLands/TobelPatadash.lua
	Script Purpose	: Tobel Patadash <Prophet of Bristlebane>
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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

	PlayFlavor(NPC, "tobel_patadash/_exp03/deity/bristlebane/tobel/tobel_patadash001.mp3", "", "", 1450539429, 1133241398, Spawn)
	AddConversationOption(conversation, "You know I couldn't agree more. I love the thrill of pulling off a good prank.", "dlg_0_1")
	AddConversationOption(conversation, "Sorry, you've mistaken me for someone else. Good day.")
	StartConversation(conversation, NPC, Spawn, "Why hello there. The name's Patadash, Tobel Patadash. I'm the true prophet of Bristlebane, I am. Say, judging by that gleam in your eye, I'd venture to guess that you enjoy having fun, maybe even at the expense of others. A joke here, a ribbing there; all in good fun, of course. Nothing beats a carefully executed practical joke!")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I have indeed!", "dlg_0_2")
	AddConversationOption(conversation, "No thank you!")
	StartConversation(conversation, NPC, Spawn, "Well then, it seems we're both on the same proverbial page now, aren't we? If that's the case, have you come to devote yourself to the King of Thieves, the Master of Mischief, the Prince of Prank himself, Fizzlethorpe Bristlebane?")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	-- there is a pop up box saying "Would you like to accept Bristlebane as your deity?" with yes and no
	AddConversationOption(conversation, "OK then. Bye.")
	-- This is the start conversation that comes next in the dialog "Excellent then, let us begin the initiation!" 
	StartConversation(conversation, NPC, Spawn, "Great! Come back another time to accept Bristlebane as you deity.")
end

function dlg_0_3(NPC, Spawn) -- the dialog for no in dlg_0_2
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Nevermind. I'm not really interested.")
	StartConversation(conversation, NPC, Spawn, "Well, yes, of course there's an initiation process. I hope you didn't think I just wave a magic wand over your head, hand you a squirting flower and suddenly you're a true believer in Bristlebane. There's work to be done first.")
end
