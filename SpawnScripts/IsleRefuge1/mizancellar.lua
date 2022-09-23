--[[
    Script Name    : SpawnScripts/IsleRefuge1/mizancellar.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 07:09:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,1,0,1,1)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end