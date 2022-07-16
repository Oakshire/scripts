--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawpackleader.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.15 07:07:47
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end