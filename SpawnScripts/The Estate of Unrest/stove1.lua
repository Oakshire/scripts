--[[
    Script Name    : SpawnScripts/The Estate of Unrest/stove1.lua
    Script Author  : neatz09
    Script Date    : 2021.01.01 11:01:37
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Inspect" then
	SendMessage(Spawn, "This stove was once used by the chef of the house to create extraordinary meals for visitors.", "white")
end

end

function respawn(NPC)

end

