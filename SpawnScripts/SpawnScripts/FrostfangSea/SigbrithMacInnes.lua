--[[
	Script Name	: SpawnScripts/FrostfangSea/SigbrithMacInnes.lua
	Script Purpose	: Sigbrith MacInnes <Mender>
	Script Author	: Foof
	Script Date	: 2013.05.21
	Script Notes	: 
--]]

local LostFroglok = 26

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
	
	if GetQuestStep(Spawn, LostFroglok) == 1 then
	    conversation = CreateConversation()
		
	    PlayFlavor(NPC, "sigbrith_macinnes/halas/gwenevyns_cove/sigbrith_macinnes/sigbrith_macinnes_001.mp3", "", "", 3335073691, 1240095725, Spawn)
	    AddConversationOption(conversation, "Excuse me, Sigbrith MacInnes?", "Quest1Chat_2")
	    StartConversation(conversation, NPC, Spawn, "Yes?")
	end
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sigbrith_macinnes/halas/gwenevyns_cove/sigbrith_macinnes/sigbrith_macinnes_003.mp3", "", "", 4092947662, 401427635, Spawn)
	AddConversationOption(conversation, "That's where the grizzlies are!", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "I saw little Splorpy run off and play with the other children. They went over the hill, to the southwest.")
end
    
function Quest1Chat_3(NPC, Spawn)
    SetStepComplete(Spawn, LostFroglok, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "sigbrith_macinnes/halas/gwenevyns_cove/sigbrith_macinnes/sigbrith_macinnes_004.mp3", "", "", 3124673910, 3802002199, Spawn)
	AddConversationOption(conversation, "Thank you for the information. I must now go and search for Splorpy.")
	StartConversation(conversation, NPC, Spawn, "Yes, and if the children were chased by them they may have run even further away from our camp. I'm sure Splorpy is fine, but it's nice for you to have concern for these poor pilgrims.")
end
