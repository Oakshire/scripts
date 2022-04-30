--[[
    Script Name    : SpawnScripts/Stormhold/QstKeychest8.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.30 03:04:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function casted_on(NPC, Spawn, Message)
    if Message == "Open" then
Say(NPC, "Need to add a delay")
    SendMessage(Spawn, "The lock holds strong after all these years.", "white")
end
end