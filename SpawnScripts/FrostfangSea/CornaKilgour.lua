--[[
	Script Name	: SpawnScripts/FrostfangSea/CornaKilgour.lua
	Script Purpose	: Corna Kilgour <Housing>
	Script Author	: theFoof
	Script Date	: 2013.10.29
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Making food, armor, and weapons is every bit as important to the success and security of our city as standing to face the enemy.  Quality equipment and items can make the difference.", "nod", 1689589577, 4560189, Spawn)
end