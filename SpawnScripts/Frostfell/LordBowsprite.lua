--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/LordBowsprite.lua
	Script Purpose	: Lord Bowsprite 
	Script Author	: Cynnar
	Script Date	: 2019.10.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "That McScroogle is just like old Grimagus was, sad and unhappy. You should try to help him learn to be nicer.", "sigh", 1689589577, 4560189, Spawn)
end

