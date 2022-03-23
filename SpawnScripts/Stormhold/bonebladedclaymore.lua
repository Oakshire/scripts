--[[
    Script Name    : SpawnScripts/Stormhold/bonebladedclaymore.lua
    Script Author  : neatz09
    Script Date    : 2022.03.14 
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "grab the sword" then
    SendMessage(Spawn, "As you near the sword, a ringing in your mind drives you back. You know somewhere in the back of your mind that the sword's previous owner must be destroyed before you can claim it as your own.", "yellow")
end

end