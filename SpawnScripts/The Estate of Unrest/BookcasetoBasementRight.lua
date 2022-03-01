--[[
    Script Name    : SpawnScripts/The Estate of Unrest/BookcasetoBasementRight.lua
    Script Author  : neatz09
    Script Date    : 2021.01.01 11:01:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function usedoor(NPC, Spawn, IsOpen)
	if IsOpen == false then
			SendMessage(Spawn, "There is a depression on the back of the bookshelves in the shape of four fists joined at the wrist.", "white")
		end
OpenDoor(NPC)
end

function respawn(NPC)

end