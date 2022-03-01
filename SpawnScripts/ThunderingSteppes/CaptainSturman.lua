--[[
	Script Name	: SpawnScripts/TheThunderingSteppes/CaptainSturman.lua
	Script Purpose	: Captain Sturman 
	Script Author	: geordie0511
	Script Date	: 2019.03.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Captain = 472

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
	
	PlayFlavor(NPC, "voiceover/english/captain_sturman/steppes/captainsturman000.mp3", "", "", 2356938778, 3921151874, Spawn)
	if GetQuestStep(Spawn, Captain) == 1 then
		AddConversationOption(conversation, "Thank you for the warning. ")
		StartConversation(conversation, NPC, Spawn, "Be careful out in these lands, adventurer. There are many factions in the Thundering Steppes that are not friendly to outsiders.")
		SetStepComplete(Spawn, Captain, 1)
	else
		AddConversationOption(conversation, "Thank you for the warning. ")
		StartConversation(conversation, NPC, Spawn, "Be careful out in these lands, adventurer. There are many factions in the Thundering Steppes that are not friendly to outsiders.")
	end
end

