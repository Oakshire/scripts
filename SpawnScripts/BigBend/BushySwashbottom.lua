--[[
	Script Name		: SpawnScripts/BigBend/BushySwashbottom.lua
	Script Purpose	: Bushy Swashbottom
	Script Author	: torsten
	Script Date		: 2022.07.13
	Script Notes	: 
--]]

function spawn(NPC)
    PlayFlavor(NPC, "", "Oi! Wait till I get my hands on ya, ya filthy troll! This 'ns for Qeynos, ya big lug!", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end