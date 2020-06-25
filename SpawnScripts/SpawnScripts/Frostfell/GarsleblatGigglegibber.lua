--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/GarsleblatGigglegibber.lua
	Script Purpose	: Garsleblat Gigglegibber <Frostfell Vendor>
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Gets gifties for everyone on your list!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Get yours Frostfells Shopping Bags here! Made from the finest ingredients!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Gots good gifties, I do!", "", 1689589577, 4560189, Spawn)
	else
	end

end

