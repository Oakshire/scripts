--[[
	Script Name	: SpawnScripts/TimorousDeep/ZeldikilGiSok.lua
	Script Purpose	: Zeldikil Gi'Sok <Mender>
	Script Author	: John Adams
	Script Date	: 2009.02.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	Choice = math.random(1, 3)
	if Choice == 1 then
		PlayFlavor(NPC, "", "Repair your armor for coin!", "", 1689589577, 4560189, Spawn)
	elseif Choice == 2 then
		PlayFlavor(NPC, "", "I repair all types of armor!", "", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "Come to me for the fastest repairs this side of Gorowyn!", "", 1689589577, 4560189, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thank you.")
	StartConversation(NPC, Spawn, conversation, "Your armor and weapons wear down when you die during combat. When they are down to zero durability, you no longer receive any benefit from them. You can visit myself or any mender to get them repaired.")
end

