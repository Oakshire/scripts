--[[
	Script Name		:	SpawnScripts/GreaterFaydark/TunaresSaplingAcornLift.lua
	Script Purpose	:	Automate the Kelethin lifts
	Script Author	:	Jabantiz
	Script Date		:	5/29/2018
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)
	AddTransportSpawn(NPC)
	AddTimer(NPC, 35000, "UseLift")
end

function respawn(NPC)
	spawn(NPC)
end

function UseLift(NPC)
	UseWidget(NPC)
	AddTimer(NPC, 35000, "UseLift")
end