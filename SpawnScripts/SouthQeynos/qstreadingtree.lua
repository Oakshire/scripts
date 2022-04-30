--[[
    Script Name    : SpawnScripts/SouthQeynos/qstreadingtree.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.29 11:04:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "inspect" then
    SendMessage(Spawn, "An old tree that provides enough shade for reading outdoors.", "white")
    end
end

function respawn(NPC)
	spawn(NPC)
end