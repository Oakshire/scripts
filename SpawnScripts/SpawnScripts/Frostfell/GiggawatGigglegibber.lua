--[[
	Script Name	: SpawnScripts/FrostfellWonderlandVillage/GiggawatGigglegibber.lua
	Script Purpose	: Giggawat Gigglegibber <Frostfell Vendor>
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Get yours Frostfell Shopping Bags here!", "beckon", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Mes gots good gifties and at good prices, I do!", "wave", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Merry Frostfell!", "happy", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Buys pretties for everyone!", "nod", 1689589577, 4560189, Spawn)
	else
	end

end

