--[[
    Script Name    : SpawnScripts/The Estate of Unrest/objectdumbwaiterpantry.lua
    Script Author  : neatz09
    Script Date    : 2021.01.01 11:01:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Examine dumbwaiter" then
	SendMessage(Spawn, "This dumbwaiter looks like it goes up to the second floor. It was used to carry prepared meals from the kitchen to the dining room.", "white")
end

end
