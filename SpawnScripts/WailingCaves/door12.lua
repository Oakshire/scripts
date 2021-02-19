--[[
    Script Name    : SpawnScripts/WailingCaves/door12.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.18 08:02:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Spell)
                 if Spell == "use" then
                 SendMessage(Spawn, "This door is closed!", "yellow")
end
   end  

function respawn(NPC)
         spawn(NPC)
end

