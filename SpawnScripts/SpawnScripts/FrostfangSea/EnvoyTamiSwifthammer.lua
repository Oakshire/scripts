--[[
	Script Name	: SpawnScripts/FrostfangSea/EnvoyTamiSwifthammer.lua
	Script Purpose	: Envoy Tami Swifthammer <Ironforge Exchange>
	Script Author	: theFoof
	Script Date	: 2013.09.16
	Script Notes	:
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
		PlayFlavor(NPC, "", "Marr's blessings!", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Good day!", "", 1689589577, 4560189, Spawn)
	end

end

