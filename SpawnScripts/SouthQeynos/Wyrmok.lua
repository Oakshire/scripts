--[[
    Script Name    : SpawnScripts/SouthQeynos/Wyrmok.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.27 03:10:12
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
 waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    

	CheckFaction(NPC, Spawn, "Qeynos")
  	 if math.random(1, 100) <= 20 and GetFactionAmount(Spawn,11) >20000 then
	GenericGuardHail(NPC,Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 637.2, -18.82, 235.84, 2, 6)
	MovementLoopAddLocation(NPC, 633.62, -18.94, 233.24, 2, 0)
	MovementLoopAddLocation(NPC, 613.52, -18.23, 237.62, 2, 0)
	MovementLoopAddLocation(NPC, 577.82, -17.94, 242.87, 2, 0)
	MovementLoopAddLocation(NPC, 559.85, -17.73, 244.64, 2, 0)
	MovementLoopAddLocation(NPC, 537.87, -17.99, 244.49, 2, 0)
	MovementLoopAddLocation(NPC, 487.59, -20.37, 241.37, 2, 0)
	MovementLoopAddLocation(NPC, 469.96, -21.72, 238, 2, 6)
	MovementLoopAddLocation(NPC, 492.71, -20.06, 242.07, 2, 0)
	MovementLoopAddLocation(NPC, 529.12, -18.3, 244.77, 2, 0)
	MovementLoopAddLocation(NPC, 550.55, -17.72, 245.71, 2, 0)
	MovementLoopAddLocation(NPC, 555.61, -17.18, 234.79, 2, 0)
	MovementLoopAddLocation(NPC, 557.78, -15.59, 219.44, 2, 6)
	MovementLoopAddLocation(NPC, 557.88, -15.28, 217.73, 2, 0)
	MovementLoopAddLocation(NPC, 559.12, -17.13, 230.51, 2, 0)
	MovementLoopAddLocation(NPC, 565.38, -17.79, 243.1, 2, 0)
	MovementLoopAddLocation(NPC, 597.59, -18.13, 238.56, 2, 0)
	MovementLoopAddLocation(NPC, 626.8, -18.76, 233.62, 2, 0)
	MovementLoopAddLocation(NPC, 632.15, -18.97, 232.47, 2, 0)
end
