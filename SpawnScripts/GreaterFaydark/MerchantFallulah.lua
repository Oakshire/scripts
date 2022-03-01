--[[
	Script Name	: SpawnScripts/GreaterFaydark/MerchantFallulah.lua
	Script Purpose	: Merchant Fallulah 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Your sister Melilah asked me...", "dlg_43_1")
	AddConversationOption(conversation, "Have a nice day!")
	StartConversation(conversation, NPC, Spawn, "Hello.")
	if convo==51 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you want to talk about it?", "dlg_51_1")
		AddConversationOption(conversation, "No problem.")
		StartConversation(conversation, NPC, Spawn, "Oh.  It's you again.  Listen, sorry about my outburst earlier.")
	end

	if convo==52 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you want to talk about it?", "dlg_52_1")
		AddConversationOption(conversation, "No problem.")
		StartConversation(conversation, NPC, Spawn, "Oh.  It's you again.  Listen, sorry about my outburst earlier.")
	end

end

function dlg_43_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "She just wanted me to...", "dlg_43_2")
	StartConversation(conversation, NPC, Spawn, "Oh, she did, did she?  Well, if she wants to talk to me, she can jolly well come down here off her high...platform...and do so herself!")
end

function dlg_43_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Do you want to see it?", "dlg_43_3")
	StartConversation(conversation, NPC, Spawn, "Oh, I'm not angry with you! I'm angry with HER! Seasons go by without so much as a 'how're you doing' and then she sends a complete STRANGER to me with a note.  A NOTE!")
end

function dlg_43_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll let her know.", "dlg_43_4")
	StartConversation(conversation, NPC, Spawn, "No.  Take it away.  You can tell her no matter what excuses she makes, I want the clock.  Got it?")
end

function dlg_52_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That's what I thought.  Melilah wants to start over with you.", "dlg_52_2")
	StartConversation(conversation, NPC, Spawn, "It's just...our father died and he was the last family Melilah and I had in Kelethin, except for each other.  I've never had to run the shop before and it's been really frustrating to me.")
end

function dlg_52_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I think you two are overdue for a long, sisterly talk.", "dlg_52_3")
	StartConversation(conversation, NPC, Spawn, "She does? I could really use the help! I mean...I miss her.  And yes, I could use the help.  She's always had a head for business.  And I don't want the clock, I just want to be friends with her again.")
end

function dlg_52_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Good luck with your business...and your sister!", "dlg_52_4")
	StartConversation(conversation, NPC, Spawn, "Poor Melilah...all this time, I misjudged her.  Thank you so much for getting us to see things straight.  May Tunare's blessings be upon you!")
end

