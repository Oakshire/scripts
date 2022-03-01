--[[
    Script Name    : SpawnScripts/ThievesWay/zonetosewerepic04.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.05 09:09:18
    Script Purpose : 
                   : 
--]]

local DarkbladesAndDirtyRats = 5264

function spawn(NPC)

end


function can_use_command(NPC, Spawn, Command)
if HasCompletedQuest(Spawn, DarkbladesAndDirtyRats) then
return true
elseif not HasCompletedQuest(Spawn, DarkbladesAndDirtyRats) then
SendMessage(Spawn, "Requires a key", 20)    
return false
end
   end

function respawn(NPC)
	spawn(NPC)
end