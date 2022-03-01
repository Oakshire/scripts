--[[
	Script Name	: SpawnScripts/GreaterFaydark/Agarighus.lua
	Script Purpose	: Agarighus <Grove Tender>
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus000_complete.mp3", "", "", 730615560, 3996925984, Spawn)
	AddConversationOption(conversation, "I am XXXXXXXX. Morganellus said I should visit you.", "dlg_23_1")
	StartConversation(conversation, NPC, Spawn, "You speak to Agarighus.")
	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus009.mp3", "", "", 2714952017, 1027396530, Spawn)
		AddConversationOption(conversation, "Yes, they have been moved.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "Have you moved the shrumblers?")
	end

	if convo==28 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus016.mp3", "", "", 1905129429, 4204811677, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_28_1")
		StartConversation(conversation, NPC, Spawn, "Have you saved our proto-caplings?")
	end

end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus001.mp3", "", "", 66949189, 2899163364, Spawn)
	AddConversationOption(conversation, "Actually he didn't.", "dlg_23_2")
	StartConversation(conversation, NPC, Spawn, "Ah, Morganellus, did he tell you to say hello to me?")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus002_complete.mp3", "", "", 3839294235, 2098773049, Spawn)
	AddConversationOption(conversation, "I suppose.", "dlg_23_3")
	AddConversationOption(conversation, "I have to be going.")
	StartConversation(conversation, NPC, Spawn, "Oh... always into practicality, that one.")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus002.mp3", "", "", 2532533232, 2094215276, Spawn)
	AddConversationOption(conversation, "What is it?", "dlg_23_4")
	StartConversation(conversation, NPC, Spawn, "I am sad to say to you, .. GetName(Spawn) .. . that you have come to Dyer Mycoria at a bad time. The grobins--dark children of the heavens--have come to this place and tried to take it as their own. This chaos confuses us, and Dyer Mycoria may fall. I- oh, oh no!")
end

function dlg_23_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus003.mp3", "", "", 3779153550, 4100680879, Spawn)
	AddConversationOption(conversation, "What do you need?", "dlg_23_5")
	StartConversation(conversation, NPC, Spawn, "I have forgotten my duties as a grove tender, but I must stay here. Child of the heavens, I need your help.")
end

function dlg_23_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus004.mp3", "", "", 461489714, 806281340, Spawn)
	AddConversationOption(conversation, "I can transport the shrumblers for you.", "dlg_23_6")
	StartConversation(conversation, NPC, Spawn, "East of here are two cave paths to some of our germinariums. Though not malicious, the shrumblers in these caves, especially the younger ones, find their way into our germinariums and upset our mineral balance. This affects the growth process of our proto-caplings. Normally I spend some time taking these shrumblers from the germinariums and bringing them back to their natural area in the north eastern caves, but with the grobin presence I have forgotten my duties.")
end

function dlg_23_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus005.mp3", "", "", 1864583073, 2525799582, Spawn)
	AddConversationOption(conversation, "Okay.", "dlg_23_7")
	StartConversation(conversation, NPC, Spawn, "Will you? I will give you my shrumbler net. Once you catch the Shrumblers, release them in the north-eastern area of these caves, they should recognize where they are and stay out of our germinariums, at least for a little while.")
end

function dlg_23_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus006.mp3", "", "", 3926042365, 1419770262, Spawn)
	AddConversationOption(conversation, "You are welcome.", "dlg_23_8")
	StartConversation(conversation, NPC, Spawn, "Thank you, XXXXXXXX.")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus010.mp3", "", "", 3194574992, 1484124224, Spawn)
	AddConversationOption(conversation, "You are welcome.", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "The volatile spirit of the children of the heavens is most helpful at times. Thank you, XXXXXXXX.")
end

function dlg_25_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus011.mp3", "", "", 2129516882, 4139121979, Spawn)
	AddConversationOption(conversation, "Why can't you reach it?", "dlg_25_3")
	StartConversation(conversation, NPC, Spawn, "It is a shame we can not reach our western germinarium.")
end

function dlg_25_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus012.mp3", "", "", 2764843418, 2643187457, Spawn)
	AddConversationOption(conversation, "Why don't you go in and rescue them?", "dlg_25_4")
	StartConversation(conversation, NPC, Spawn, "There are grobins there. We do not know how to remove them. Our proto-caplings in that germinarium may be lost, sadly.")
end

function dlg_25_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus013.mp3", "", "", 3170133892, 1263246865, Spawn)
	AddConversationOption(conversation, "Why don't I go in and rescue them?", "dlg_25_5")
	StartConversation(conversation, NPC, Spawn, "There are grobins in there!")
end

function dlg_25_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus014.mp3", "", "", 2525042118, 2230039901, Spawn)
	AddConversationOption(conversation, "I will go get them.", "dlg_25_6")
	StartConversation(conversation, NPC, Spawn, "Is that possible? Perhaps... There is a small cave path to the west that leads to the germinarium. If you could bring our proto-caplings to safety there would be reason for much joy. They will be hard to spot to the eyes of a child of the heavens. They are merely the first signs of life from our spore seeders and will be very, very small.")
end

function dlg_25_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus015.mp3", "", "", 2574699524, 1590689915, Spawn)
	AddConversationOption(conversation, "I will return.", "dlg_25_7")
	StartConversation(conversation, NPC, Spawn, "Again, .. GetName(Spawn) .. . you earn our thanks.")
end

function dlg_28_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/agarighus/_exp03/exp03_rgn_greater_faydark/shroomba/agarighus/agarighus017.mp3", "", "", 1366414831, 600906115, Spawn)
	AddConversationOption(conversation, "Thank you. I am glad to help.", "dlg_28_2")
	StartConversation(conversation, NPC, Spawn, "Oh, .. GetName(Spawn) .. . you do much for the Shroomba! We are ever-grateful. I have these. They are of little use to anyone in Dyer Mycoria, but other children like you insist on giving them to me from time to time.")
end

