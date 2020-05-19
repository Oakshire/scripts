--[[
	Script Name	: SpawnScripts/FrostfangSea/HelfreckLundgren.lua
	Script Purpose	: Helfreck Lundgren <Housing>
	Script Author	: theFoof
	Script Date	: 2013.10.30
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