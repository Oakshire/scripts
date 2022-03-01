--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/Gasher.lua
	Script Purpose	: Gasher <Santa Glug's helper>
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

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Glug, the Gigglegibber gifter, is much better than elf gifter.", "threaten", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Glug gives you gifties!", "threaten", 1689589577, 4560189, Spawn)
	else
	end

end

