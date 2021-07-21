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
SetAccessToEntityCommand(Spawn,NPC,"Enter Fallen Gate",1)

elseif not HasCompletedQuest(Spawn, KeyToFallenGate) then
SetAccessToEntityCommand(Spawn,NPC,"Enter Fallen Gate",0)
end
   end

function respawn(NPC)
	spawn(NPC)
end