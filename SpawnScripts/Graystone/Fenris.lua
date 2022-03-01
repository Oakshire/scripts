--[[
	Script Name		:	Fenris.lua
	Script Purpose	:	Waypoint Path for Fenris.lua
	Script Author	:	Jabantiz
	Script Date		:	6/10/2018 12:00:00 AM
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 890.57, -22.61, -91.98, 2, 15, "Sit1")
	MovementLoopAddLocation(NPC, 897.12, -22.61, -104.66, 2, 0)
	MovementLoopAddLocation(NPC, 897.11, -22.36, -106.09, 2, 0)
	MovementLoopAddLocation(NPC, 895.89, -22.37, -107.83, 2, 0)
	MovementLoopAddLocation(NPC, 893.84, -22.3, -109.15, 2, 0)
	MovementLoopAddLocation(NPC, 892.03, -22.3, -109.09, 2, 0)
	MovementLoopAddLocation(NPC, 890.05, -22.32, -107.88, 2, 0)
	MovementLoopAddLocation(NPC, 887.18, -22.26, -100.18, 2, 0)
	MovementLoopAddLocation(NPC, 883.81, -23.15, -100.39, 2, 0)
	MovementLoopAddLocation(NPC, 879.82, -24.97, -101.7, 2, 0)
	MovementLoopAddLocation(NPC, 871.36, -24.96, -102.91, 2, 0)
	MovementLoopAddLocation(NPC, 861.08, -24.95, -104.77, 2, 10, "Sit2")
	MovementLoopAddLocation(NPC, 852.72, -24.96, -106.63, 2, 0)
	MovementLoopAddLocation(NPC, 849.94, -23.89, -107.24, 2, 0)
	MovementLoopAddLocation(NPC, 847.42, -23.05, -108.03, 2, 0)
	MovementLoopAddLocation(NPC, 845.49, -23.25, -109.36, 2, 0)
	MovementLoopAddLocation(NPC, 845.11, -22.6, -114.25, 2, 0)
	MovementLoopAddLocation(NPC, 845.44, -22.84, -123.11, 2, 0)
	MovementLoopAddLocation(NPC, 845.86, -22.97, -126.09, 2, 0)
	MovementLoopAddLocation(NPC, 846.19, -23.96, -128.42, 2, 0)
	MovementLoopAddLocation(NPC, 846.64, -25.38, -131.64, 2, 0)
	MovementLoopAddLocation(NPC, 847.11, -24.78, -135.05, 2, 0)
	MovementLoopAddLocation(NPC, 848.51, -24.32, -137.19, 2, 0)
	MovementLoopAddLocation(NPC, 850.58, -24.28, -140.58, 2, 0)
	MovementLoopAddLocation(NPC, 853.19, -24.22, -144.99, 2, 0)
	MovementLoopAddLocation(NPC, 853.77, -24.2, -147.17, 2, 0)
	MovementLoopAddLocation(NPC, 853.72, -24.17, -149.2, 2, 0)
	MovementLoopAddLocation(NPC, 853.48, -24.17, -150.48, 2, 0)
	MovementLoopAddLocation(NPC, 852.08, -24.19, -152.17, 2, 0)
	MovementLoopAddLocation(NPC, 849.66, -24.24, -153.3, 2, 0)
	MovementLoopAddLocation(NPC, 845.21, -24.42, -153.66, 2, 0)
	MovementLoopAddLocation(NPC, 827.11, -25, -153.24, 2, 0)
	MovementLoopAddLocation(NPC, 820.85, -25.22, -151.96, 2, 0)
	MovementLoopAddLocation(NPC, 814.31, -25.49, -154.51, 2, 15, "Sit3")
	MovementLoopAddLocation(NPC, 816.69, -25.32, -158.6, 2, 0)
	MovementLoopAddLocation(NPC, 821.84, -24.77, -161.63, 2, 0)
	MovementLoopAddLocation(NPC, 829.39, -24.7, -162.63, 2, 0)
	MovementLoopAddLocation(NPC, 835.25, -24.79, -163.82, 2, 0)
	MovementLoopAddLocation(NPC, 839.43, -24.77, -165.85, 2, 0)
	MovementLoopAddLocation(NPC, 846.04, -24.2, -169.07, 2, 0)
	MovementLoopAddLocation(NPC, 855.77, -23.15, -173.79, 2, 25, "Sit4")
	MovementLoopAddLocation(NPC, 850.79, -24.02, -167.99, 2, 0)
	MovementLoopAddLocation(NPC, 846.71, -24.7, -165.4, 2, 0)
	MovementLoopAddLocation(NPC, 841.78, -25.21, -162.26, 2, 0)
	MovementLoopAddLocation(NPC, 843.77, -25.48, -157.36, 2, 0)
	MovementLoopAddLocation(NPC, 850.28, -25.45, -156.18, 2, 0)
	MovementLoopAddLocation(NPC, 857.37, -25.45, -156.42, 2, 0)
	MovementLoopAddLocation(NPC, 870.36, -25.45, -156.48, 2, 0)
	MovementLoopAddLocation(NPC, 876.36, -24.92, -155.68, 2, 0)
	MovementLoopAddLocation(NPC, 881.79, -24.94, -154.19, 2, 0)
	MovementLoopAddLocation(NPC, 885.01, -24.79, -148.67, 2, 0)
	MovementLoopAddLocation(NPC, 888.47, -23.69, -143.96, 2, 0)
	MovementLoopAddLocation(NPC, 889.57, -22.69, -139.54, 2, 0)
	MovementLoopAddLocation(NPC, 887.99, -22.21, -135.03, 2, 0)
	MovementLoopAddLocation(NPC, 884.02, -22.21, -134.61, 2, 0)
	MovementLoopAddLocation(NPC, 878.39, -22.21, -138.6, 2, 0)
	MovementLoopAddLocation(NPC, 873.59, -22.21, -143.68, 2, 0)
	MovementLoopAddLocation(NPC, 857.84, -22.21, -147.08, 2, 20, "Sit5")
	MovementLoopAddLocation(NPC, 860.97, -22.21, -143.65, 2, 0)
	MovementLoopAddLocation(NPC, 867.53, -22.21, -140.44, 2, 0)
	MovementLoopAddLocation(NPC, 880.95, -22.21, -137.49, 2, 0)
	MovementLoopAddLocation(NPC, 890.11, -22.01, -136.9, 2, 0)
	MovementLoopAddLocation(NPC, 893.75, -22.56, -134.41, 2, 0)
	MovementLoopAddLocation(NPC, 896.32, -22.46, -127.99, 2, 0)
	MovementLoopAddLocation(NPC, 899.45, -22.32, -119.8, 2, 0)
	MovementLoopAddLocation(NPC, 902.52, -22.3, -111.96, 2, 0)
	MovementLoopAddLocation(NPC, 902.61, -22.4, -102.31, 2, 0)
	MovementLoopAddLocation(NPC, 900.04, -22.4, -92.91, 2, 0)
	MovementLoopAddLocation(NPC, 897.25, -22.4, -86.65, 2, 0)
	MovementLoopAddLocation(NPC, 894.65, -22.22, -86.07, 2, 0)
	MovementLoopAddLocation(NPC, 891.35, -22.61, -87.19, 2, 0)
	MovementLoopAddLocation(NPC, 889.13, -22.61, -88.2, 2, 0)
end

function Sit(NPC, Time)
	PlayAnimation(NPC, 538)
	SpawnSet(NPC, "action_state", "540")
	AddTimer(NPC, Time, "EndSit")
end

function EndSit(NPC)
	PlayAnimation(NPC, 539)
	SpawnSet(NPC, "action_state", "0")
end

function Sit1(NPC)
	 Sit(NPC, 10000)
end


function Sit2(NPC)
	SpawnSet(NPC, "heading", "172.81")
	Sit(NPC, 8000)
end


function Sit3(NPC)
	SpawnSet(NPC, "heading", "180.48") 
	 Sit(NPC, 12000)
end


function Sit4(NPC)
	SpawnSet(NPC, "heading", "331.89") 
	 Sit(NPC, 20000)
end


function Sit5(NPC)
	 SpawnSet(NPC, "heading", "50.98") 
	 Sit(NPC, 15000)
end


