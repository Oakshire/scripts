--[[
    Script Name    : SpawnScripts/WillowWood/AvilonBlueheart.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.07 03:07:15
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end



function waypoints(NPC)
	MovementLoopAddLocation(NPC, 839.94, -22.2, -640.4, 2, 0)
	MovementLoopAddLocation(NPC, 833.4, -21.54, -638.17, 2, 0)
	MovementLoopAddLocation(NPC, 832.69, -21.45, -638.11, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 827.7, -21.25, -638.5, 2, 0)
	MovementLoopAddLocation(NPC, 825.28, -21.25, -640.19, 2, 0)
	MovementLoopAddLocation(NPC, 821.05, -21.25, -643.67, 2, 1)
	MovementLoopAddLocation(NPC, 821.05, -21.25, -643.67, 2, 40,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 820.57, -21.25, -644.13, 2, 0)
	MovementLoopAddLocation(NPC, 822.04, -21.25, -643.21, 2, 0)
	MovementLoopAddLocation(NPC, 823.53, -21.25, -642.18, 2, 0)
	MovementLoopAddLocation(NPC, 825.68, -21.25, -644.53, 2, 1)
	MovementLoopAddLocation(NPC, 825.68, -21.25, -644.53, 2, 16,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 826, -21.25, -643.53, 2, 0)
	MovementLoopAddLocation(NPC, 828.57, -21.25, -638.76, 2, 0)
	MovementLoopAddLocation(NPC, 828.99, -21.21, -638.69, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 834.38, -21.77, -637.75, 2, 0)
	MovementLoopAddLocation(NPC, 837.3, -22.14, -637.8, 2, 0)
	MovementLoopAddLocation(NPC, 840.46, -22.43, -635.58, 2, 0)
	MovementLoopAddLocation(NPC, 842.34, -22.43, -629.97, 2, 0)
	MovementLoopAddLocation(NPC, 846.28, -21.12, -623.14, 2, 0)
	MovementLoopAddLocation(NPC, 849.05, -20.99, -616.69, 2, 0)
	MovementLoopAddLocation(NPC, 850.55, -20.69, -613.21, 2, 0)
	MovementLoopAddLocation(NPC, 851.28, -20.51, -609.44, 2, 0)
	MovementLoopAddLocation(NPC, 845.32, -20.83, -604.7, 2, 0)
	MovementLoopAddLocation(NPC, 840.84, -19.63, -597.77, 2, 1)
	MovementLoopAddLocation(NPC, 840.84, -19.63, -597.77, 2, 16,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 841.65, -20.88, -604.06, 2, 0)
	MovementLoopAddLocation(NPC, 851.18, -20.63, -608.36, 2, 0)
	MovementLoopAddLocation(NPC, 863.13, -18.82, -607.77, 2, 0)
	MovementLoopAddLocation(NPC, 870.53, -18.41, -604.13, 2, 0)
	MovementLoopAddLocation(NPC, 880.79, -16.86, -603.5, 2, 15)
	MovementLoopAddLocation(NPC, 870.61, -18.38, -601.92, 2, 0)
	MovementLoopAddLocation(NPC, 864.86, -18.68, -607.3, 2, 0)
	MovementLoopAddLocation(NPC, 852.83, -20.34, -608.57, 2, 0)
	MovementLoopAddLocation(NPC, 851.03, -20.64, -608.31, 2, 0)
	MovementLoopAddLocation(NPC, 848.2, -21.03, -615.84, 2, 0)
	MovementLoopAddLocation(NPC, 843.74, -21.71, -625.37, 2, 0)
	MovementLoopAddLocation(NPC, 840.05, -22.37, -631.78, 2, 0)
	MovementLoopAddLocation(NPC, 842.23, -21.42, -646.13, 2, 0)
	MovementLoopAddLocation(NPC, 842.61, -20.03, -655.12, 2, 1)
	MovementLoopAddLocation(NPC, 842.61, -20.03, -655.12, 2, 40,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 841.85, -19.99, -655.94, 2, 0)
	MovementLoopAddLocation(NPC, 843.97, -20.19, -659.36, 2, 0)
	MovementLoopAddLocation(NPC, 845.73, -21.12, -667.9, 2, 0)
	MovementLoopAddLocation(NPC, 848.06, -20.72, -678.29, 2, 0)
	MovementLoopAddLocation(NPC, 849.22, -20.61, -685.54, 2, 0)
	MovementLoopAddLocation(NPC, 849.61, -20.61, -693.51, 2, 0)
	MovementLoopAddLocation(NPC, 847.43, -20.61, -701.19, 2, 0)
	MovementLoopAddLocation(NPC, 842.61, -20.61, -707.65, 2, 0)
	MovementLoopAddLocation(NPC, 836.71, -20.61, -715.91, 2, 0)
	MovementLoopAddLocation(NPC, 831.09, -20.61, -724.1, 2, 1)
	MovementLoopAddLocation(NPC, 831.09, -20.61, -724.1, 2, 33,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 830.55, -20.61, -727.28, 2, 0)
	MovementLoopAddLocation(NPC, 832.65, -20.61, -727.95, 2, 0)
	MovementLoopAddLocation(NPC, 837.7, -20.61, -722.3, 2, 0)
	MovementLoopAddLocation(NPC, 848.72, -20.61, -708.39, 2, 0)
	MovementLoopAddLocation(NPC, 851.34, -20.61, -703.62, 2, 0)
	MovementLoopAddLocation(NPC, 853.75, -20.61, -693.64, 2, 0)
	MovementLoopAddLocation(NPC, 852.86, -20.61, -681.73, 2, 0)
	MovementLoopAddLocation(NPC, 848.12, -21.02, -668.04, 2, 0)
	MovementLoopAddLocation(NPC, 844.63, -20.01, -654.37, 2, 0)
	MovementLoopAddLocation(NPC, 847.13, -21.14, -647.58, 2, 0)
	MovementLoopAddLocation(NPC, 850.84, -21.29, -643.75, 2, 0)
	MovementLoopAddLocation(NPC, 854.42, -20.92, -640.66, 2, 1)
	MovementLoopAddLocation(NPC, 854.42, -20.92, -640.66, 2, 33,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 849.54, -21.82, -640.28, 2, 0)
	MovementLoopAddLocation(NPC, 842.73, -22.21, -640.82, 2, 0)
end

function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2370047)
    UseWidget(door)
end
