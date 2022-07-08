--[[
	Script Name	: SpawnScripts/WillowWood/TrellyGreenfoot.lua
	Script Purpose	: Trelly Greenfoot 
	Script Author	: Scatman
	Script Date	: 2009.09.15 / Recreated using Ecology VO  04.16.2022 -Dorbin
	Script Notes	: Updated by Jabantiz (4/22/2017)
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    
function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 815.68, -21.48, -577.02, 2, 1)
	MovementLoopAddLocation(NPC, 815.68, -21.48, -577.02, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 820.79, -21.08, -580.59, 2, 0)
	MovementLoopAddLocation(NPC, 826, -20.22, -585.81, 2, 0)
	MovementLoopAddLocation(NPC, 832.36, -19.62, -595.46, 2, 0)
	MovementLoopAddLocation(NPC, 834.47, -20.38, -600.14, 2, 0)
	MovementLoopAddLocation(NPC, 834.53, -21.18, -606.98, 2, 0)
	MovementLoopAddLocation(NPC, 833.9, -21.37, -610.13, 2, 0)
	MovementLoopAddLocation(NPC, 829.03, -20.36, -613.45, 2, 0)
	MovementLoopAddLocation(NPC, 826.18, -20.22, -616.54, 2, 0)
	MovementLoopAddLocation(NPC, 825.61, -20.21, -617.8, 2, 0)
	MovementLoopAddLocation(NPC, 824.19, -20.74, -624.95, 2, 1)
	MovementLoopAddLocation(NPC, 824.19, -20.74, -624.95, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 824.28, -20.59, -623.54, 2, 0)
	MovementLoopAddLocation(NPC, 822.78, -20.3, -621.86, 2, 0)
	MovementLoopAddLocation(NPC, 818.25, -20.07, -620.86, 2, 0)
	MovementLoopAddLocation(NPC, 813.55, -19.77, -619.12, 2, 0)
	MovementLoopAddLocation(NPC, 805.13, -20.04, -616.64, 2, 1)
	MovementLoopAddLocation(NPC, 805.13, -20.04, -616.64, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 806.69, -20.12, -613.22, 2, 0)
	MovementLoopAddLocation(NPC, 808.36, -19.97, -607.99, 2, 0)
	MovementLoopAddLocation(NPC, 810.11, -20.04, -603.22, 2, 0)
	MovementLoopAddLocation(NPC, 811.27, -20.1, -600.71, 2, 0)
	MovementLoopAddLocation(NPC, 813.22, -20.11, -598.66, 2, 0)
	MovementLoopAddLocation(NPC, 817.76, -20.24, -594.34, 2, 0)
	MovementLoopAddLocation(NPC, 827.7, -19.48, -589.28, 2, 0)
	MovementLoopAddLocation(NPC, 827.44, -20.54, -583.55, 2, 0)
	MovementLoopAddLocation(NPC, 823.34, -21.19, -577.69, 2, 0)
	MovementLoopAddLocation(NPC, 815.03, -21.39, -576.18, 2, 1)
	MovementLoopAddLocation(NPC, 815.03, -21.39, -576.18, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 821.19, -21.27, -579.38, 2, 0)
	MovementLoopAddLocation(NPC, 826.9, -19.8, -587.62, 2, 0)
	MovementLoopAddLocation(NPC, 828.8, -19.39, -590.34, 2, 0)
	MovementLoopAddLocation(NPC, 834.73, -20.47, -600.71, 2, 0)
	MovementLoopAddLocation(NPC, 843.68, -21.15, -606.3, 2, 0)
	MovementLoopAddLocation(NPC, 847.85, -21.12, -608.67, 2, 0)
	MovementLoopAddLocation(NPC, 849.25, -20.89, -612.89, 2, 0)
	MovementLoopAddLocation(NPC, 848.91, -20.98, -615.09, 2, 0)
	MovementLoopAddLocation(NPC, 843.14, -21.8, -626.11, 2, 0)
	MovementLoopAddLocation(NPC, 841.56, -22.43, -630.45, 2, 0)
	MovementLoopAddLocation(NPC, 836.46, -21.85, -635, 2, 1)
	MovementLoopAddLocation(NPC, 836.46, -21.85, -635, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 839.82, -22.4, -636.2, 2, 0)
	MovementLoopAddLocation(NPC, 841.5, -22.09, -641.98, 2, 0)
	MovementLoopAddLocation(NPC, 847.72, -21.08, -647.71, 2, 0)
	MovementLoopAddLocation(NPC, 854.67, -20.64, -650.35, 2, 1)
	MovementLoopAddLocation(NPC, 854.67, -20.64, -650.35, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 851.33, -20.64, -647.64, 2, 0)
	MovementLoopAddLocation(NPC, 848.65, -21.77, -642.91, 2, 0)
	MovementLoopAddLocation(NPC, 843.27, -22.49, -637.04, 2, 0)
	MovementLoopAddLocation(NPC, 842.12, -22.37, -629.18, 2, 0)
	MovementLoopAddLocation(NPC, 838.13, -21.91, -626.84, 2, 0)
	MovementLoopAddLocation(NPC, 834.78, -21.79, -624.88, 2, 0)
	MovementLoopAddLocation(NPC, 833.66, -21.52, -620.75, 2, 0)
	MovementLoopAddLocation(NPC, 836.4, -21.16, -607.87, 2, 0)
	MovementLoopAddLocation(NPC, 837.41, -20.74, -603.1, 2, 0)
	MovementLoopAddLocation(NPC, 835.57, -19.92, -596.64, 2, 0)
	MovementLoopAddLocation(NPC, 832.36, -19.59, -590.77, 2, 0)
	MovementLoopAddLocation(NPC, 827.86, -20.55, -583.43, 2, 0)
	MovementLoopAddLocation(NPC, 823.51, -21.17, -577.06, 2, 0)
	MovementLoopAddLocation(NPC, 819.25, -21.36, -575.37, 2, 0)
end




function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    end
end 

