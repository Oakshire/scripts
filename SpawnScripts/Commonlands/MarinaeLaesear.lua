--[[
    Script Name    : SpawnScripts/Commonlands/MarinaeLaesear.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.20 05:05:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
PlayFlavor(NPC, "", "Marinae Laesear at your service, treasure hunter extraordinaire, and loyal citizen of Qeynos.", "", 1689589577, 4560189)
MovementLoopAddLocation(NPC, -459.27, -44.26, -306.22, 5)
MovementLoopAddLocation(NPC, -396.60, -43.09, -336.58, 5)
MovementLoopAddLocation(NPC, -460.18, -47.48, -404.87, 5)
MovementLoopAddLocation(NPC, -569.16, -48.29, -437.38, 5)
MovementLoopAddLocation(NPC, -580.86, -49.58, -518.17, 5)
MovementLoopAddLocation(NPC, -574.57, -48.55, -579.82, 5)
MovementLoopAddLocation(NPC, -589.06, -49.44, -624.68, 5)
MovementLoopAddLocation(NPC, -627.78, -49.53, -672.79, 5)
MovementLoopAddLocation(NPC, -363.86, -50.90, -884.33, 5)
MovementLoopAddLocation(NPC, -462.50, -92.23, -927.03, 5)
MovementLoopAddLocation(NPC, -454.70, -91.13, -967.01, 5)
MovementLoopAddLocation(NPC, -471.79, -91.81, -974.52, 5, "jump")
end






function jump(NPC, Spawn)
Despawn(NPC)
end







function respawn(NPC)
	spawn(NPC)
end