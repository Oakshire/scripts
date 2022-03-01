--[[
	Script Name	: SpawnScripts/GreaterFaydark/NimessSessi.lua
	Script Purpose	: Nimess Sessi <City Registrar>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Nothing, thanks.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Greetings! Is there something I can do for you?")
	if convo==67 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I was told to speak with you about becoming a citizen of Kelethin.", "dlg_67_1")
		AddConversationOption(conversation, "Nothing, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings! Is there something I can do for you?")
	end

	if convo==68 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I want to know more about becoming a citizen of Kelethin.", "dlg_68_1")
		AddConversationOption(conversation, "Nothing, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings! Is there something I can do for you?")
	end

	if convo==69 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I want to know more about becoming a citizen of Kelethin.", "dlg_69_1")
		AddConversationOption(conversation, "Nothing, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings! Is there something I can do for you?")
	end

end

function dlg_67_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "But I'm Fae! Why must I go through this process, too?", "dlg_67_2")
	AddConversationOption(conversation, "What do I need to learn?")
	StartConversation(conversation, NPC, Spawn, "You've come to the right place! It's my joyous duty to explain a little bit about Kelethin to those who seek permanent citizenship status.")
end

function dlg_67_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Not me!")
	AddConversationOption(conversation, "Maybe a little.", "dlg_67_3")
	AddConversationOption(conversation, "Of course not!")
	AddConversationOption(conversation, "Yes.")
	StartConversation(conversation, NPC, Spawn, "Becoming a citizen is simple, but living in Kelethin may be different than it is anywhere else.  For one thing, our beautiful city is set in the trees, from which it is possible to fall off.  Are you afraid of heights?")
end

function dlg_68_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "But I'm Fae! Why must I go through this process, too?", "dlg_68_2")
	AddConversationOption(conversation, "What do I need to learn?")
	StartConversation(conversation, NPC, Spawn, "You've come to the right place! It's my joyous duty to explain a little bit about Kelethin to those who seek permanent citizenship status.")
end

function dlg_68_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm definitely staying!", "dlg_68_3")
	AddConversationOption(conversation, "I need to think about this.")
	StartConversation(conversation, NPC, Spawn, "Queen Amree specifically requested that ALL who want to become citizens go through this step, including Fae.  You can, of course, choose to seek citizenship in Qeynos instead.  Even if your spirit bud has lived here for generations, it is up to you to decide whether you'll stay.")
end

function dlg_68_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Not me!", "dlg_68_4")
	AddConversationOption(conversation, "Maybe a little.")
	AddConversationOption(conversation, "Of course not!")
	AddConversationOption(conversation, "Yes.")
	StartConversation(conversation, NPC, Spawn, "Becoming a citizen is simple, but living in Kelethin may be different than it is anywhere else.  For one thing, our beautiful city is set in the trees, from which it is possible to fall off.  Are you afraid of heights?")
end

function dlg_68_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Oh, all right.  No, I'm not afraid of heights.")
	StartConversation(conversation, NPC, Spawn, "Remember, the Queen herself asked that I go through this with all who wish to become citizens.  I'm not pranking you, honest!")
end

function dlg_69_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "But I'm Fae! Why must I go through this process, too?", "dlg_69_2")
	AddConversationOption(conversation, "What do I need to learn?")
	StartConversation(conversation, NPC, Spawn, "You've come to the right place! It's my joyous duty to explain a little bit about Kelethin to those who seek permanent citizenship status.")
end

function dlg_69_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm definitely staying!", "dlg_69_3")
	AddConversationOption(conversation, "I need to think about this.")
	StartConversation(conversation, NPC, Spawn, "Queen Amree specifically requested that ALL who want to become citizens go through this step, including Fae.  You can, of course, choose to seek citizenship in Qeynos instead.  Even if your spirit bud has lived here for generations, it is up to you to decide whether you'll stay.")
end

function dlg_69_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Not me!", "dlg_69_4")
	AddConversationOption(conversation, "Maybe a little.")
	AddConversationOption(conversation, "Of course not!")
	AddConversationOption(conversation, "Yes.")
	StartConversation(conversation, NPC, Spawn, "Becoming a citizen is simple, but living in Kelethin may be different than it is anywhere else.  For one thing, our beautiful city is set in the trees, from which it is possible to fall off.  Are you afraid of heights?")
end

function dlg_69_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That's a little comforting.")
	StartConversation(conversation, NPC, Spawn, "When the Fae rebuilt Kelethin with the Feir'Dal, we added some berms to each platform.  They won't keep you from walking off if you aren't paying attention, but if you watch your step, you will see them and know where the edges are located.")
end

function dlg_69_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That's very comforting.", "dlg_69_6")
	StartConversation(conversation, NPC, Spawn, "Additionally, each ramp has a little curved railing where it attaches to the next platform.  This is another visual cue that will guide you toward the proper path.  The ramps are very sturdy and do not sway, no matter how many people are actually on them.")
end

function dlg_69_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Oh, come on! Now you ARE pulling my wings!", "dlg_69_7")
	AddConversationOption(conversation, "That's good.")
	AddConversationOption(conversation, "I see.")
	AddConversationOption(conversation, "I need to finish this later.")
	StartConversation(conversation, NPC, Spawn, "Good!  Kelethin is not as large of a city as Qeynos, which helps us keep things very simple.  We do have several amenities that are similar.  We have a bank, lovely houses and several areas in which crafters can practice their trades.")
end

function dlg_69_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thanks!", "dlg_69_8")
	StartConversation(conversation, NPC, Spawn, "Heh! I wondered how long you'd put up with this! The Queen does want all Fae to go through the same process, but you're right, she said that we don't need all this stuff.  Head back down to talk with Gibrien and you may begin to do your community service immediately.  Good luck!")
end

