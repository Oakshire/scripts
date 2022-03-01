--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/GrimagusGigglegibber.lua
	Script Purpose	: Grimagus Gigglegibber <Formerly Grumpy>
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

	PlayFlavor(NPC, "", "This place sure is swell. These Fae are super nice. I'm so happy... If only that McScroogle could learn the lesson I did, maybe you should help him.", "smile", 1689589577, 4560189, Spawn)
end

