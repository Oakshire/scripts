--[[
	Script Name	: SpawnScripts/NorthQeynos/Knight-LieutenantLaughlin.lua
	Script Purpose	: Knight-Lieutenant Laughlin 
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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

	local choice = math.random(1,0)

	if choice == 1 then
	else
	end

		PlayFlavor(NPC, "voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/grd_sirlaughlin.mp3", "", "", 3112487329, 768408857, Spawn)
		AddConversationOption(conversation, "Erk! Dangerous creatures?  I think I'll stay inside the gates!")
	StartConversation(conversation, NPC, Spawn, "Hail and well met!  Please beware that while you are safe within Qeynos' mighty walls, the outside world is not as forgiving. Dangerous creatures roam the lands beyond these gates.  Beware!")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/grd_sirlaughlin.mp3", "", "", 3112487329, 768408857, Spawn)
		AddConversationOption(conversation, "Erk! Dangerous creatures?  I think I'll stay inside the gates!")
		StartConversation(conversation, NPC, Spawn, "Hail and well met!  Please beware that while you are safe within Qeynos' mighty walls, the outside world is not as forgiving. Dangerous creatures roam the lands beyond these gates.  Beware!")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/quests/sirlaughlin/grd_laughlin_x1_finish.mp3", "", "", 689966140, 111412847, Spawn)
		AddConversationOption(conversation, "Thank you sir.  It was a pleasure to serve the city of Qeynos.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "So you did... so you did.  Well met adventurer you may be famous one day after all.  Let me see, I think the city can afford to pay you a bit for your work here.  Take this bag of coins, it should suffice.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/grd_sirlaughlin.mp3", "", "", 3112487329, 768408857, Spawn)
		AddConversationOption(conversation, "Erk! Dangerous creatures?  I think I'll stay inside the gates!")
	StartConversation(conversation, NPC, Spawn, "Hail and well met!  Please beware that while you are safe within Qeynos' mighty walls, the outside world is not as forgiving. Dangerous creatures roam the lands beyond these gates.  Beware!")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/quests/sirlaughlin/grd_laughlin_x1_finish.mp3", "", "", 689966140, 111412847, Spawn)
		AddConversationOption(conversation, "Thank you sir.  It was a pleasure to serve the city of Qeynos.", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "So you did... so you did.  Well met adventurer you may be famous one day after all.  Let me see, I think the city can afford to pay you a bit for your work here.  Take this bag of coins, it should suffice.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/quests/sirlaughlin/grd_laughlin_x1_initial.mp3", "", "", 2796593065, 1366994589, Spawn)
		AddConversationOption(conversation, "Gnolls?  Send a new recruit out to deal with the problem.")
	StartConversation(conversation, NPC, Spawn, "Famous, eh?  Best keep your feet planted before your head floats off.  Though, if you're looking for some recognition, I've been having some problems with the gnolls outside the gates here.  I can't spare the men to go hunt them down, you wouldn't be interested in helping out, would you?")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/quests/sirlaughlin/grd_laughlin_x1_accept.mp3", "", "", 3661162022, 1661118827, Spawn)
		AddConversationOption(conversation, "Yessir!  I'll have them running for their dens soon enough!", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Such an eager recruit! Bring me back the ears of ten gnolls.  That should be sufficient to bring their population down to a reasonable level for now.  You'll find them around the gates of the city, roaming like the dogs they are!")
end

