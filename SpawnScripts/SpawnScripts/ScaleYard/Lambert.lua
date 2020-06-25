--[[
	Script Name	: Lambert.lua
	Script Purpose	: Lambert the cat
	Script Author	: Xanibunib
	Script Date	: 3.28.2009
	Script Notes	: I like fish...
--]]
function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeavingRange")

	MovementLoopAddLocation(NPC, 22.81, -4.38, 32.81, 3, 0)
	MovementLoopAddLocation(NPC, 19.00, -4.38, 47.91, 3, 0)
	MovementLoopAddLocation(NPC, 30.35, 0.00, 51.70, 3, 0)
	MovementLoopAddLocation(NPC, 29.89, 0.06, 56.19, 3, 5)
	MovementLoopAddLocation(NPC, 28.23, 0.00, 59.10, 3, 0)
	MovementLoopAddLocation(NPC, 13.19, -4.38, 54.93, 3, 0)
	MovementLoopAddLocation(NPC, 6.70, -4.38, 54.33, 3, 5)
	MovementLoopAddLocation(NPC, 11.11, -4.38, 59.40, 3, 0)
	MovementLoopAddLocation(NPC, 14.33, -4.38, 62.94, 3, 5)
	MovementLoopAddLocation(NPC, 7.88, -4.38, 64.47, 3, 0)
	MovementLoopAddLocation(NPC, 6.37, -4.38, 69.68, 3, 0)
	MovementLoopAddLocation(NPC, 10.87, -4.38, 72.00, 3, 10)
	MovementLoopAddLocation(NPC, 7.93, -4.38, 72.70, 3, 0)
	MovementLoopAddLocation(NPC, 6.62, -4.65, 79.08, 3, 0)
	MovementLoopAddLocation(NPC, 6.97, -4.69, 83.51, 3, 0)
	MovementLoopAddLocation(NPC, 2.78, -4.66, 93.73, 3, 0)
	MovementLoopAddLocation(NPC, 0.23, -4.67, 103.16, 3, 0)
	MovementLoopAddLocation(NPC, 0.82, -4.61, 109.15, 3, 0)
	MovementLoopAddLocation(NPC, -3.88, -4.38, 105.70, 3, 15)
	MovementLoopAddLocation(NPC, -1.74, -4.68, 105.50, 3, 0)
	MovementLoopAddLocation(NPC, 4.29, -4.66, 89.09, 3, 0)
	MovementLoopAddLocation(NPC, 7.14, -4.65, 75.05, 3, 0)
	MovementLoopAddLocation(NPC, 7.24, -4.38, 65.48, 3, 0)
	MovementLoopAddLocation(NPC, 9.03, -4.38, 56.55, 3, 0)
	MovementLoopAddLocation(NPC, 13.24, -4.36, 48.21, 3, 0)
	MovementLoopAddLocation(NPC, 14.93, -4.38, 34.59, 3, 0)
	MovementLoopAddLocation(NPC, 16.77, -4.38, 24.72, 3, 0)
	MovementLoopAddLocation(NPC, 14.36, -4.38, 23.53, 3, 5)
	MovementLoopAddLocation(NPC, 17.50, -4.38, 14.88, 3, 0)
	MovementLoopAddLocation(NPC, 9.21, -4.20, 12.62, 3, 0)
	MovementLoopAddLocation(NPC, 1.25, -4.60, 9.41, 3, 0)
	MovementLoopAddLocation(NPC, -5.98, -5.13, 2.10, 3, 0)
	MovementLoopAddLocation(NPC, -4.62, -5.59, -10.56, 3, 0)
	MovementLoopAddLocation(NPC, -7.92, -5.57, -9.38, 3, 0)
	MovementLoopAddLocation(NPC, -2.63, -5.18, -2.02, 3, 0)
	MovementLoopAddLocation(NPC, 0.51, -4.99, 1.73, 3, 0)
	MovementLoopAddLocation(NPC, 7.18, -4.37, 7.06, 3, 0)
	MovementLoopAddLocation(NPC, 12.13, -4.23, 8.17, 3, 0)
	MovementLoopAddLocation(NPC, 13.03, -4.38, 4.20, 3, 10)
	MovementLoopAddLocation(NPC, 19.31, -4.38, 10.26, 3, 0)
	MovementLoopAddLocation(NPC, 26.12, -2.25, 15.53, 3, 0)
	MovementLoopAddLocation(NPC, 27.21, -4.03, 20.92, 3, 0)
	MovementLoopAddLocation(NPC, 24.77, -4.38, 28.67, 3, 0)

end

function InRange(NPC, Player)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What the hell was that....*Look around for who said that*", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Pssst....")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What the hell was that....*Look around for who said that*", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Pssst....")
end

function respawn(NPC)
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What the hell.....", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Hey.....")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "*look down*", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Pssst... down here....")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "*Soil yourself*", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Yeah, you!")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "You...you... can talk!", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "Woah buddy! Might wanna check your pantaloons...")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "...", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "So you noticed...")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "For a talking cat? ANYTHING!", "dlg_0_7")
	StartConversation(conversation, NPC, Spawn, "Anyways...Hey I need you to do something for me, ok?")
end

function dlg_0_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Uh...ok", "dlg_0_8")
	StartConversation(conversation, NPC, Spawn, "Here take this...*Hacks up a wad of... something*")
end


function dlg_0_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "...")
	StartConversation(conversation, NPC, Spawn, "Thanks bud, been bothering me for a while meow.")
end	
