--[[
	Script Name	: SpawnScripts/FrostfangSea/ValdJerngard.lua
	Script Purpose	: Vald Jerngard <Broker>
	Script Author	: theFoof
	Script Date	: 2013.09.26
	Script Notes	: 
--]]

require"SpawnScripts/FrostfangSea/halas_proximity_cheer"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "ProxCheer")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Come on over! You won't find better deals elsewhere!", "beckon", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Let's check what's available, shall we?", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "All right here's all the goods listed.  If you find anything you want, let me know.", "hello", 1689589577, 4560189, Spawn)
	end
end