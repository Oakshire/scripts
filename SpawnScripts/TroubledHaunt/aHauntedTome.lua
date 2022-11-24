--[[
    Script Name    : SpawnScripts/TroubledHaunt/aHauntedTome.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 04:11:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function waypoints(NPC)
if GetSpawnLocationID(NPC) == 133780856 then
	MovementLoopAddLocation(NPC, -6.46, 3.5, -6.29, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -2.45, 3.5, -7.08, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 0.39, 3.5, -8.98, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 4.71, 3.5, -8.72, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 7.48, 3.5, -8.35, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 5.67, 3.5, -2.53, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 2.97, 3.5, -2.96, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 0.42, 3.5, -4.26, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -4.82, 3.5, -6.05, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -7.57, 4.7, -1.58, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -4.93, 4.7, 0.11, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.23, 4.7, -1.56, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -0.84, 4.7, -7.96, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 0.52, 4.7, -9.13, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 6.84, 4.7, -7.87, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 7.3, 4.7, -1.78, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.07, 3.5, -2.17, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -4.03, 3.5, -6, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -7.42, 3.5, -7.32, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -4.03, 3.5, -6, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.07, 3.5, -2.17, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 7.3, 4.7, -1.78, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 6.84, 4.7, -7.87, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 0.52, 4.7, -9.13, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -0.84, 4.7, -7.96, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.23, 4.7, -1.56, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -4.93, 4.7, 0.11, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -7.57, 4.7, -1.58, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -4.82, 3.5, -6.05, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 0.42, 3.5, -4.26, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 2.97, 3.5, -2.96, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 5.67, 3.5, -2.53, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 7.48, 3.5, -8.35, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 4.71, 3.5, -8.72, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 0.39, 3.5, -8.98, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -2.45, 3.5, -7.08, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -6.46, 3.5, -6.29, 2, 2,"GhostCheck")
    elseif GetSpawnLocationID(NPC) == 133780855 then
	MovementLoopAddLocation(NPC, -1.94, 3.5, 7.35, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -5.67, 3.5, 7.94, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -8.91, 3.5, 8.16, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -10.02, 3.5, 5.91, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -4.2, 3.5, 9.15, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.64, 3.5, 7.89, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -0.99, 3.5, 4.7, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -2.18, 3.5, 4.57, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.63, 3.5, 8.56, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -5.17, 3.5, 9.31, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -7.24, 3.5, 7.15, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -9.82, 3.5, 5.18, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -10.53, 3.5, 6.84, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -6.94, 3.5, 7.23, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 0.68, 3.5, 4.66, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.89, 3.5, 8.29, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -3.09, 3.5, 6.53, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -7.7, 3.5, 8.13, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -10.39, 3.5, 6.2, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -7.7, 3.5, 8.13, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -3.09, 3.5, 6.53, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.89, 3.5, 8.29, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, 0.68, 3.5, 4.66, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -6.94, 3.5, 7.23, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -10.53, 3.5, 6.84, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -9.82, 3.5, 5.18, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -7.24, 3.5, 7.15, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -5.17, 3.5, 9.31, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.63, 3.5, 8.56, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -2.18, 3.5, 4.57, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -0.99, 3.5, 4.7, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.64, 3.5, 7.89, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -4.2, 3.5, 9.15, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -10.02, 3.5, 5.91, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -8.91, 3.5, 8.16, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -5.67, 3.5, 7.94, 2, 2,"GhostCheck")
	MovementLoopAddLocation(NPC, -1.94, 3.5, 7.35, 2, 2,"GhostCheck")
	end
end

function GhostCheck(NPC,Spawn)
    zone = GetZone(NPC)
if IsAlive(GetSpawnByLocationID(zone,133780859))==true then
else
Despawn(NPC)
PlaySound(NPC,"sounds/ui/place_item.wav",GetX(NPC), GetY(NPC), GetZ(NPC))

end
end
    
function respawn(NPC)
	spawn(NPC)
end