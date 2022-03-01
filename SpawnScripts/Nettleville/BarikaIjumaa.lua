--[[
	Script Name	: SpawnScripts/Nettleville/BarikaIjumaa.lua
	Script Purpose	: Barika Ijumaa <General Goods>
	Script Author	: Scatman
	Script Date	: 2009.08.08
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		Talk(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	Talk(NPC, Spawn)
end

function Talk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Welcome! What can I help you with?", "bow", 1689589577, 4560189, Spawn)
	end
end
