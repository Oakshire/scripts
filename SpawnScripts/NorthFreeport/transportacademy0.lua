--[[
    Script Name    : SpawnScripts/NorthFreeport/transportacademy0.lua
    Script Author  : Cynnar
    Script Date    : 2018.06.05 12:06:46
    Script Purpose : 
    Script Notes	:	Took Jabantiz's script for this
--]]

--[[
	Script Name		:	SpawnScripts/GreaterFaydark/TunaresSaplingAcornLift.lua
	Script Purpose	:	Automate the Kelethin lifts
	Script Author	:	Jabantiz
	Script Date		:	5/29/2018
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)
	AddTransportSpawn(NPC)
	AddTimer(NPC, 25000, "UseLift")
end

function respawn(NPC)
	spawn(NPC)
end

function UseLift(NPC)
	UseWidget(NPC)
	AddTimer(NPC, 25000, "UseLift")
end
