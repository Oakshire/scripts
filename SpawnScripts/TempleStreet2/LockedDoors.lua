--[[
    Script Name    : SpawnScripts/TempleStreet2/LockedDoors.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.18 08:08:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
                 if SpellName == "use" then
                 SendMessage(Spawn, "This door is securely locked!", "yellow")
end
   end         
             
    


function respawn(NPC)

end

