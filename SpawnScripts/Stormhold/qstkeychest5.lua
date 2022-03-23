--[[
    Script Name    : SpawnScripts/Stormhold/QstKeychest5.lua
    Script Author  : neatz09
    Script Date    : 2022.03.14 
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function casted_on(NPC, Spawn, Message)
    if Message == "Open" then
Say(NPC, "Need to add a delay")
    SendMessage(Spawn, "The Lock holds strong after all these years.", "white")
end

end