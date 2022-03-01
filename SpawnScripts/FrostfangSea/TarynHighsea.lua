--[[
	Script Name	: SpawnScripts/FrostfangSea/TarynHighsea.lua
	Script Purpose	: Taryn Highsea <Barber>
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	Chat(NPC)
end

function hailed(NPC, Spawn)
	Chat(NPC)
end

function Chat(NPC)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "", "I can help! Come closer for a consultation!", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "A new look for a new town, that's what I always say!", "smile", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "Hm...I'm pretty sure that look is bad luck.", "beckon", 0, 0, Spawn)
	end
end