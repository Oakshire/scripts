--[[
    Script Name    : SpawnScripts/ThunderingSteppes/zonetovarsoonlower.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.28 08:10:10
    Script Purpose : 
                   : 
--]]

local RuinsOfVarsoonRevealingTheEntrance = 534 -- Ruins of Varsoon: Revealing the Entrance access quest

function spawn(NPC)

end

function can_use_command(NPC, Spawn, Command)
if HasCompletedQuest(Spawn, RuinsOfVarsoonRevealingTheEntrance) then
return true
elseif not HasCompletedQuest(Spawn, RuinsOfVarsoonRevealingTheEntrance) then
SendMessage(Spawn, "Requires a key", 20)    
return false
end
   end


function respawn(NPC)
	spawn(NPC)
end