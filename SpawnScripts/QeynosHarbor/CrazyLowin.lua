--[[
    Script Name    : SpawnScripts/QeynosHarbor/CrazyLowin.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.14 01:06:35
    Script Purpose : 
                   : 
--]]
local  AttackTimer = false -- determines if the cat will hiss at players.  Disabled when 'sleeping'.

function spawn(NPC)
waypoints(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
if AttackTimer == false then
if math.random(1,100) <=33 then
    AttackTimer = true    
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "attack", 0, 0)
    AddTimer(NPC,25000,"AttackTimerReset")
    end
end
end

function AttackTimerReset(NPC,Spawn)
AttackTimer = false
end

function Sleep(NPC)
local choice = math.random(1,2)
if choice == 1 then
    AttackTimer = true
    SpawnSet(NPC, "action_state", 540)
    AddTimer(NPC, 22000, "Wake")
elseif choice ==2 then
end
end

function Wake(NPC)    
    SpawnSet(NPC, "action_state", 0)
AttackTimer = false
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 768.72, -20.77, -17.33, 6, 0)
	MovementLoopAddLocation(NPC, 769.75, -20.64, -26, 6, 0)
	MovementLoopAddLocation(NPC, 769.17, -20.64, -27.71, 1, 1)
	MovementLoopAddLocation(NPC, 769.17, -20.64, -27.71, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 767.71, -20.65, -29.44, 6, 0)
	MovementLoopAddLocation(NPC, 767.89, -20.67, -33.84, 6, 0)
	MovementLoopAddLocation(NPC, 765.47, -21.69, -49.18, 6, 0)
	MovementLoopAddLocation(NPC, 746.25, -21.39, -44.55, 1, 0)
	MovementLoopAddLocation(NPC, 735.85, -21.03, -38.8, 1, 1)
	MovementLoopAddLocation(NPC, 735.85, -21.03, -38.8, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 735.81, -21.03, -37.42, 6, 0)
	MovementLoopAddLocation(NPC, 736.11, -21.03, -34.15, 6, 0)
	MovementLoopAddLocation(NPC, 729.42, -20.69, -7.85, 1, 1)
	MovementLoopAddLocation(NPC, 729.42, -20.69, -7.85, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 730.78, -20.73, -8.08, 1, 0)
	MovementLoopAddLocation(NPC, 731.43, -20.76, -8.89, 1, 1)
	MovementLoopAddLocation(NPC, 731.43, -20.76, -8.89, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 720.13, -21.39, -57.94, 6, 0)
	MovementLoopAddLocation(NPC, 731.88, -20.73, -74.1, 6, 0)
	MovementLoopAddLocation(NPC, 736.91, -20.55, -77.99, 1, 1)
	MovementLoopAddLocation(NPC, 736.91, -20.55, -77.99, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 742.52, -20.63, -75.22, 6, 0)
	MovementLoopAddLocation(NPC, 744.38, -20.68, -72, 6, 0)
	MovementLoopAddLocation(NPC, 745.18, -20.75, -71.25, 1, 1)
	MovementLoopAddLocation(NPC, 745.18, -20.75, -71.25, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 742.46, -20.76, -69.5, 6, 0)
	MovementLoopAddLocation(NPC, 740.99, -20.8, -68.56, 6, 0)
	MovementLoopAddLocation(NPC, 740.2, -20.94, -66.48, 6, 0)
	MovementLoopAddLocation(NPC, 747.32, -21.23, -63.23, 6, 0)
	MovementLoopAddLocation(NPC, 751.5, -21.37, -61.53, 6, 0)
	MovementLoopAddLocation(NPC, 771.71, -20.85, -68.63, 6, 0)
	MovementLoopAddLocation(NPC, 784.02, -20.94, -68.67, 6, 0)
	MovementLoopAddLocation(NPC, 796.38, -20.97, -52.36, 1, 1)
	MovementLoopAddLocation(NPC, 796.38, -20.97, -52.36, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 798.06, -20.87, -51.75, 6, 0)
	MovementLoopAddLocation(NPC, 802.57, -20.67, -51.79, 1, 1)
	MovementLoopAddLocation(NPC, 802.57, -20.67, -51.79, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 794.91, -21.02, -53.08, 6, 0)
	MovementLoopAddLocation(NPC, 788.62, -21.08, -50.16, 6, 0)
	MovementLoopAddLocation(NPC, 779.91, -20.64, -32.93, 6, 0)
	MovementLoopAddLocation(NPC, 775.87, -20.64, -21.91, 6, 0)
	MovementLoopAddLocation(NPC, 774.08, -20.64, -12.1, 6, 0)
	MovementLoopAddLocation(NPC, 763.49, -20.64, 3.24, 6, 0)
	MovementLoopAddLocation(NPC, 739.63, -20.64, 5.96, 1, 1)
	MovementLoopAddLocation(NPC, 739.63, -20.64, 5.96, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 749.84, -21.05, 2.7, 1, 0)
	MovementLoopAddLocation(NPC, 758.63, -20.64, 9.31, 1, 0)
	MovementLoopAddLocation(NPC, 773.15, -20.64, 18.16, 1, 1)
	MovementLoopAddLocation(NPC, 773.15, -20.64, 18.16, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 768.91, -20.64, 11.09, 6, 0)
	MovementLoopAddLocation(NPC, 756.84, -21.05, -4.27, 6, 0)
	MovementLoopAddLocation(NPC, 753.71, -20.98, -20.34, 6, 0)
	MovementLoopAddLocation(NPC, 741.3, -21.03, -33.64, 1, 1)
	MovementLoopAddLocation(NPC, 741.3, -21.03, -33.64, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 736.76, -21.03, -33.64, 1, 0)
	MovementLoopAddLocation(NPC, 694.74, -20.54, -35.94, 1, 1)
	MovementLoopAddLocation(NPC, 694.74, -20.54, -35.94, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 692.35, -20.74, -35.06, 6, 0)
	MovementLoopAddLocation(NPC, 692.35, -20.74, -31.46, 6, 0)
	MovementLoopAddLocation(NPC, 698.49, -20.35, -7.63, 6, 0)
	MovementLoopAddLocation(NPC, 706.17, -20.02, 0.76, 6, 0)
	MovementLoopAddLocation(NPC, 732.19, -19.83, 1.49, 6, 0)
	MovementLoopAddLocation(NPC, 741.59, -20.99, -3.8, 1, 1)
	MovementLoopAddLocation(NPC, 741.59, -20.99, -3.8, 1,  25,"Sleep")
	MovementLoopAddLocation(NPC, 732.19, -19.83, 1.49, 6, 0)
	MovementLoopAddLocation(NPC, 706.17, -20.02, 0.76, 6, 0)
	MovementLoopAddLocation(NPC, 698.49, -20.35, -7.63, 6, 0)
	MovementLoopAddLocation(NPC, 692.35, -20.74, -31.46, 6, 0)
	MovementLoopAddLocation(NPC, 692.35, -20.74, -35.06, 6, 0)
	MovementLoopAddLocation(NPC, 694.74, -20.54, -35.94, 1, 1)
	MovementLoopAddLocation(NPC, 694.74, -20.54, -35.94, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 736.76, -21.03, -33.64, 6, 0)
	MovementLoopAddLocation(NPC, 741.3, -21.03, -33.64, 1, 1)
	MovementLoopAddLocation(NPC, 741.3, -21.03, -33.64, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 753.71, -20.98, -20.34, 6, 0)
	MovementLoopAddLocation(NPC, 756.84, -21.05, -4.27, 6, 0)
	MovementLoopAddLocation(NPC, 768.91, -20.64, 11.09, 6, 0)
	MovementLoopAddLocation(NPC, 773.15, -20.64, 18.16, 1, 1)
	MovementLoopAddLocation(NPC, 773.15, -20.64, 18.16, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 758.63, -20.64, 9.31, 6, 0)
	MovementLoopAddLocation(NPC, 749.84, -21.05, 2.7, 6, 0)
	MovementLoopAddLocation(NPC, 739.63, -20.64, 5.96, 1, 1)
	MovementLoopAddLocation(NPC, 739.63, -20.64, 5.96, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 763.49, -20.64, 3.24, 6, 0)
	MovementLoopAddLocation(NPC, 774.08, -20.64, -12.1, 6, 0)
	MovementLoopAddLocation(NPC, 775.87, -20.64, -21.91, 6, 0)
	MovementLoopAddLocation(NPC, 779.91, -20.64, -32.93, 6, 0)
	MovementLoopAddLocation(NPC, 788.62, -21.08, -50.16, 6, 0)
	MovementLoopAddLocation(NPC, 794.91, -21.02, -53.08, 6, 0)
	MovementLoopAddLocation(NPC, 802.57, -20.67, -51.79, 1, 1)
	MovementLoopAddLocation(NPC, 802.57, -20.67, -51.79, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 798.06, -20.87, -51.75, 6, 0)
	MovementLoopAddLocation(NPC, 796.38, -20.97, -52.36, 1, 1)
	MovementLoopAddLocation(NPC, 796.38, -20.97, -52.36, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 784.02, -20.94, -68.67, 6, 0)
	MovementLoopAddLocation(NPC, 771.71, -20.85, -68.63, 6, 0)
	MovementLoopAddLocation(NPC, 751.5, -21.37, -61.53, 6, 0)
	MovementLoopAddLocation(NPC, 747.32, -21.23, -63.23, 6, 0)
	MovementLoopAddLocation(NPC, 740.2, -20.94, -66.48, 6, 0)
	MovementLoopAddLocation(NPC, 740.99, -20.8, -68.56, 6, 0)
	MovementLoopAddLocation(NPC, 742.46, -20.76, -69.5, 6, 0)
	MovementLoopAddLocation(NPC, 745.18, -20.75, -71.25, 1, 1)
	MovementLoopAddLocation(NPC, 745.18, -20.75, -71.25, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 744.38, -20.68, -72, 6, 0)
	MovementLoopAddLocation(NPC, 742.52, -20.63, -75.22, 6, 0)
	MovementLoopAddLocation(NPC, 736.91, -20.55, -77.99, 1, 1)
	MovementLoopAddLocation(NPC, 736.91, -20.55, -77.99, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 731.88, -20.73, -74.1, 6, 0)
	MovementLoopAddLocation(NPC, 720.13, -21.39, -57.94, 6, 0)
	MovementLoopAddLocation(NPC, 731.43, -20.76, -8.89, 1, 1)
	MovementLoopAddLocation(NPC, 731.43, -20.76, -8.89, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 730.78, -20.73, -8.08, 6, 0)
	MovementLoopAddLocation(NPC, 729.42, -20.69, -7.85, 1, 1)
	MovementLoopAddLocation(NPC, 729.42, -20.69, -7.85, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 736.11, -21.03, -34.15, 6, 0)
	MovementLoopAddLocation(NPC, 735.81, -21.03, -37.42, 6, 0)
	MovementLoopAddLocation(NPC, 735.85, -21.03, -38.8, 1, 1)
	MovementLoopAddLocation(NPC, 735.85, -21.03, -38.8, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 746.25, -21.39, -44.55, 6, 0)
	MovementLoopAddLocation(NPC, 765.47, -21.69, -49.18, 6, 0)
	MovementLoopAddLocation(NPC, 767.89, -20.67, -33.84, 6, 0)
	MovementLoopAddLocation(NPC, 767.71, -20.65, -29.44, 6, 0)
	MovementLoopAddLocation(NPC, 769.17, -20.64, -27.71, 1, 1)
	MovementLoopAddLocation(NPC, 769.17, -20.64, -27.71, 6,  25,"Sleep")
	MovementLoopAddLocation(NPC, 769.75, -20.64, -26, 6, 0)
	MovementLoopAddLocation(NPC, 768.72, -20.77, -17.33, 6, 0)
end


