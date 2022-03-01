--[[
	Script Name		:	SpawnScripts/Zek/VigoCerebus.lua
	Script Purpose	:	Open the gate to Deathfist Citadel upon death and close upon spawning
	Script Author	:	Jabantiz
	Script Date		:	8/28/2016
	Script Notes	:	
--]]

local GateLower = 1900304
local GateOpenedY = -38

function spawn(NPC)
	local bridgeGate = GetSpawn(NPC, GateLower)
	if bridgeGate ~= nil and GetY(bridgeGate) == GateOpenedY then
		UseWidget(bridgeGate)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
	local bridgeGate = GetSpawn(NPC, GateLower)
	if bridgeGate ~= nil and GetY(bridgeGate) ~= GateOpenedY then
		UseWidget(bridgeGate)
		local players = GetPlayersInZone(GetZone(NPC))
		for index, player in pairs(players) do
			SendPopUpMessage(player, "With the slaying of Vigo, the Deathfist Citadel gate is unlocked!", 255, 0, 0)
			SendMessage(player, "With the slaying of Vigo, the Deathfist Citadel gate is unlocked!", "red")
		end
	end
end