function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are you doing down here?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Are you looking for anything in particular?")

	--StartConversation(conversation, NPC, Spawn, "I see that you got everything. Good. Keep in mind that I always need help retrieving goods. If you're ever looking for something to do that'll pass the time, think of me!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yeah, I'll help.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Aren't you a curious bugger! I'll tell you why, it fills my pockets with coin. You'd be surprised by the folks who come down here to buy this or that.  Say, why don't you help me fill some orders? There's coin in it for you.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Got it.")
	StartConversation(conversation, NPC, Spawn, "Good. Let me write down in your journal what I need you to get.  Now hurry up, this stuff needs to stay fresh, got it?")
end

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	Say(NPC,"Ahhh... bringing yourself down into the muck, eh? Gets mighty dark down these parts. Interest you in a fine torch?")
end

function LeaveRange(NPC, Spawn)
end