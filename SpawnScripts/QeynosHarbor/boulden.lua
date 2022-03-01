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
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "We can't take any chances that the Rallosian Empire will rebuild itself.  Who will heed my call!?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Now is the time we must band together and find what's left of the Feerrott!", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/boulden_smitestone/boat_06p_feerrott/blackwater/boulden_smitestone_harbor001.mp3", "", "", 912083139, 1947162307, Spawn)
		AddConversationOption(conversation, "I just might do that.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "I'm sorry, but you look a bit green for something as momentous as this.  Come and talk to me after you've sunk your teeth into some real adventure.")
	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/boulden_smitestone/boat_06p_feerrott/blackwater/boulden_smitestone_harbor001.mp3", "", "", 912083139, 1947162307, Spawn)
		AddConversationOption(conversation, "I just might do that.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "I'm sorry, but you look a bit green for something as momentous as this.  Come and talk to me after you've sunk your teeth into some real adventure.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/boulden_smitestone/boat_06p_feerrott/blackwater/boulden_smitestone_harbor001.mp3", "", "", 912083139, 1947162307, Spawn)
		AddConversationOption(conversation, "I just might do that.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "I'm sorry, but you look a bit green for something as momentous as this.  Come and talk to me after you've sunk your teeth into some real adventure.")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/boulden_smitestone/boat_06p_feerrott/blackwater/boulden_smitestone_harbor001.mp3", "", "", 912083139, 1947162307, Spawn)
		AddConversationOption(conversation, "I just might do that.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "I'm sorry, but you look a bit green for something as momentous as this.  Come and talk to me after you've sunk your teeth into some real adventure.")
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 949.48, -25.5, 33.63, 2, 60)
	MovementLoopAddLocation(NPC, 932.52, -25.51, 24.28, 2, 60)
end

function InRange(NPC, Spawn)
	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "We can't take any chances that the Rallosian Empire will rebuild itself.  Who will heed my call!?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Now is the time we must band together and find what's left of the Feerrott!", "", 1689589577, 4560189, Spawn)
	else
	end
end

function LeaveRange(NPC, Spawn)
end
