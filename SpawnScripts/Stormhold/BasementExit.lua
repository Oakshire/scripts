--[[
    Script Name    : SpawnScripts/Stormhold/BasementExit.lua
    Script Author  : neatz09
    Script Date    : 2022.03.14 
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function casted_on(NPC, Spawn, Message)
    if Message == "inspect" then
    SendMessage(Spawn, "Through the grate of what looks like a small cell you think you can see a crack large enough to squeeze through.", "white")
end
    if Message == "use" then
    SendMessage(Spawn, "ports to -33.27 22.51 49.08 357.38 0.00 0.00 in stormhold.", "White")
end
end