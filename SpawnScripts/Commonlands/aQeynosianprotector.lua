--[[
    Script Name    : SpawnScripts/Commonlands/aQeynosianprotector.lua
    Script Author  : cynnar
    Script Date    : 2023.04.10 04:04:11
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseHuman1.lua")
function spawn(NPC)
Waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function Waypoints(NPC)
	MovementLoopAddLocation(NPC, 422.18, -24.79, -896.23, 2, 1)
	MovementLoopAddLocation(NPC, 422.18, -24.79, -896.23, 2, MakeRandomInt(15,25),"Action")
	MovementLoopAddLocation(NPC, 429.58, -25.34, -892.64, 2, 1)
	MovementLoopAddLocation(NPC, 429.58, -25.34, -892.64, 2, MakeRandomInt(5,15),"Action")
	MovementLoopAddLocation(NPC, 422.18, -24.79, -896.23, 2, 1)
	MovementLoopAddLocation(NPC, 422.18, -24.79, -896.23, 2, MakeRandomInt(15,25),"Action")
	MovementLoopAddLocation(NPC, 420.26, -25.84, -890.36, 2, 1)
	MovementLoopAddLocation(NPC, 420.26, -25.84, -890.36, 2, MakeRandomInt(5,15),"Action")
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "stretch", 0, 0)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "yawn", 0, 0)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "attention", 0, 0)
    end
end   