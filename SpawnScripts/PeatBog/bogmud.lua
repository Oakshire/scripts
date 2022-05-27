--[[
    Script Name    : SpawnScripts/PeatBog/bogmud.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.26 11:05:13
    Script Purpose : 
                   : 
--]]
local Earth = 518

function spawn(NPC)
    SetRequiredQuest(NPC, Earth, 1, 0)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end