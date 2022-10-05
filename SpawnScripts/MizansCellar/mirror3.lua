--[[
    Script Name    : SpawnScripts/MizansCellar/mirror3.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.05 02:10:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,8,1,1,1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end