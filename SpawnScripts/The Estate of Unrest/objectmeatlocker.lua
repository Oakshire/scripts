--[[
    Script Name    : SpawnScripts/The Estate of Unrest/objectmeatlocker.lua
    Script Author  : neatz09
    Script Date    : 2021.01.01 11:01:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function casted_on(NPC, Spawn, Message)
    if Message == "Open meat locker" then
Say(NPC, "Need to add a delay + play a sound")
	SendMessage(Spawn, "The meat locker is empty. It looks like you'll need to look elsewhere if you want to find some meat.", "white")
end

end
