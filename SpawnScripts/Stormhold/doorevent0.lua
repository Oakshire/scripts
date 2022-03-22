--[[
    Script Name    : SpawnScripts/Stormhold/doorevent0.lua
    Script Author  : neatz09
    Script Date    : 2022.03.14 
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function casted_on(NPC, Spawn, Message)
    if Message == "use" then
    SendMessage(Spawn, "This door is held shut by an unknown force.", "white")
    CloseDoor()
end

end