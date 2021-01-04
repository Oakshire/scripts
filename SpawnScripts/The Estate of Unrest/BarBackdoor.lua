--[[
    Script Name    : SpawnScripts/The Estate of Unrest/BarBackdoor.lua
    Script Author  : neatz09
    Script Date    : 2021.01.03 08:01:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function usedoor(NPC, Spawn, IsOpen)
	if IsOpen == false then
			SendMessage(Spawn, "The door to the outside is locked tight. There is a small keyhole just beneath the handle.", "white")
		end
OpenDoor(NPC)
end

function respawn(NPC)

end