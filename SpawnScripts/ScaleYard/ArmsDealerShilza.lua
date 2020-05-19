--[[
	Script Name	: SpawnScripts/ScaleYard/ArmsDealerShilza.lua
	Script Purpose	: Arms Dealer Shilza <Weaponsmith>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Edged weapons for sale!  Sharp blades to gut your enemies!", "", 1689589577, 4560189, Spawn)
end

