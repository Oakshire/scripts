--[[
    Script Name    : SpawnScripts/Starcrest/Eusimonae.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.29 07:06:34
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    FaceTarget (NPC,Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
    else
    if not HasLanguage(Spawn,4)then
        if math.random(0,100)<60 then
        Garbled(NPC,Spawn)
        end
 else
    FaceTarget (NPC,Spawn)
     GenericEcologyHail(NPC, Spawn, faction)
end
end
end


function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11)<0 then
     FaceTarget (NPC,Spawn)
   GenericRaceCheckHail(NPC, Spawn, faction)
    else
    if not HasLanguage(Spawn,4)then
        if math.random(0,100)<60 then
        Garbled(NPC,Spawn)
        end
 else
     FaceTarget (NPC,Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end
end
end


function Door1(NPC,Spawn)
    local door = GetSpawn(NPC, 2340077)
    UseWidget(door)
end

function Door2(NPC,Spawn)
    local door = GetSpawn(NPC, 2340075)
    UseWidget(door)
end

function FaceGame(NPC)
	SpawnSet(NPC, "heading", "134")
end	

function Action(NPC)
    local choice = MakeRandomInt(1, 5)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
    elseif choice == 5 then
        PlayFlavor(NPC, "", "", "doh", 0, 0, Spawn)    
        end
end   


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 814.88, -20.45, 294.39, 2, 1)
	MovementLoopAddLocation(NPC, 814.88, -20.45, 294.39, 2, 55,"Action")
	MovementLoopAddLocation(NPC, 810.43, -20.45, 295.6, 2, 0)
	MovementLoopAddLocation(NPC, 807.3, -20.45, 293.31, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 802.36, -20.42, 291.25, 2, 0)
	MovementLoopAddLocation(NPC, 798.59, -20.48, 291.58, 2, 0)
	MovementLoopAddLocation(NPC, 770.68, -20.34, 290.93, 2, 0)
	MovementLoopAddLocation(NPC, 766.93, -20.44, 288.62, 2, 0)
	MovementLoopAddLocation(NPC, 758.9, -20.35, 285.06, 2, 0)
	MovementLoopAddLocation(NPC, 751.91, -20.3, 286.82, 2, 1)
	MovementLoopAddLocation(NPC, 751.91, -20.3, 286.82, 2, 55,"Action")
	MovementLoopAddLocation(NPC, 753.52, -20.3, 286.08, 2, 0)
	MovementLoopAddLocation(NPC, 753.87, -20.45, 281.94, 2, 0)
	MovementLoopAddLocation(NPC, 746.52, -20.51, 277.3, 2, 0)
	MovementLoopAddLocation(NPC, 733.11, -20.39, 278.57, 2, 0)
	MovementLoopAddLocation(NPC, 726.52, -20.42, 280.93, 2, 0)
	MovementLoopAddLocation(NPC, 724.18, -20.41, 289.34, 2, 0)
	MovementLoopAddLocation(NPC, 721.78, -20.28, 293.98, 2, 1,"FaceGame")
	MovementLoopAddLocation(NPC, 721.78, -20.28, 293.98, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 721.78, -20.28, 293.98, 2, 1,"FaceGame")
	MovementLoopAddLocation(NPC, 726.78, -20.45, 294.02, 2, 0)
	MovementLoopAddLocation(NPC, 733.27, -20.43, 305.31, 2, 0)
	MovementLoopAddLocation(NPC, 731.83, -20.54, 313.68, 2, 0)
	MovementLoopAddLocation(NPC, 731.09, -20.52, 318.97, 2, 0)
	MovementLoopAddLocation(NPC, 729.27, -20.46, 324.27, 2, 0)
	MovementLoopAddLocation(NPC, 737.83, -24.6, 332.36, 2, 0)
	MovementLoopAddLocation(NPC, 745.99, -24.72, 335.24, 2, 0)
	MovementLoopAddLocation(NPC, 751.5, -24.96, 326.83, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 756.39, -24.96, 319.35, 2, 1)
	MovementLoopAddLocation(NPC, 756.39, -24.96, 319.35, 2, 38,"Action")
	MovementLoopAddLocation(NPC, 757.41, -24.96, 319.36, 2, 0)
	MovementLoopAddLocation(NPC, 753.09, -24.96, 326.1, 2, 0)
	MovementLoopAddLocation(NPC, 748.59, -24.77, 332.46, 2, 2,"Door2")
	MovementLoopAddLocation(NPC, 756.45, -24.86, 339.54, 2, 0)
	MovementLoopAddLocation(NPC, 765.76, -25.22, 338.42, 2, 0)
	MovementLoopAddLocation(NPC, 773.48, -24.96, 330.82, 2, 0)
	MovementLoopAddLocation(NPC, 782.37, -24.49, 321.59, 2, 1)
	MovementLoopAddLocation(NPC, 782.37, -24.49, 321.59, 2, 38,"Action")
	MovementLoopAddLocation(NPC, 781.99, -24.81, 326.46, 2, 0)
	MovementLoopAddLocation(NPC, 785, -25.05, 329.16, 2, 0)
	MovementLoopAddLocation(NPC, 784.63, -25.21, 333.89, 2, 1)
	MovementLoopAddLocation(NPC, 784.63, -25.21, 333.89, 2, 38,"Action")
	MovementLoopAddLocation(NPC, 784.35, -25.19, 334.89, 2, 0)
	MovementLoopAddLocation(NPC, 783.72, -25.16, 334.53, 2, 0)
	MovementLoopAddLocation(NPC, 790.27, -25.09, 327.22, 2, 0)
	MovementLoopAddLocation(NPC, 807.82, -25.85, 317.39, 2, 0)
	MovementLoopAddLocation(NPC, 812, -25.87, 312.52, 2, 0)
	MovementLoopAddLocation(NPC, 807.81, -23.9, 307.22, 2, 0)
	MovementLoopAddLocation(NPC, 801.02, -20.25, 301.74, 2, 0)
	MovementLoopAddLocation(NPC, 799.01, -20.34, 299.56, 2, 0)
	MovementLoopAddLocation(NPC, 808.28, -20.45, 293.59, 2, 2,"Door1")
	MovementLoopAddLocation(NPC, 810.71, -20.45, 295.46, 2, 0)
	MovementLoopAddLocation(NPC, 815.74, -20.45, 293.65, 2, 0)
end



