--[[
	Script Name	: SpawnScripts/ButcherblockMountains/AlmarShiiz.lua
	Script Purpose	: Almar Shi'iz 
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "Be on your way.  I have matters to attend to.", "point", 1689589577, 4560189, Spawn)
end

