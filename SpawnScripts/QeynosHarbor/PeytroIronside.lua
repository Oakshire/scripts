--[[
	Script Name	: SpawnScripts/QeynosHarbor/PeytroIronside.lua
	Script Purpose	: Peytro Ironside 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "These beasts that come upon us are only the further wrath of the gods! Repent!", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "The gods seek to punish us further by bringing beasts to invade our shore!", "chuckle", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Only our faith in the gods can save us from this menace upon the seas!", "confused", 1689589577, 4560189, Spawn)
	else
	end

end

