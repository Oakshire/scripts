--[[
    Script Name    : SpawnScripts/DownBelow/zonetoepic01.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 05:10:15
    Script Purpose :  Access to Crow's Resting Place Zone
                   : 
--]]

local AnIntriguingEye = 5366

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
 if HasCompletedQuest(Spawn, AnIntriguingEye) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function can_use_command(NPC, Spawn, Command)
 if HasCompletedQuest(Spawn, AnIntriguingEye) then
return true
elseif  not HasCompletedQuest(Spawn, AnIntriguingEye) then
return false
end
   end
   

function respawn(NPC)
	spawn(NPC)
end