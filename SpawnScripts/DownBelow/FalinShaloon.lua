function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be on my way. ")
	StartConversation(conversation, NPC, Spawn, "Buy something or be on your way!  I don't have time to chat with the likes of you...")
end


function InRange(NPC, Spawn)
	Say(NPC,"If I don't have what you want, you don't need it!")
end

function LeaveRange(NPC, Spawn)
end