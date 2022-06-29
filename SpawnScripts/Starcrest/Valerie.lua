--[[
    Script Name    : SpawnScripts/Starcrest/Valerie.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.29 03:06:50
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	CheckFaction(NPC, Spawn, "Qeynos")
    if GetFactionAmount(Spawn,11)>0 then
    if math.random(1,100)<20 then
	GenericGuardHail(NPC, Spawn)
    end        
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end

function FaceStreet1(NPC)
	SpawnSet(NPC, "heading", "193")
end	

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "listen", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "attention", 0, 0, Spawn)
    end
end   

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 739.91, -20.4, 248.86, 2, 1,"FaceStreet1")
	MovementLoopAddLocation(NPC, 739.91, -20.4, 248.86, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 740.9, -20.39, 252.44, 2, 0)
	MovementLoopAddLocation(NPC, 738.06, -20.35, 250.55, 2, 0)
	MovementLoopAddLocation(NPC, 736.91, -20.3, 249.78, 2, 0)
	MovementLoopAddLocation(NPC, 720.22, -20.29, 255.27, 2, 0)
	MovementLoopAddLocation(NPC, 715.77, -20.33, 256.74, 2, 0)
	MovementLoopAddLocation(NPC, 714.04, -20.34, 263.42, 2, 0)
	MovementLoopAddLocation(NPC, 716.05, -20.07, 274.15, 2, 0)
	MovementLoopAddLocation(NPC, 717.91, -20.11, 276.59, 2, 0)
	MovementLoopAddLocation(NPC, 728.05, -20.42, 274.89, 2, 0)
	MovementLoopAddLocation(NPC, 743.36, -20.61, 271.59, 2, 0)
	MovementLoopAddLocation(NPC, 753.56, -20.65, 270.67, 2, 0)
	MovementLoopAddLocation(NPC, 764.18, -20.47, 270.69, 2, 0)
	MovementLoopAddLocation(NPC, 774.02, -20.46, 272.98, 2, 0)
	MovementLoopAddLocation(NPC, 790.6, -20.5, 282.03, 2, 0)
	MovementLoopAddLocation(NPC, 794.95, -20.49, 285.47, 2, 0)
	MovementLoopAddLocation(NPC, 800.29, -20.48, 286.75, 2, 0)
	MovementLoopAddLocation(NPC, 802.35, -20.45, 286.12, 2, 0)
	MovementLoopAddLocation(NPC, 804.96, -20.41, 284.26, 2, 0)
	MovementLoopAddLocation(NPC, 809.55, -20.31, 279.44, 2, 0)
	MovementLoopAddLocation(NPC, 814.27, -20.37, 275.1, 2, 0)
	MovementLoopAddLocation(NPC, 820.13, -20.38, 272.05, 2, 1)
	MovementLoopAddLocation(NPC, 820.13, -20.38, 272.05, 2, 30,"Action")
	MovementLoopAddLocation(NPC, 818.32, -20.32, 273.16, 2, 0)
	MovementLoopAddLocation(NPC, 811.08, -20.3, 279.02, 2, 0)
	MovementLoopAddLocation(NPC, 803.74, -20.43, 286.96, 2, 0)
	MovementLoopAddLocation(NPC, 797.69, -20.49, 286.74, 2, 0)
	MovementLoopAddLocation(NPC, 792.98, -20.5, 284.08, 2, 0)
	MovementLoopAddLocation(NPC, 787.13, -20.52, 279.54, 2, 0)
	MovementLoopAddLocation(NPC, 781.62, -20.51, 275.78, 2, 0)
	MovementLoopAddLocation(NPC, 774.34, -20.48, 273.32, 2, 0)
	MovementLoopAddLocation(NPC, 768.53, -20.44, 271.59, 2, 0)
	MovementLoopAddLocation(NPC, 761.9, -20.49, 271.15, 2, 0)
	MovementLoopAddLocation(NPC, 753.34, -20.65, 271.34, 2, 0)
	MovementLoopAddLocation(NPC, 744.66, -20.64, 271.54, 2, 0)
	MovementLoopAddLocation(NPC, 723.14, -20.42, 276.18, 2, 0)
	MovementLoopAddLocation(NPC, 718.27, -20.14, 276.29, 2, 0)
	MovementLoopAddLocation(NPC, 713.79, -20.22, 270.47, 2, 0)
	MovementLoopAddLocation(NPC, 713.08, -20.33, 264.49, 2, 0)
	MovementLoopAddLocation(NPC, 714.89, -20.34, 257.69, 2, 0)
	MovementLoopAddLocation(NPC, 724.99, -20.26, 253.1, 2, 0)
	MovementLoopAddLocation(NPC, 739.64, -20.39, 249.23, 2, 0)
end


