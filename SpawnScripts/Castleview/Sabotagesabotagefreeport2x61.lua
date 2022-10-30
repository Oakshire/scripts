--[[
    Script Name    : SpawnScripts/Castleview/Sabotagesabotagefreeport2x61.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 05:10:35
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
    SetRequiredQuest(NPC, 1, 1,0)
end

function respawn(NPC)
    spawn(NPC)
end