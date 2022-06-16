--[[
	Script Name		:	boulden.lua
	Script Purpose	:	Waypoint Path for boulden.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 02:06:40 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
if GetLevel(Spawn)>=25 then

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/boulden_smitestone/boat_06p_feerrott/blackwater/boulden_smitestone_harbor001.mp3", "", "hello", 912083139, 1947162307, Spawn)
	AddConversationOption(conversation, "[continue] ", "Option1")
	AddConversationOption(conversation, "[Exit]")
	StartConversation(conversation, NPC, Spawn, "Some call me daft and say that it will never happen.  I wonder how many said the same before the rise of the second Rallosian Empire?")
else
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/boulden_smitestone/boat_06p_feerrott/blackwater/boulden_smitestone_harbor001.mp3", "", "no", 912083139, 1947162307, Spawn)
	AddConversationOption(conversation, "I just might do that.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "I'm sorry, but you look a bit green for something as momentous as this.  Come and talk to me after you've sunk your teeth into some real adventure.")
end
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 949.48, -25.5, 33.63, 2, 60)
	MovementLoopAddLocation(NPC, 932.52, -25.51, 24.28, 2, 60)
end

function InRange(NPC, Spawn)
if GetLevel(Spawn)>=25 and math.random(1,100)<=60 then
	local choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "", "We can't take any chances that the Rallosian Empire will rebuild itself.  Who will heed my call!?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Now is the time we must band together and find what's left of the Feerrott!", "", 1689589577, 4560189, Spawn)
	end
end
end

function LeaveRange(NPC, Spawn)
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do?", "Option2")
	AddConversationOption(conversation, "[Exit]")
	StartConversation(conversation, NPC, Spawn, "I've sent a few adventurers such as you on expeditions to recover signs that may lead me to the Feerrott, but I've had little luck. That is until I learned of an alliance between the Rallosian army and the Deathfist orcs.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	AddConversationOption(conversation, "I can do that. ", "Option3")
	AddConversationOption(conversation, "Another day, perhaps. ")
	StartConversation(conversation, NPC, Spawn, "Go to the Orcish Wastes and find artifacts that will lead us to the Feerrott: maps, journals, whatever you can find!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.")
	AddConversationOption(conversation, "It's a deal.")
	StartConversation(conversation, NPC, Spawn, "Aye, you got real fire burning in your soul. When you find the way to the Feerrott return to the docks in the Steppes;  I'll wait for you there.  I have a feeling you might need me along for the ride. ")
end