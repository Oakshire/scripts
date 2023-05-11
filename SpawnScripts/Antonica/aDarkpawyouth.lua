--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawyouth.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.15 07:07:27
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua")

function spawn(NPC)
if GetSpawnLocationID(NPC)==  133785089 or GetSpawnLocationID(NPC)==   133785090 then
AddTimer(NPC,MakeRandomInt(1000,3500),"Run")
end

function Run(NPC)
    local Choice = MakeRandomInt(1,2)
if Choice == 1 then
	MovementLoopAddLocation(NPC, -223.02, -18.63, 367.08, 4, 0)
	MovementLoopAddLocation(NPC, -264.97, -18.18, 358.61, 4, 0)
	MovementLoopAddLocation(NPC, -304.32, -12.89, 345.16, 4, 0)
	MovementLoopAddLocation(NPC, -334.21, -8.24, 335.82, 4, 0)
	MovementLoopAddLocation(NPC, -356.47, -6.91, 324.08, 4, 0)
	MovementLoopAddLocation(NPC, -367.91, -1.93, 316.53, 4, 0)
	MovementLoopAddLocation(NPC, -384.38, 2.01, 303.03, 4, 0)
	MovementLoopAddLocation(NPC, -392.53, 4.50, 278.45, 4, 0)
	MovementLoopAddLocation(NPC, -389.51, 4.69, 268.03, 4, 6)
else
	MovementLoopAddLocation(NPC, -242.39, -16.85, 347.73, 4, 0)
	MovementLoopAddLocation(NPC,-278.97, -19.98, 334.70, 4, 0)
	MovementLoopAddLocation(NPC, -301.73, -14.96, 334.97, 4, 0)
	MovementLoopAddLocation(NPC, -321.74, -12.70, 332.40, 4, 0)
	MovementLoopAddLocation(NPC, -333.85, -8.55, 329.71, 4, 0)
	MovementLoopAddLocation(NPC, -353.12, -7.06, 318.33, 4, 0)
	MovementLoopAddLocation(NPC, -371.48, 1.04, 303.07, 4, 0)
	MovementLoopAddLocation(NPC, -392.53, 4.50, 278.45, 4, 0)
	MovementLoopAddLocation(NPC, -389.51, 4.69, 268.03, 4, 6)
    end	
end
end

function respawn(NPC)
	spawn(NPC)
end