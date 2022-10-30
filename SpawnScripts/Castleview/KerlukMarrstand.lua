--[[
    Script Name    : SpawnScripts/Castleview/KerlukMarrstand.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.29 04:10:20
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
    

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 778.94, -19.96, -127.51, 2, 1)
	MovementLoopAddLocation(NPC, 778.94, -19.96, -127.51, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 777.4, -19.95, -126.99, 2, 0)
	MovementLoopAddLocation(NPC, 764.6, -19.94, -126.04, 2, 0)
	MovementLoopAddLocation(NPC, 757.86, -20.02, -124.94, 2, 0)
	MovementLoopAddLocation(NPC, 740.15, -21.36, -124.65, 2, 0)
	MovementLoopAddLocation(NPC, 735.19, -21.31, -124.73, 2, 0)
	MovementLoopAddLocation(NPC, 730.52, -21.18, -132.27, 2, 0)
	MovementLoopAddLocation(NPC, 726.65, -21.15, -135.98, 2, 0)
	MovementLoopAddLocation(NPC, 717.7, -21.12, -137.89, 2, 0)
	MovementLoopAddLocation(NPC, 710.2, -21.16, -136.83, 2, 1)
	MovementLoopAddLocation(NPC, 710.2, -21.16, -136.83, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 711.82, -21.15, -136.6, 2, 0)
	MovementLoopAddLocation(NPC, 720.51, -21.14, -136.61, 2, 0)
	MovementLoopAddLocation(NPC, 725.76, -21.15, -135.74, 2, 0)
	MovementLoopAddLocation(NPC, 728.41, -21.18, -133.5, 2, 0)
	MovementLoopAddLocation(NPC, 731.92, -21.17, -130.23, 2, 0)
	MovementLoopAddLocation(NPC, 732.94, -21.15, -128.97, 2, 0)
	MovementLoopAddLocation(NPC, 736.58, -21.34, -124.5, 2, 0)
	MovementLoopAddLocation(NPC, 743.07, -21.36, -124.71, 2, 0)
	MovementLoopAddLocation(NPC, 749.45, -21.34, -125.61, 2, 0)
	MovementLoopAddLocation(NPC, 750.9, -21.26, -131.37, 2, 0)
	MovementLoopAddLocation(NPC, 759.81, -20.48, -132.42, 2, 0)
	MovementLoopAddLocation(NPC, 765.56, -20.49, -133.7, 2, 0)
	MovementLoopAddLocation(NPC, 766.25, -20.47, -134.25, 2, 0)
	MovementLoopAddLocation(NPC, 766.41, -20.22, -138.97, 2, 0)
	MovementLoopAddLocation(NPC, 767, -19.99, -142.56, 2, 0)
	MovementLoopAddLocation(NPC, 766.75, -19.73, -147.72, 2, 0)
	MovementLoopAddLocation(NPC, 765.98, -19.46, -151.9, 2, 0)
	MovementLoopAddLocation(NPC, 765.96, -18.96, -159.86, 2, 0)
	MovementLoopAddLocation(NPC, 769.7, -18.92, -163.13, 2, 0)
	MovementLoopAddLocation(NPC, 777.28, -17.39, -164.39, 2, 0)
	MovementLoopAddLocation(NPC, 783.65, -17.39, -163.38, 2, 0)
	MovementLoopAddLocation(NPC, 787.19, -17.39, -164, 2, 25)
	MovementLoopAddLocation(NPC, 785.92, -17.39, -163.64, 2, 0)
	MovementLoopAddLocation(NPC, 785.65, -17.39, -162.56, 2, 0)
	MovementLoopAddLocation(NPC, 788.23, -16.22, -155.8, 2, 0)
	MovementLoopAddLocation(NPC, 789.59, -16.22, -154.94, 2, 0)
	MovementLoopAddLocation(NPC, 794.86, -16.22, -152.24, 2, 0)
	MovementLoopAddLocation(NPC, 800.14, -16.22, -148.21, 2, 0)
	MovementLoopAddLocation(NPC, 799.54, -16.22, -137.6, 2, 0)
	MovementLoopAddLocation(NPC, 799.3, -16.22, -134.3, 2, 0)
	MovementLoopAddLocation(NPC, 796.99, -16.22, -128.82, 2, 0)
	MovementLoopAddLocation(NPC, 797.15, -16.21, -123.55, 2, 0)
	MovementLoopAddLocation(NPC, 802.03, -16.05, -119.84, 2, 1)
	MovementLoopAddLocation(NPC, 802.03, -16.05, -119.84, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 801.26, -16.05, -118.87, 2, 0)
	MovementLoopAddLocation(NPC, 793.02, -16.22, -117.35, 2, 0)
	MovementLoopAddLocation(NPC, 793.6, -16.22, -110.9, 2, 0)
	MovementLoopAddLocation(NPC, 792.76, -16.22, -106.73, 2, 0)
	MovementLoopAddLocation(NPC, 788.72, -16.22, -104.35, 2, 0)
	MovementLoopAddLocation(NPC, 788.49, -16.22, -105.9, 2, 0)
	MovementLoopAddLocation(NPC, 789.06, -16.78, -109.58, 2, 0)
	MovementLoopAddLocation(NPC, 789.45, -17.83, -112.26, 2, 0)
	MovementLoopAddLocation(NPC, 788.86, -19.97, -117.84, 2, 0)
	MovementLoopAddLocation(NPC, 786.78, -19.93, -117.22, 2, 0)
	MovementLoopAddLocation(NPC, 786.95, -19.96, -113.39, 2, 0)
	MovementLoopAddLocation(NPC, 786.49, -19.98, -108.42, 2, 1)
	MovementLoopAddLocation(NPC, 786.49, -19.98, -108.42, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 785.14, -19.98, -109.05, 2, 0)
	MovementLoopAddLocation(NPC, 783.04, -19.95, -114.27, 2, 0)
	MovementLoopAddLocation(NPC, 780.57, -19.98, -120.32, 2, 0)
	MovementLoopAddLocation(NPC, 779.09, -19.96, -122.61, 2, 0)
end


    