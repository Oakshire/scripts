--[[
    Script Name    : SpawnScripts/Stormhold/qstkeychest2.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.30 03:04:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function casted_on(NPC, Spawn, Message)
    if Message == "Open" then
	SendMessage(Spawn, "The lock holds strong after all these years.", "white")
end

end