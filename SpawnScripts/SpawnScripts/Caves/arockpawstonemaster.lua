--[[
	Script Name		:	SpawnScripts/Caves/arockpawstonemaster.lua
	Script Purpose	:	Activate Atramentor (1970035) when this spawn is killed
	Script Author	:	Jabantiz
	Script Date		:	2/23/2019
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
	local Atramentor = GetSpawn(Spawn, 1970035)
	if Atramentor ~= nil then
		SpawnSet(Atramentor, "attackable", "1")
		SpawnSet(Atramentor, "show_level", "1")
	end
end
