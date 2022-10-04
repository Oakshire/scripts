--[[
    Script Name    : SpawnScripts/MizansCellar/StoveKeg.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 06:09:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,9,0,1,1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end