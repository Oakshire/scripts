--[[
    Script Name    : SpawnScripts/ThunderingSteppes/BridgeDoors.lua
    Script Author  : Jabantiz
    Script Date    : 2015.07.12 05:07:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddTimer(NPC, 10000, "OpenDoors")
end

function respawn(NPC)
	spawn(NPC)
end

function OpenDoors(NPC)
	local zone = GetZone(NPC)
	if not IsNight(zone) then
		UseWidget(NPC)
	end
end