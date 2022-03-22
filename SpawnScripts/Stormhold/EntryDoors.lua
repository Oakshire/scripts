--[[
    Script Name    : SpawnScripts/Stormhold/EntryDoors.lua
    Script Author  : neatz09
    Script Date    : 2022.03.14 
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function casted_on(NPC, Spawn, Message)
    if Message == "use" then
    OpenDoor(NPC)
end

end