--[[
    Script Name    : SpawnScripts/ForestRuins/mechanicalcomponents.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.24 05:02:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC, 5474, 1, 1)
end

function hailed(NPC, Spawn)

end

function respawn(NPC)
	spawn(NPC)
end