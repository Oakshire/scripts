--[[
    Script Name    : SpawnScripts/TempleStreet2/LockedDoors.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.18 08:08:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function usedoor(NPC, Spawn, IsOpen)
if IsOpen == true then
CloseDoor()
else
    if Spawn then 
SendMessage(Spawn, "This door is closed.", "yellow")
end
   end
     end
    


function respawn(NPC)

end

