--[[
	Script Name		:	SpawnScripts/NorthFreeport/NFreeportWanders.lua
	Script Purpose	:	Waypoint Path for All wanderers in North Freeport
	Script Author	:	Cynnar
	Script Date		:	6/1/2018 03:06:35 PM
	Script Notes	:	Needs to add in split paths and to call function to spawn next wanderer
--]]

local path

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -223.06, -57.78, -150.9, 2, math.random(0, 6))
	MovementLoopAddLocation(NPC, -220.03, -58.83, -159.56, 2, 0)
	MovementLoopAddLocation(NPC, -217.61, -58.83, -163.77, 2, 0)
	MovementLoopAddLocation(NPC, -214.34, -58.83, -167.83, 2, 0)
	MovementLoopAddLocation(NPC, -211.29, -58.83, -170.3, 2, 0)
	MovementLoopAddLocation(NPC, -207.02, -58.83, -173.07, 2, 0)
	MovementLoopAddLocation(NPC, -204.05, -58.83, -176.46, 2, 0)
	MovementLoopAddLocation(NPC, -202.67, -58.83, -179.64, 2, 0)
	MovementLoopAddLocation(NPC, -201.81, -58.83, -184.29, 2, 0)
	MovementLoopAddLocation(NPC, -201, -58.83, -188.08, 2, 0)
	MovementLoopAddLocation(NPC, -199.43, -58.83, -192.25, 2, 0)
	MovementLoopAddLocation(NPC, -196.22, -58.83, -198.53, 2, 0)
	MovementLoopAddLocation(NPC, -194.02, -58.83, -204.38, 2, 0)
	MovementLoopAddLocation(NPC, -191.54, -58.83, -209.47, 2, 0)
	MovementLoopAddLocation(NPC, -186.05, -58.82, -215.92, 2, 0)
	MovementLoopAddLocation(NPC, -181, -58.8, -219.54, 2, 0)
	MovementLoopAddLocation(NPC, -175.8, -58.79, -222.26, 2, 0)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_1(NPC)
	else
		path_2(NPC)
	end
	
	MovementLoopAddLocation(NPC, -73, -34.59, -334.7, 2, 0)
	MovementLoopAddLocation(NPC, -53.33, -27.3, -335.17, 2, 0)
	MovementLoopAddLocation(NPC, -50.4, -27.31, -333.36, 2, 0)
	MovementLoopAddLocation(NPC, -47.94, -27.31, -330.74, 2, 0)
	MovementLoopAddLocation(NPC, -47.65, -27.3, -328.31, 2, 0)
	MovementLoopAddLocation(NPC, -46.37, -20.06, -310.13, 2, 0)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_M_0(NPC)
	end
	
	MovementLoopAddLocation(NPC, -46.98, -20.05, -296.12, 2, 0)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_M_1(NPC)
	else
		path_M_2(NPC)
	end
	
	MovementLoopAddLocation(NPC, -42.07, -13.95, -191.72, 2, 0, "changegrid_Going_Up")
	-- the below path needs tweaking but will allow me ot find the grid changes and add them
	MovementLoopAddLocation(NPC, -42.07, -13.95, -191.72, 2, 2)
	MovementLoopAddLocation(NPC, -44.22, -12.42, -184.67, 2, 2)
	MovementLoopAddLocation(NPC, -42.9, -11.68, -181.09, 2, 2)
	MovementLoopAddLocation(NPC, -40.47, -11.42, -179.79, 2, 2)
	MovementLoopAddLocation(NPC, -28.82, -10.91, -176.8, 2, 2)
	MovementLoopAddLocation(NPC, -26.46, -10.58, -174.76, 2, 2)
	MovementLoopAddLocation(NPC, -25.6, -10.12, -171.74, 2, 2)
	MovementLoopAddLocation(NPC, -25.8, -9.93, -170.37, 2, 2)
	MovementLoopAddLocation(NPC, -47.69, -9.49, -99.06, 2, 2)
	MovementLoopAddLocation(NPC, -46.82, -9.89, -92.37, 2, 2)
	MovementLoopAddLocation(NPC, -44.55, -10.45, -88.97, 2, 2)
	MovementLoopAddLocation(NPC, -36.56, -12.33, -80.55, 2, 2)
	MovementLoopAddLocation(NPC, -32.14, -13.03, -71.58, 2, 2)
	MovementLoopAddLocation(NPC, -30.6, -12.68, -64.69, 2, 2)
	MovementLoopAddLocation(NPC, -30.6, -13.02, -58.91, 2, 2)
	MovementLoopAddLocation(NPC, -28.83, -14.73, -54.39, 2, 2)
	MovementLoopAddLocation(NPC, -28.48, -16.29, -51.51, 2, 2)
	MovementLoopAddLocation(NPC, -28.99, -18.09, -48.72, 2, 2)
	MovementLoopAddLocation(NPC, -31.58, -20.22, -45.22, 2, 2)
	MovementLoopAddLocation(NPC, -40.76, -24.37, -41.55, 2, 2)
	MovementLoopAddLocation(NPC, -92.31, -24.37, -51.34, 2, 2)
	MovementLoopAddLocation(NPC, -108.18, -24.37, -52.2, 2, 2)
	MovementLoopAddLocation(NPC, -152.46, -23.84, -57.33, 2, 2)
	-- turn around now
	MovementLoopAddLocation(NPC, -152.46, -23.84, -57.33, 2, 2)
	MovementLoopAddLocation(NPC, -108.18, -24.37, -52.2, 2, 2)
	MovementLoopAddLocation(NPC, -92.31, -24.37, -51.34, 2, 2)
	MovementLoopAddLocation(NPC, -40.76, -24.37, -41.55, 2, 2)
	MovementLoopAddLocation(NPC, -31.58, -20.22, -45.22, 2, 2)
	MovementLoopAddLocation(NPC, -28.99, -18.09, -48.72, 2, 2)
	MovementLoopAddLocation(NPC, -28.48, -16.29, -51.51, 2, 2)
	MovementLoopAddLocation(NPC, -28.83, -14.73, -54.39, 2, 2)
	MovementLoopAddLocation(NPC, -30.6, -13.02, -58.91, 2, 2)
	MovementLoopAddLocation(NPC, -30.6, -12.68, -64.69, 2, 2)
	MovementLoopAddLocation(NPC, -32.14, -13.03, -71.58, 2, 2)
	MovementLoopAddLocation(NPC, -36.56, -12.33, -80.55, 2, 2)
	MovementLoopAddLocation(NPC, -44.55, -10.45, -88.97, 2, 2)
	MovementLoopAddLocation(NPC, -46.82, -9.89, -92.37, 2, 2)
	MovementLoopAddLocation(NPC, -47.69, -9.49, -99.06, 2, 2)
	MovementLoopAddLocation(NPC, -25.8, -9.93, -170.37, 2, 2)
	MovementLoopAddLocation(NPC, -25.6, -10.12, -171.74, 2, 2)
	MovementLoopAddLocation(NPC, -26.46, -10.58, -174.76, 2, 2)
	MovementLoopAddLocation(NPC, -28.82, -10.91, -176.8, 2, 2)
	MovementLoopAddLocation(NPC, -40.47, -11.42, -179.79, 2, 2)
	MovementLoopAddLocation(NPC, -42.9, -11.68, -181.09, 2, 2)
	MovementLoopAddLocation(NPC, -44.22, -12.42, -184.67, 2, 2)
	MovementLoopAddLocation(NPC, -42.07, -13.95, -191.72, 2, 2)
	-- the below path changes grid going back down
	MovementLoopAddLocation(NPC, -42.07, -13.95, -191.72, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -38.19, -17.6, -206.13, 2, 0)
	MovementLoopAddLocation(NPC, -41.59, -20.05, -306.7, 2, 0)
	MovementLoopAddLocation(NPC, -49.14, -27.31, -332.17, 2, 0)
	MovementLoopAddLocation(NPC, -75.35, -34.59, -332.93, 2, 0)
	MovementLoopAddLocation(NPC, -78.64, -34.59, -300.55, 2, 0)
	MovementLoopAddLocation(NPC, -79.65, -34.59, -284.7, 2, 0)
	MovementLoopAddLocation(NPC, -83.56, -34.59, -272.71, 2, 0)
	MovementLoopAddLocation(NPC, -74.37, -34.59, -268.9, 2, 0)
	MovementLoopAddLocation(NPC, -71.68, -34.64, -259.61, 2, 0)
	MovementLoopAddLocation(NPC, -74.49, -40.33, -239.88, 2, 0)
	MovementLoopAddLocation(NPC, -98.38, -40.33, -242.16, 2, 0)
	MovementLoopAddLocation(NPC, -115.83, -40.33, -239.26, 2, 0)
	MovementLoopAddLocation(NPC, -119.98, -40.33, -227.42, 2, 0)
	MovementLoopAddLocation(NPC, -125.8, -40.33, -210.82, 2, 0)
	MovementLoopAddLocation(NPC, -123.43, -40.33, -204.9, 2, 0)
	MovementLoopAddLocation(NPC, -110.43, -45.45, -198.73, 2, 0)
	MovementLoopAddLocation(NPC, -108.38, -46.05, -191.29, 2, 0)
	MovementLoopAddLocation(NPC, -119.97, -46.05, -190.14, 2, 0)
	MovementLoopAddLocation(NPC, -134.06, -51.8, -202.83, 2, 0)
	MovementLoopAddLocation(NPC, -145.69, -51.71, -213.04, 2, 0)
	MovementLoopAddLocation(NPC, -172.27, -58.78, -223.46, 2, 0)
	MovementLoopAddLocation(NPC, -187.94, -58.82, -214.02, 2, 0)
	MovementLoopAddLocation(NPC, -194.25, -58.83, -203.97, 2, 0)
	MovementLoopAddLocation(NPC, -196.73, -58.83, -196.44, 2, 0)
	MovementLoopAddLocation(NPC, -201.38, -58.83, -190.06, 2, 0)
	MovementLoopAddLocation(NPC, -202.34, -58.83, -183.87, 2, 0)
	MovementLoopAddLocation(NPC, -203.25, -58.83, -177.99, 2, 0)
	MovementLoopAddLocation(NPC, -206.57, -58.83, -173.18, 2, 0)
	MovementLoopAddLocation(NPC, -211.24, -58.83, -170.33, 2, 0)
	MovementLoopAddLocation(NPC, -218.61, -58.83, -162.67, 2, 0)
	MovementLoopAddLocation(NPC, -221.69, -57.94, -154.27, 2, 0)
	MovementLoopAddLocation(NPC, -221.94, -57.78, -150.45, 2, 0, "depop")
end

--------------------------------------------------------------------------------------
--			Path 1
--------------------------------------------------------------------------------------

function path_1(NPC)
	MovementLoopAddLocation(NPC, -169.9, -58.78, -222.94, 2, 0)
	MovementLoopAddLocation(NPC, -164.11, -58.73, -221.04, 2, 0)
	MovementLoopAddLocation(NPC, -147.45, -51.53, -211.51, 2, 0)
	MovementLoopAddLocation(NPC, -143.90, -51.67, -209.39, 2, 0)
	
	path = math.random(0, 2)
	
	if path == 1 then
		path_1_0(NPC)
	elseif path == 2 then
		path_1_A(NPC)
	else
		path_1_B(NPC)
	end
end

--------------------------------------------------------------------------------------
--			Path 1 (0)
--------------------------------------------------------------------------------------

function path_1_0(NPC)
	MovementLoopAddLocation(NPC, -143.18, -51.79, -204.42, 2, 0)
	MovementLoopAddLocation(NPC, -149.44, -51.83, -196.63, 2, 0)
	MovementLoopAddLocation(NPC, -156.32, -52.58, -186.63, 2, 0)
	MovementLoopAddLocation(NPC, -164.31, -54.34, -170.32, 2, 0)
	MovementLoopAddLocation(NPC, -169.77, -55.19, -155.41, 2, 0)
	MovementLoopAddLocation(NPC, -172.41, -55.69, -143.41, 2, 0)
	MovementLoopAddLocation(NPC, -172.44, -56.14, -123.56, 2, 0)
	MovementLoopAddLocation(NPC, -167.41, -56.14, -115.27, 2, 0)
	MovementLoopAddLocation(NPC, -175.67, -56.14, -120.51, 2, 0)
	MovementLoopAddLocation(NPC, -175.78, -56.14, -120.31, 2, 3, "convointeract")
	MovementLoopAddLocation(NPC, -172.41, -55.69, -143.41, 2, 0)
	MovementLoopAddLocation(NPC, -169.77, -55.19, -155.41, 2, 0)
	MovementLoopAddLocation(NPC, -164.31, -54.34, -170.32, 2, 0)
	MovementLoopAddLocation(NPC, -156.32, -52.58, -186.63, 2, 0)
	MovementLoopAddLocation(NPC, -149.44, -51.83, -196.63, 2, 0)
	MovementLoopAddLocation(NPC, -143.18, -51.79, -204.42, 2, 0)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_1_A(NPC)
	else
		path_1_B(NPC)
	end
end
--------------------------------------------------------------------------------------
--			Path 1 (A)
--------------------------------------------------------------------------------------

function path_1_A(NPC)
	MovementLoopAddLocation(NPC, -133.61, -51.81, -202.18, 2, 0)
	MovementLoopAddLocation(NPC, -122.51, -46.09, -193.1, 2, 2)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_1_A0(NPC)
	else
		path_1_A1(NPC)
	end
end

function path_1_A0(NPC)
	MovementLoopAddLocation(NPC, -120.89, -46.06, -186.65, 2, 0)
	MovementLoopAddLocation(NPC, -122.83, -46.07, -183.89, 2, 0)
	MovementLoopAddLocation(NPC, -124.63, -46.07, -183.15, 2, 0)
	MovementLoopAddLocation(NPC, -126.41, -46.08, -183.44, 2, 0)
	MovementLoopAddLocation(NPC, -129.31, -46.08, -184.69, 2, 0)
	MovementLoopAddLocation(NPC, -132.83, -46.08, -185.38, 2, 0)
	MovementLoopAddLocation(NPC, -136.46, -46.08, -185.39, 2, 0)
	MovementLoopAddLocation(NPC, -140.57, -46.08, -184.19, 2, 0)
	MovementLoopAddLocation(NPC, -143.16, -46.08, -181.62, 2, 0)
	MovementLoopAddLocation(NPC, -144.91, -46.08, -178.82, 2, 0)
	MovementLoopAddLocation(NPC, -146.21, -46.08, -174.25, 2, 0)
	MovementLoopAddLocation(NPC, -147.28, -43.42, -168.09, 2, 0)
	MovementLoopAddLocation(NPC, -141.45, -41.22, -161.81, 2, 0)
	MovementLoopAddLocation(NPC, -142.81, -41.22, -159.03, 2, 0)
	MovementLoopAddLocation(NPC, -148.79, -41.22, -145.75, 2, 3)
	MovementLoopAddLocation(NPC, -149.24, -41.22, -145.09, 2, 0, "depop")
end

function path_1_A1(NPC)
	MovementLoopAddLocation(NPC, -110.71, -46.04, -192.08, 2, 0)
	MovementLoopAddLocation(NPC, -108.34, -46.03, -194.76, 2, 0)
	MovementLoopAddLocation(NPC, -110.44, -45.46, -197.94, 2, 0)
	MovementLoopAddLocation(NPC, -123.47, -40.33, -205.4, 2, 0)
	MovementLoopAddLocation(NPC, -125.64, -40.33, -208.7, 2, 0)
	MovementLoopAddLocation(NPC, -124.99, -40.33, -212.61, 2, 0)
	MovementLoopAddLocation(NPC, -117.79, -40.33, -235.84, 2, 0)
	MovementLoopAddLocation(NPC, -115.56, -40.33, -238.77, 2, 0)
	MovementLoopAddLocation(NPC, -112.1, -40.33, -240.96, 2, 0)
	MovementLoopAddLocation(NPC, -108.02, -40.33, -242.18, 2, 0)
	MovementLoopAddLocation(NPC, -91.14, -40.33, -242.24, 2, 0)
	MovementLoopAddLocation(NPC, -85.75, -40.33, -238.90, 2, 3)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_1_A1_A(NPC)
	else
		path_1_A1_B(NPC)
	end
end

function path_1_A1_A(NPC)
	MovementLoopAddLocation(NPC, -74.84, -40.33, -241.43, 2, 0)
	MovementLoopAddLocation(NPC, -73.28, -34.62, -260.18, 2, 0)
	MovementLoopAddLocation(NPC, -74.05, -34.6, -263.5, 2, 0)
	MovementLoopAddLocation(NPC, -75.97, -34.6, -266.3, 2, 0)
	MovementLoopAddLocation(NPC, -79.11, -34.59, -268.7, 2, 0)
	MovementLoopAddLocation(NPC, -82.26, -34.59, -272.47, 2, 0)
	MovementLoopAddLocation(NPC, -84, -34.59, -276.38, 2, 0)
	MovementLoopAddLocation(NPC, -82.66, -34.59, -282.19, 2, 0)
	MovementLoopAddLocation(NPC, -81.11, -34.59, -287.45, 2, 0)
	MovementLoopAddLocation(NPC, -79.72, -34.59, -293.65, 2, 0)
	MovementLoopAddLocation(NPC, -77.75, -34.59, -307.03, 2, 0)
	MovementLoopAddLocation(NPC, -76.54, -34.59, -333.41, 2, 0)
end

function path_1_A1_B(NPC)
	MovementLoopAddLocation(NPC, -88.36, -40.34, -250.34, 2, 0)
	MovementLoopAddLocation(NPC, -93.29, -40.37, -255.67, 2, 0)
	MovementLoopAddLocation(NPC, -112.39, -46.05, -262.74, 2, 0)
	MovementLoopAddLocation(NPC, -119.67, -45.91, -264.97, 2, 3)

	path_1_B2(NPC)
end

--------------------------------------------------------------------------------------
--			Path 1 B
--------------------------------------------------------------------------------------

function path_1_B(NPC)
	MovementLoopAddLocation(NPC, -138.63, -51.52, -211.31, 2, 0)
	MovementLoopAddLocation(NPC, -134.5, -50.34, -222.11, 2, 0)
	MovementLoopAddLocation(NPC, -133.05, -49.66, -228.59, 2, 0)
	MovementLoopAddLocation(NPC, -119.67, -45.91, -264.97, 2, 3)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_1_B1(NPC)
	else
		path_1_B2(NPC)
	end
end

function path_1_B1(NPC)
	MovementLoopAddLocation(NPC, -112.39, -46.05, -262.74, 2, 0)
	MovementLoopAddLocation(NPC, -93.29, -40.37, -255.67, 2, 0)
	MovementLoopAddLocation(NPC, -88.36, -40.34, -250.34, 2, 0)
	MovementLoopAddLocation(NPC, -85.75, -40.33, -238.90, 2, 0)
	
	path_1_A1_A(NPC)
end

function path_1_B2(NPC)
	MovementLoopAddLocation(NPC, -117.41, -45.67, -272.94, 2, 0)
	MovementLoopAddLocation(NPC, -112.23, -44.38, -287.58, 2, 0)
	MovementLoopAddLocation(NPC, -108.43, -43.63, -294.92, 2, 0)
	MovementLoopAddLocation(NPC, -106.37, -42.82, -301.29, 2, 0)
	MovementLoopAddLocation(NPC, -106.04, -42, -311.79, 2, 0)
	MovementLoopAddLocation(NPC, -106.52, -40.64, -329.87, 2, 0)
	MovementLoopAddLocation(NPC, -105.83, -34.63, -353.16, 2, 0)
	MovementLoopAddLocation(NPC, -94.85, -34.6, -353.04, 2, 0)
	MovementLoopAddLocation(NPC, -87.51, -34.59, -348.76, 2, 0)
	MovementLoopAddLocation(NPC, -85.22, -34.59, -344.25, 2, 0)
	MovementLoopAddLocation(NPC, -79.49, -34.59, -340.59, 2, 0)
end


--------------------------------------------------------------------------------------
--			Path 2
--------------------------------------------------------------------------------------

function path_2(NPC)
	MovementLoopAddLocation(NPC, -174.11, -58.78, -225.87, 2, 0)
	MovementLoopAddLocation(NPC, -175.66, -58.78, -229.59, 2, 0)
	MovementLoopAddLocation(NPC, -175.1, -58.78, -232.62, 2, 0)
	MovementLoopAddLocation(NPC, -172.73, -58.79, -239.34, 2, 0)
	MovementLoopAddLocation(NPC, -170.44, -58.79, -244.27, 2, 0)
	MovementLoopAddLocation(NPC, -165.02, -58.71, -261.07, 2, 0)
	MovementLoopAddLocation(NPC, -160.2, -53.04, -276.76, 2, 0)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_2_A(NPC)
	else
		path_2_B(NPC)
	end
end

--------------------------------------------------------------------------------------
--			Path 2 (A)
--------------------------------------------------------------------------------------

function path_2_A(NPC)
	MovementLoopAddLocation(NPC, -156.08, -53.06, -279.01, 2, 0)
	MovementLoopAddLocation(NPC, -149.76 -53.01, -275.14, 2, 0)
	MovementLoopAddLocation(NPC, -118.51, -45.90, -265.65, 2, 5)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_1_B1(NPC)
	else
		path_1_B2(NPC)
	end
end

--------------------------------------------------------------------------------------
--			Path 2 (B)
--------------------------------------------------------------------------------------

function path_2_B(NPC)
	MovementLoopAddLocation(NPC, -158.68, -53.07, -281.49, 2, 0)
	MovementLoopAddLocation(NPC, -158.3, -53.12, -292.75, 2, 0)
	MovementLoopAddLocation(NPC, -156.89, -53.12, -306.44, 2, 0)
	MovementLoopAddLocation(NPC, -153.09, -53.12, -317.94, 2, 0)
	MovementLoopAddLocation(NPC, -142.21, -53.12, -329.3, 2, 0)
	MovementLoopAddLocation(NPC, -139, -53.12, -336.57, 2, 0)
	MovementLoopAddLocation(NPC, -139.12, -53.12, -344.84, 2, 0)
	MovementLoopAddLocation(NPC, -140.95, -53.12, -352.35, 2, 0)
	MovementLoopAddLocation(NPC, -146.84, -53.12, -367.32, 2, 3, "convointeract")
	MovementLoopAddLocation(NPC, -140.95, -53.12, -352.35, 2, 0)
	MovementLoopAddLocation(NPC, -139.12, -53.12, -344.84, 2, 0)
	MovementLoopAddLocation(NPC, -139, -53.12, -336.57, 2, 0)
	MovementLoopAddLocation(NPC, -142.21, -53.12, -329.3, 2, 0)
	MovementLoopAddLocation(NPC, -153.09, -53.12, -317.94, 2, 0)
	MovementLoopAddLocation(NPC, -156.89, -53.12, -306.44, 2, 0)
	MovementLoopAddLocation(NPC, -158.3, -53.12, -292.75, 2, 0)
	MovementLoopAddLocation(NPC, -158.68, -53.07, -281.49, 2, 0)
	MovementLoopAddLocation(NPC, -156.08, -53.06, -279.01, 2, 0)
	MovementLoopAddLocation(NPC, -149.76 -53.01, -275.14, 2, 0)
	MovementLoopAddLocation(NPC, -118.51, -45.90, -265.65, 2, 5)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_1_B1(NPC)
	else
		path_1_B2(NPC)
	end
end

--------------------------------------------------------------------------------------
--			path M (second floor)
--------------------------------------------------------------------------------------

function path_M_0(NPC)
	MovementLoopAddLocation(NPC, -39.22, -20.05, -303.54, 2, 0)
	MovementLoopAddLocation(NPC, -33.18, -20.05, -302.24, 2, 0)
	MovementLoopAddLocation(NPC, -8.05, -20.05, -301.9, 2, 0)
	MovementLoopAddLocation(NPC, -5.43, -20.05, -303.81, 2, 0)
	MovementLoopAddLocation(NPC, -5.08, -20.05, -304.57, 2, 0)
	MovementLoopAddLocation(NPC, -5.43, -20.05, -303.81, 2, 0)
	MovementLoopAddLocation(NPC, -8.05, -20.05, -301.9, 2, 0)
	MovementLoopAddLocation(NPC, -33.18, -20.05, -302.24, 2, 0)
	MovementLoopAddLocation(NPC, -39.22, -20.05, -303.54, 2, 0)
	MovementLoopAddLocation(NPC, -46.98, -20.05, -296.12, 2, 0)
end

function path_M_1(NPC)
	MovementLoopAddLocation(NPC, -50.48, -20.05, -291.21, 2, 0)
	MovementLoopAddLocation(NPC, -54.83, -20.05, -289.07, 2, 0)
	MovementLoopAddLocation(NPC, -57.27, -20.05, -286.83, 2, 0)
	MovementLoopAddLocation(NPC, -59.01, -20.05, -279.63, 2, 0)
	MovementLoopAddLocation(NPC, -58.28, -20.05, -273.66, 2, 0)
	MovementLoopAddLocation(NPC, -53.34, -20.05, -268.11, 2, 0)
	MovementLoopAddLocation(NPC, -51.46, -20.05, -262.82, 2, 0)
	MovementLoopAddLocation(NPC, -52.4, -20.05, -265.51, 2, 0)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_M_1_2(NPC)
	else
		path_M_2_1(NPC)
	end
end

function path_M_2(NPC)
	MovementLoopAddLocation(NPC, -45.22, -19.99, -292.82, 2, 0)
	MovementLoopAddLocation(NPC, -44.02, -20.05, -291.21, 2, 0)
	MovementLoopAddLocation(NPC, -41.55, -20.05, -289.99, 2, 0)
	MovementLoopAddLocation(NPC, -39.02, -20.05, -289.4, 2, 0)
	MovementLoopAddLocation(NPC, -36.53, -20.05, -287.74, 2, 0)
	MovementLoopAddLocation(NPC, -35.85, -20.05, -286.19, 2, 0)
	MovementLoopAddLocation(NPC, -35.46, -20.05, -283.84, 2, 0)
	MovementLoopAddLocation(NPC, -35.78, -20.05, -272.98, 2, 0)
	MovementLoopAddLocation(NPC, -36.46, -20.05, -271.23, 2, 0)
	MovementLoopAddLocation(NPC, -39.76, -20.05, -266.08, 2, 0)
	
	path = math.random(0, 1)
	
	if path == 1 then
		path_M_1_2(NPC)
	else
		path_M_2_1(NPC)
	end
end


function path_M_1_2(NPC)
	MovementLoopAddLocation(NPC, -46.65, -20.05, -262.10, 2, 0, math.random(3, 12))
	MovementLoopAddLocation(NPC, -52.4, -20.05, -257.83, 2, 0)
	MovementLoopAddLocation(NPC, -53.92, -20.05, -254.64, 2, 0)
	MovementLoopAddLocation(NPC, -57.09, -20.05, -251.29, 2, 0)
	MovementLoopAddLocation(NPC, -57.7, -20.05, -249.34, 2, 0)
	MovementLoopAddLocation(NPC, -58.47, -20.05, -246.06, 2, 0)
	MovementLoopAddLocation(NPC, -58.61, -20.05, -239.32, 2, 0)
	MovementLoopAddLocation(NPC, -57.63, -20.05, -236.31, 2, 0)
	MovementLoopAddLocation(NPC, -55.64, -20.05, -234.06, 2, 0)
	MovementLoopAddLocation(NPC, -48.08, -20.07, -225.36, 2, 0)
	MovementLoopAddLocation(NPC, -39.74, -18.02, -209.19, 2, 0)
end

function path_M_2_1(NPC)
	MovementLoopAddLocation(NPC, -46.65, -20.05, -262.10, 2, 0, math.random(3, 12))
	MovementLoopAddLocation(NPC, -39.55, -20.05, -259, 2, 0)
	MovementLoopAddLocation(NPC, -36.7, -20.05, -254.18, 2, 0)
	MovementLoopAddLocation(NPC, -35.61, -20.05, -251.85, 2, 0)
	MovementLoopAddLocation(NPC, -35.64, -20.05, -238.73, 2, 0)
	MovementLoopAddLocation(NPC, -35.54, -19.27, -215.97, 2, 0)
end

--------------------------------------------------------------------------------------
--			Despawn
--------------------------------------------------------------------------------------

function depop(NPC)
	Despawn(NPC)
end

--------------------------------------------------------------------------------------
--			NPC Interaction conversations and other functions
--------------------------------------------------------------------------------------

function convointeract(NPC)
	local spawn2 = GetSpawn(NPC, 1440070)

	if spawn2 ~= nil then
		AddTimer(spawn2, 5000, "Talk")
	end
	
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 157236824)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 840463424)
end

