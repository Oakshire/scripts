--[[
    Script Name    : SpawnScripts/FallenGate/tomelocationexaminebed.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 09:07:18
    Script Purpose : 
                   : 
--]]

local TheBloodOfTheBearPartOne =  13958

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
 if not HasItem(Spawn,  TheBloodOfTheBearPartOne) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Search Bed", 1)
elseif HasItem(Spawn, TheBloodOfTheBearPartOne) then
        SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"Search Bed", 0)
end
end



function respawn(NPC)
	spawn(NPC)
end