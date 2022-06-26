--[[
    Script Name    : SpawnScripts/Nettleville/Falkener.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 10:06:09
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
    if math.random(1,100)<15 then
	GenericGuardHail(NPC, Spawn)
    end        
end
end

function Outside(NPC, Spawn)
    SetHeading(NPC,73)
end

function Stair1(NPC, Spawn)
    SetHeading(NPC,188.6)
end

function Stair2(NPC, Spawn)
    SetHeading(NPC,99.8)
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
	MovementLoopAddLocation(NPC, 688.42, -20.35, 336.66, 2, 1,"Outside")
	MovementLoopAddLocation(NPC, 688.42, -20.35, 336.66, 2, 64,"Action")
	MovementLoopAddLocation(NPC, 687.17, -20.32, 336.02, 2, 0)
	MovementLoopAddLocation(NPC, 685.79, -20.42, 331.53, 2, 0)
	MovementLoopAddLocation(NPC, 687.54, -20.42, 330.85, 2, 0)
	MovementLoopAddLocation(NPC, 692.37, -20.46, 329.73, 2, 0)
	MovementLoopAddLocation(NPC, 697.61, -22.38, 328.49, 2, 0)
	MovementLoopAddLocation(NPC, 704.45, -23.93, 326.61, 2, 1,"Stair1")
	MovementLoopAddLocation(NPC, 704.45, -23.93, 326.61, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 707.9, -27.18, 341.66, 2, 1,"Stair2")
	MovementLoopAddLocation(NPC, 707.9, -27.18, 341.66, 2, 64,"Action")
	MovementLoopAddLocation(NPC, 706.99, -27.21, 341.85, 2, 0)
	MovementLoopAddLocation(NPC, 704.45, -27.22, 338.42, 2, 0)
	MovementLoopAddLocation(NPC, 702.42, -23.99, 330.82, 2, 0)
	MovementLoopAddLocation(NPC, 700.89, -23.75, 330.36, 2, 0)
	MovementLoopAddLocation(NPC, 688.25, -20.41, 333.6, 2, 0)
	MovementLoopAddLocation(NPC, 687.1, -20.4, 334.25, 2, 0)

end


