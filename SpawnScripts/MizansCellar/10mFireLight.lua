--[[
    Script Name    : SpawnScripts/MizansCellar/10mFireLight.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.04 03:10:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,10,1,1,1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end