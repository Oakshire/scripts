--[[
    Script Name    : SpawnScripts/Baubbleshire/DonnaFairbanks.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.23 02:08:32
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 903.65, -17.88, -506.3, 2, 1,"Heading")
	MovementLoopAddLocation(NPC, 903.65, -17.88, -506.3, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 903.65, -17.88, -506.3, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 903.53, -17.87, -505.69, 2, 0)
	MovementLoopAddLocation(NPC, 900.9, -17.75, -506.71, 2, 0)
	MovementLoopAddLocation(NPC, 895.71, -17.05, -508.6, 2, 0)
	MovementLoopAddLocation(NPC, 889.32, -16.61, -509.08, 2, 0)
	MovementLoopAddLocation(NPC, 885.93, -16.56, -510.44, 2, 0)
	MovementLoopAddLocation(NPC, 881.23, -16.98, -510.08, 2, 0)
	MovementLoopAddLocation(NPC, 878.62, -17.32, -507.76, 2, 0)
	MovementLoopAddLocation(NPC, 877.44, -18, -505.8, 2, 0)
	MovementLoopAddLocation(NPC, 875.35, -17.16, -501.98, 2, 0)
	MovementLoopAddLocation(NPC, 872.76, -17.92, -496.15, 2, 0)
	MovementLoopAddLocation(NPC, 871.05, -17.82, -492.31, 2, 0)
	MovementLoopAddLocation(NPC, 865.49, -18.01, -487.51, 2, 0)
	MovementLoopAddLocation(NPC, 864.47, -18.48, -483.06, 2, 0)
	MovementLoopAddLocation(NPC, 864.89, -18.65, -481.72, 2, 0)
	MovementLoopAddLocation(NPC, 865.79, -18.93, -478.26, 2, 0)
	MovementLoopAddLocation(NPC, 864.09, -18.3, -473.81, 2, 0)
	MovementLoopAddLocation(NPC, 860.85, -19.02, -467.94, 2, 0)
	MovementLoopAddLocation(NPC, 856.75, -18.95, -460.46, 2, 0)
	MovementLoopAddLocation(NPC, 856.28, -19.24, -458.7, 2, 0)
	MovementLoopAddLocation(NPC, 859.85, -18.71, -452.4, 2, 0)
	MovementLoopAddLocation(NPC, 860.85, -18.3, -442.47, 2, 1)
	MovementLoopAddLocation(NPC, 860.85, -18.3, -442.47, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 860.85, -18.3, -442.47, 2, 26,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 859.85, -18.42, -440.98, 2, 0)
	MovementLoopAddLocation(NPC, 860.38, -18.3, -440.53, 2, 0)
	MovementLoopAddLocation(NPC, 864.27, -18.23, -441.76, 2, 0)
	MovementLoopAddLocation(NPC, 867.49, -18.35, -440.66, 2, 0)
	MovementLoopAddLocation(NPC, 873.73, -18.1, -433.28, 2, 0)
	MovementLoopAddLocation(NPC, 878.43, -14.74, -426.78, 2, 0)
	MovementLoopAddLocation(NPC, 881.66, -14.21, -428.65, 2, 0)
	MovementLoopAddLocation(NPC, 882.64, -13.98, -430.68, 2, 0)
	MovementLoopAddLocation(NPC, 885.73, -13.71, -434.39, 2, 0)
	MovementLoopAddLocation(NPC, 887.33, -13.73, -436.56, 2, 0)
	MovementLoopAddLocation(NPC, 892.73, -15.14, -442.98, 2, 0)
	MovementLoopAddLocation(NPC, 893.08, -17.18, -449.71, 2, 0)
	MovementLoopAddLocation(NPC, 893.08, -17.18, -449.71, 2, 0)
	MovementLoopAddLocation(NPC, 893.25, -18.91, -458.32, 2, 0)
	MovementLoopAddLocation(NPC, 888.73, -19.21, -463.28, 2, 0)
	MovementLoopAddLocation(NPC, 884.08, -19.53, -464.79, 2, 1)
	MovementLoopAddLocation(NPC, 884.08, -19.53, -464.79, 2, 26,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 883.22, -19.61, -464.98, 2, 0)
	MovementLoopAddLocation(NPC, 882.27, -19.46, -467.08, 2, 0)
	MovementLoopAddLocation(NPC, 882.62, -19.19, -470.23, 2, 0)
	MovementLoopAddLocation(NPC, 881.7, -18.99, -477.82, 2, 0)
	MovementLoopAddLocation(NPC, 881.95, -18.77, -480.85, 2, 0)
	MovementLoopAddLocation(NPC, 884.03, -18.41, -483.87, 2, 0)
	MovementLoopAddLocation(NPC, 885.86, -18.49, -486.3, 2, 0)
	MovementLoopAddLocation(NPC, 887.61, -17.95, -490.01, 2, 0)
	MovementLoopAddLocation(NPC, 892.06, -17.59, -496.14, 2, 0)
	MovementLoopAddLocation(NPC, 891.2, -16.94, -503.76, 2, 0)
	MovementLoopAddLocation(NPC, 886.25, -16.49, -513.39, 2, 0)
	MovementLoopAddLocation(NPC, 886.92, -16.12, -517.59, 2, 0)
	MovementLoopAddLocation(NPC, 878.65, -15.28, -530.18, 2, 1)
	MovementLoopAddLocation(NPC, 878.65, -15.28, -530.18, 2, 26,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 879.56, -15.43, -528.12, 2, 0)
	MovementLoopAddLocation(NPC, 882.13, -16.17, -522.23, 2, 0)
	MovementLoopAddLocation(NPC, 883.6, -16.32, -518.88, 2, 0)
	MovementLoopAddLocation(NPC, 885.89, -16.22, -517.31, 2, 0)
	MovementLoopAddLocation(NPC, 887.27, -16.53, -512.59, 2, 0)
	MovementLoopAddLocation(NPC, 891.33, -16.8, -508.63, 2, 0)
	MovementLoopAddLocation(NPC, 896.39, -17.15, -508.41, 2, 0)
	MovementLoopAddLocation(NPC, 903.71, -17.91, -507.42, 2, 0)
end

function Heading(NPC)
    SetHeading(NPC,"133")
end
