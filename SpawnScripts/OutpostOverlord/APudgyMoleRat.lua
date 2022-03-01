--[[
    Script Name    : SpawnScripts/OutpostOverlord/APudgyMoleRat.lua
    Script Author  : Cynnar
    Script Date    : 2019.06.03 03:06:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	CallCliffdiverHawk(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function CallCliffdiverHawk(NPC)
	local CliffdiverHawk = GetSpawn(NPC, 2780077)

	if CliffdiverHawk ~= nil then
		if GetTempVariable(NPC, "MoleRat") == nil then
			SetTempVariable(CliffdiverHawk, "MoleRat", NPC)
			
			SetTempVariable(CliffdiverHawk, "MOLERAT_X", GetX(NPC))
			SetTempVariable(CliffdiverHawk, "MOLERAT_Y", GetY(NPC))
			SetTempVariable(CliffdiverHawk, "MOLERAT_Z", GetZ(NPC))
			
			AddTimer(CliffdiverHawk, 2000, "FlyToMoleRat")
		end
	end
end

