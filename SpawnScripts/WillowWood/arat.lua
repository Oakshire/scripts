
--[[
	Script Name		:	WWarat.lua
	Script Purpose	:	Waypoint Path for WWarat.lua
	Script Author	:	Dorbin
	Script Date		:	02/20/2022 12:59:02 PM
	Script Notes	:	Locations collected from Live
--]]

local Walter =  2370036

function FaceGuardGarath(NPC) -- Saluting Knight-Captain Garath script
    local Walter = GetSpawn(NPC, 2370036)
	
	if Walter ~= nil then 
        AddTimer(NPC, 2000, "SaluteGuardGarath") 
    end
end

function SaluteGuardGarath(NPC)
    local Walter = GetSpawn(NPC, 2370036)
	
	if Walter ~= nil then 
        PlayAnimation(NPC, 12167)
        AddTimer(NPC, 500, "GarathFacesGuardCinaldar") 
    end
end

function GarathFacesGuardCinaldar(NPC)
    local Walter = GetSpawn(NPC, 2370036)
	
	if Walter ~= nil then 
	    FaceTarget(Walter, NPC)
        AddTimer(NPC, 500, "GarathSalutesGuardCinaldar") 
    end
end

function GarathSalutesGuardCinaldar(NPC)
    local Walter = GetSpawn(NPC, 2370036)
	
	if Walter ~= nil then 
        PlayAnimation(Walter, 12214)
    end
end

function squeal (NPC, Spawn)
    PlayFlavor(NPC, "", "", "sotb_batsqueak2_sound", 0, 0)
end

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
    MovementLoopAddLocation(NPC, 827.71, -20.70, -755.0, 1, 1)
    MovementLoopAddLocation(NPC, 827.71, -20.70, -755.0, 1, 1,"FaceGuardGarath")
    MovementLoopAddLocation(NPC, 827.71, -20.70, -755.0, 1, 2)
	MovementLoopAddLocation(NPC, 834.44, -20.61, -728.71, 7, 0)
	MovementLoopAddLocation(NPC, 846.01, -20.61, -711.31, 5, 0)
	MovementLoopAddLocation(NPC, 853.58, -20.61, -698.23, 4, 0)
	MovementLoopAddLocation(NPC, 852.98, -20.61, -680.24, 4, 0)
	MovementLoopAddLocation(NPC, 840.84, -20.44, -672.72, 4, 0)
	MovementLoopAddLocation(NPC, 836.23, -20.59, -668.6, 4, math.random(10, 30))
	MovementLoopAddLocation(NPC, 839.4, -20.65, -666.91, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 838, -20.67, -665.68, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 835.48, -20.58, -667.54, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 837.93, -20.6, -668.07, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 838.19, -20.66, -665.91, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 840.19, -20.68, -667, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 837.57, -20.77, -664.19, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 838.5, -20.52, -661.12, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 838.13, -20.42, -659.69, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 838.37, -20.67, -665.87, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 837.31, -20.65, -670.01, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 843.09, -20.27, -675.52, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 847.25, -20.48, -679.57, 1, math.random(5, 10))
	MovementLoopAddLocation(NPC, 849.7, -20.61, -692.5, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 846.47, -20.61, -702.36, 4, 0)
	MovementLoopAddLocation(NPC, 833.04, -20.61, -721.73, 4, 0)
	MovementLoopAddLocation(NPC, 832.48, -20.61, -736.16, 4, 3)
	MovementLoopAddLocation(NPC, 831.36, -20.61, -746.06, 2, 6)
	MovementLoopAddLocation(NPC, 824.55, -20.68, -757.51, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 826.3, -20.7, -757.49, 2, math.random(5, 10))
end


