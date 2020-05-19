--[[
	Script Name	: SpawnScripts/Darklight/OpalDarkbriar.lua
	Script Purpose	: Opal Darkbriar 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Locations from /loc log
--]]

function spawn(NPC)
	-- she pops out of Nektulos 
	MovementLoopAddLocation(NPC, 731.51, -66.26, 92.23, 5, 5)
	MovementLoopAddLocation(NPC, 730.81, -66.26, 84.87, 5, 0)

	-- and runs for Neriak along this path
	MovementLoopAddLocation(NPC, 713.11, -66.27, 85.87, 5, 0)
	MovementLoopAddLocation(NPC, 648.75, -55.57, 87.71, 5, 0)
	MovementLoopAddLocation(NPC, 565.20, -44.76, 73.07, 5, 0)
	MovementLoopAddLocation(NPC, 529.12, -47.11, 55.37, 5, 0)
	MovementLoopAddLocation(NPC, 481.85, -45.80, 47.16, 5, 0)
	MovementLoopAddLocation(NPC, 431.75, -38.18, -3.26, 5, 0)
	MovementLoopAddLocation(NPC, 344.12, -31.62, 2.87, 5, 0)
	MovementLoopAddLocation(NPC, 243.35, -21.61, 20.27, 5, 0)
	MovementLoopAddLocation(NPC, 219.18, -21.28, 33.43, 5, 0)
	MovementLoopAddLocation(NPC, 193.26, -23.35, 33.61, 5, 0)
	MovementLoopAddLocation(NPC, 162.40, -32.60, 24.66, 5, 0)
	MovementLoopAddLocation(NPC, 142.16, -41.25, 7.35, 5, 0)
	MovementLoopAddLocation(NPC, 125.97, -42.22, -23.69, 5, 0)
	MovementLoopAddLocation(NPC, 103.92, -47.94, -40.30, 5, 0)
	MovementLoopAddLocation(NPC, 85.21, -50.88, -45.10, 5, 0)
	MovementLoopAddLocation(NPC, 60.97, -51.79, -62.79, 5, 0)
	MovementLoopAddLocation(NPC, 21.74, -48.77, -17.95, 5, 0)
	MovementLoopAddLocation(NPC, -5.13, -51.01, 5.02, 5, 0)
	MovementLoopAddLocation(NPC, -15.33, -51.53, 25.12, 5, 0)
	MovementLoopAddLocation(NPC, -116.78, -55.40, 9.44, 5, 0)
	MovementLoopAddLocation(NPC, -196.82, -52.84, 20.44, 5, 0)
	MovementLoopAddLocation(NPC, -279.86, -55.93, 23.89, 5, 0)
	MovementLoopAddLocation(NPC, -332.51, -52.64, 22.01, 5, 0)
	MovementLoopAddLocation(NPC, -366.92, -51.36, 15.03, 5, 0)
	MovementLoopAddLocation(NPC, -375.64, -51.93, -6.33, 5, 0)
	MovementLoopAddLocation(NPC, -432.46, -49.65, -44.58, 5, 0)
	MovementLoopAddLocation(NPC, -498.40, -50.50, -75.37, 5, 0)
	MovementLoopAddLocation(NPC, -536.19, -53.27, -84.00, 5, 0)
	MovementLoopAddLocation(NPC, -593.50, -56.70, -74.40, 5, 0)
	MovementLoopAddLocation(NPC, -657.14, -57.06, -86.47, 5, 0)
	MovementLoopAddLocation(NPC, -678.35, -55.46, -83.81, 5, 10, "DespawnOpal")
	-- she needs to poof into Neriak at this point
end

function hailed(NPC, Spawn)
	Say(NPC, "No one can stop me!")
end

function respawn(NPC)
	spawn(NPC)
end

function DespawnOpal(NPC)
	-- make her depop, but she needs to use her respawn timer to run again in 20 mins.
	Despawn(NPC, 0)
end