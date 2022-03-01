--[[
	Script Name	: SpawnScripts/GreaterFaydark/Gomphum.lua
	Script Purpose	: Gomphum <Boletae Herder>
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum000.mp3", "", "", 3624615111, 858972471, Spawn)
	AddConversationOption(conversation, "So long as they allow it?", "dlg_24_1")
	StartConversation(conversation, NPC, Spawn, "Gomphum welcomes you to Dyer Mycoria. You are free to stay so long as the grobins allow it.")
	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum005.mp3", "", "", 3368360641, 1528435648, Spawn)
		AddConversationOption(conversation, "I have.", "dlg_26_1")
		StartConversation(conversation, NPC, Spawn, "Have you done it?")
	end

	if convo==27 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum010.mp3", "", "", 4241201770, 2705100899, Spawn)
		AddConversationOption(conversation, "Yes, but they will be less of a problem with Pengo and Turkrik gone.", "dlg_27_1")
		StartConversation(conversation, NPC, Spawn, "Are the grobins still here?")
	end

end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum001.mp3", "", "", 379711117, 2349384250, Spawn)
	AddConversationOption(conversation, "Why don't you force them to leave?", "dlg_24_2")
	StartConversation(conversation, NPC, Spawn, "Yes, they are very aggressive. They were not always here. They started to appear recently. It has been determined that they are not children of the earth as we are, so we don't think they sprung from the ground. We think perhaps they dug their way in. We do not mind their presence, but they are destructive, and have been stealing our proto-caplings. It is hard work growing these caplings.")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum002.mp3", "", "", 53321845, 3819069977, Spawn)
	AddConversationOption(conversation, "What if I killed the grobins?", "dlg_24_3")
	StartConversation(conversation, NPC, Spawn, "Gomphum does not understand what you mean. The grobins do not listen to us. Instead they smash things. The grobins have kept us from our west germinarium for some time now, and they are digging up our proto-caplings. It saddens us. They are not Shroomba. Why would they want our proto-caplings?")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum003.mp3", "", "", 3848512332, 3031309052, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_24_4")
	StartConversation(conversation, NPC, Spawn, "That might work. The grobin diggers are our biggest concern. Please, go to our western germinarium and do as you suggest.")
end

function dlg_24_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum004.mp3", "", "", 1140614510, 2295082242, Spawn)
	AddConversationOption(conversation, "You're welcome.", "dlg_24_5")
	StartConversation(conversation, NPC, Spawn, "Thank you.")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum006.mp3", "", "", 103650992, 2944240477, Spawn)
	AddConversationOption(conversation, "Pengo and Turkrik?", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "Ah, this pleases Gomphum. Perhaps this will stop the constant grobin activity. Perhaps they will go back into their cave paths and not return. They will return to Pengo and Turkrik and leave the Shroomba alone.")
end

function dlg_26_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum007.mp3", "", "", 457205884, 1475917544, Spawn)
	AddConversationOption(conversation, "I can take them out, that might stop the grobins from attacking.", "dlg_26_3")
	StartConversation(conversation, NPC, Spawn, "Meanest of the grobins. They are like Gomphum, other grobins listen to them. They are why grobins come to Dyer Mycoria.")
end

function dlg_26_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum008.mp3", "", "", 2731718193, 1770884141, Spawn)
	AddConversationOption(conversation, "I will go.", "dlg_26_4")
	StartConversation(conversation, NPC, Spawn, "That might happen. Gomphum thinks it is worth trying. Gomphum thanks you for your offer. Go to the cave path to the north west. Down those cave paths you will find them.")
end

function dlg_26_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum009.mp3", "", "", 1786125202, 655475173, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg_26_5")
	StartConversation(conversation, NPC, Spawn, "Gomphum wishes you luck.")
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum011.mp3", "", "", 3639464975, 2923242531, Spawn)
	AddConversationOption(conversation, "They also had an orc with them.", "dlg_27_2")
	StartConversation(conversation, NPC, Spawn, "Ah, this is good to hear.")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum012.mp3", "", "", 3576000828, 164182188, Spawn)
	AddConversationOption(conversation, "Uh, yes.", "dlg_27_3")
	StartConversation(conversation, NPC, Spawn, "The beast of blue?")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum013.mp3", "", "", 665240647, 340790877, Spawn)
	AddConversationOption(conversation, "Yes, I will tell Jenthis.", "dlg_27_4")
	StartConversation(conversation, NPC, Spawn, "A man spoke to Gomphum of these beasts. He asked that Gomphum tell him if they are spotted, and now they have been. Would you find Jenthis Viridar and tell him as much? He is this man. He says he is south from the canyon our cave paths lead to. Sapling Spur Outpost, was what he called it.")
end

function dlg_27_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/gomphum/_exp03/exp03_rgn_greater_faydark/shroomba/gomphum/gomphum014.mp3", "", "", 1778893315, 841928126, Spawn)
	AddConversationOption(conversation, "You are welcome.", "dlg_27_5")
	StartConversation(conversation, NPC, Spawn, "Gomphum once again thanks you.")
end

