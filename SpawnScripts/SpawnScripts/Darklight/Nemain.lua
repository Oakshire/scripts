--[[
	Script Name	: SpawnScripts/Darklight/Nemain.lua
	Script Purpose	: Nemain 
	Script Author	: John Adams
	Script Date	: 2009.01.31
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1021.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Balance?", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "You dwell within the Shadow Oak, under the direction of Thelia N'Fyre. We watch over the Darklight Wood and seek to keep balance.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What kind of problems do you find?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Balance. Small perversions grow to upset the natural order of things, we excise these perversions. We spend our time searching the woods for problems.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I could help investigate.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Only recently we've found the adolescent snarlers from the wolf dens to the east are moving out much farther than usual. As such, we will be investigating this as soon as we get time.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right, I can get them.", "dlg_1_4")
	AddConversationOption(conversation, "I am not ready to do this.")
	StartConversation(conversation, NPC, Spawn, "You look able. If you wish to help we will not stop you. I have three requests of you, in this case. Travel northwest of Wanderlust Fair near the wolf dens, where the adolescent snarlers are now out prowling. While there, release the searcher wisp that I'll give you. It will observe the wolves and their environment in an attempt to discover unnatural phenomena. Second and third, I'd like the body of one of the adolescent wolves as well as the body of one of the deer that are also in that area.")
end

