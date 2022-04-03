--[[
	Script Name	: SpawnScripts/Castleview/Cinaldar.lua
	Script Purpose	: Cinaldar <Guard>
	Script Author	: Dorbin
	Script Date	: 2022.01.26
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	CheckFaction(NPC, Spawn, "Qeynos")
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
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
    MovementLoopAddLocation(NPC, 730.44, -21.08, -128.86, 2, 1)
	MovementLoopAddLocation(NPC, 730.44, -21.08, -128.86, 2, 10,"FaceGuardGarath")
	MovementLoopAddLocation(NPC, 730.44, -21.08, -128.86, 2, 1)
	MovementLoopAddLocation(NPC, 730.13, -21.14, -130.37, 2, 0)
	MovementLoopAddLocation(NPC, 734.83, -21.29, -127.29, 2, 0)
	MovementLoopAddLocation(NPC, 746.12, -21.34, -126.72, 2, 0)
	MovementLoopAddLocation(NPC, 748.78, -21.27, -129.5, 2, 0)
	MovementLoopAddLocation(NPC, 745.63, -21.26, -131.55, 2, 0)
	MovementLoopAddLocation(NPC, 737.59, -17.77, -131.91, 2, 0)
	MovementLoopAddLocation(NPC, 733.67, -17.74, -133.23, 2, 0)
	MovementLoopAddLocation(NPC, 731.06, -17.53, -138.33, 2, 0)
	MovementLoopAddLocation(NPC, 731.58, -15.49, -148.83, 2, 2,0)
	MovementLoopAddLocation(NPC, 731.58, -15.49, -148.83, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 715.45, -16.19, -148.83, 2, 2, 0)
	MovementLoopAddLocation(NPC, 715.45, -16.19, -148.83, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 711.48, -16.15, -157.12, 2, math.random(5, 10),0)
	MovementLoopAddLocation(NPC, 735.42, -15.2, -158.17, 2, 0)
	MovementLoopAddLocation(NPC, 736.44, -15.24, -148.46, 2, 2, 0)
	MovementLoopAddLocation(NPC, 736.44, -15.24, -148.46, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 731.48, -15.42, -143.05, 2, 0)
	MovementLoopAddLocation(NPC, 731.35, -17.59, -138.21, 2, 0)
	MovementLoopAddLocation(NPC, 733.43, -17.73, -133.08, 2, 0)
	MovementLoopAddLocation(NPC, 747.87, -21.25, -131.61, 2, 0)
	MovementLoopAddLocation(NPC, 766.74, -20.28, -131.24, 2, 2,0)
	MovementLoopAddLocation(NPC, 766.74, -20.28, -131.24, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 767.38, -20.49, -133.78, 2, 0)
	MovementLoopAddLocation(NPC, 751.87, -21.13, -126.24, 2, 2,0)
	MovementLoopAddLocation(NPC, 751.87, -21.13, -126.24, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 735.25, -21.34, -126.11, 2, 0)
end


function FaceGuardGarath(NPC) -- Saluting Knight-Captain Garath script
    local Garath = GetSpawn(NPC, 2360031)
	
	if Garath ~= nil then 
	    FaceTarget(NPC, Garath)
        AddTimer(NPC, 1000, "SaluteGuardGarath") 
    end
end

function SaluteGuardGarath(NPC)
    local Garath = GetSpawn(NPC, 2360031)
	
	if Garath ~= nil then 
        PlayAnimation(NPC, 12167)
        AddTimer(NPC, 1000, "GarathFacesGuardCinaldar") 
    end
end

function GarathFacesGuardCinaldar(NPC)
    local Garath = GetSpawn(NPC, 2360031)
	
	if Garath ~= nil then 
	    FaceTarget(Garath, NPC)
        AddTimer(NPC, 500, "GarathSalutesGuardCinaldar") 
    end
end

function GarathSalutesGuardCinaldar(NPC)
    local Garath = GetSpawn(NPC, 2360031)
	
	if Garath ~= nil then 
        PlayAnimation(Garath, 12167)
    end
end
