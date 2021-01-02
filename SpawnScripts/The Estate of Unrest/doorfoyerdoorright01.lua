--[[
    Script Name    : SpawnScripts/The Estate of Unrest/doorfoyerdoorright01.lua
    Script Author  : neatz09
    Script Date    : 2021.01.02 12:01:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function usedoor(NPC, Spawn, IsOpen)
	if IsOpen == false then
			SendMessage(Spawn, "The door to the foyer is barred by a strong locking mechanism.", "white")
		end
OpenDoor(NPC)
end

function respawn(NPC)

end