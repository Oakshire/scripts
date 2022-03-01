--[[
    Script Name    : SpawnScripts/Commonlands/zonetofallengate02.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.20 09:07:10
    Script Purpose : 
                   : 
--]]

local KeyToFallenGate = 5252 

function spawn(NPC)

end

function can_use_command(NPC, Spawn, Command)
if HasCompletedQuest(Spawn, KeyToFallenGate) then
return true 
elseif not HasCompletedQuest(Spawn, KeyToFallenGate) then
SendMessage(Spawn, "This gates are closed", 20)      
return false
end
   end

function respawn(NPC)
	spawn(NPC)
end