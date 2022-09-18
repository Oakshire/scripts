--[[
    Script Name    : SpawnScripts/IsleRefuge1/asawtoothshark.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.17 12:09:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)== 133775649 then
    MovementLoopAddLocation(NPC, -104.44, -11.65, 97.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.3, -10.46, 95.34, 2, 0)
	MovementLoopAddLocation(NPC, -119.83, -10.33, 91.11, 2, 0)
	MovementLoopAddLocation(NPC, -126.02, -10.68, 89.71, 2, 0)
	MovementLoopAddLocation(NPC, -135.21, -10.45, 135.61, 2, 0)
	MovementLoopAddLocation(NPC, -140.76, -11.84, 147.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.18, -12.38, 158.2, 2, 0)
	MovementLoopAddLocation(NPC, -152.33, -13.16, 183.61, 2, 0)
	MovementLoopAddLocation(NPC, -148.39, -13.6, 190.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -149.75, -14.28, 184.92, 2, 0)
	MovementLoopAddLocation(NPC, -148.31, -14.61, 177.17, 2, 0)
	MovementLoopAddLocation(NPC, -137.66, -14.71, 161.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.28, -12.99, 170.99, 2, 0)
	MovementLoopAddLocation(NPC, -125.93, -12.24, 171.58, 2, 0)
	MovementLoopAddLocation(NPC, -120.22, -11.92, 168.74, 2, 0)
	MovementLoopAddLocation(NPC, -102.65, -11.77, 157.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.1, -11.29, 159.26, 2, 0)
	MovementLoopAddLocation(NPC, -124.23, -11.82, 164.03, 2, 0)
	MovementLoopAddLocation(NPC, -129.68, -11.72, 163, 12, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.68, -12.44, 144.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.35, -11.99, 137.15, 2, 0)
	MovementLoopAddLocation(NPC, -126.04, -11.8, 126.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.96, -11.78, 115.73, 2, math.random(10, 20))
elseif GetSpawnLocationID(NPC)== 133775650 then
    MovementLoopAddLocation(NPC, -148.24, -14.67, 83.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.62, -13.92, 86.24, 2, 0)
	MovementLoopAddLocation(NPC, -143.67, -13.46, 88.52, 2, 0)
	MovementLoopAddLocation(NPC, -130.79, -10.46, 91.97, 2, 0)
	MovementLoopAddLocation(NPC, -117.86, -10.64, 93.94, 2, 0)
	MovementLoopAddLocation(NPC, -112.53, -10.61, 89.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.33, -10.61, 93.37, 2, 0)
	MovementLoopAddLocation(NPC, -130.86, -11.12, 95.66, 2, 0)
	MovementLoopAddLocation(NPC, -142.83, -12.52, 105.9, 2, 0)
	MovementLoopAddLocation(NPC, -147.3, -12.55, 112.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -152.84, -12.41, 121.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.37, -11.38, 116.83, 2, 0)
	MovementLoopAddLocation(NPC, -133.93, -11.68, 116.85, 2, 0)
	MovementLoopAddLocation(NPC, -123.66, -11.64, 116.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.55, -11.99, 128.11, 2, 0)
	MovementLoopAddLocation(NPC, -121.12, -11.8, 134.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -101.16, -11.78, 127.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -81.41, -11.33, 135.26, 2, 0)
	MovementLoopAddLocation(NPC, -80.52, -11.44, 140.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.8, -11.1, 136.09, 2, 0)
	MovementLoopAddLocation(NPC, -89.95, -11.25, 128.31, 2, 0)
	MovementLoopAddLocation(NPC, -122.46, -11.72, 119.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.23, -11.77, 120.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.58, -10.6, 108.24, 2, 0)
	MovementLoopAddLocation(NPC, -128.92, -10.6, 108.63, 2, 0)
	MovementLoopAddLocation(NPC, -131.39, -11.62, 94.79, 2, 0)
	MovementLoopAddLocation(NPC, -131.96, -11.62, 85.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.1, -13, 99.21, 2, 0)
	MovementLoopAddLocation(NPC, -151.72, -12.86, 111.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -151.14, -13.27, 95.92, 2, 0)
	MovementLoopAddLocation(NPC, -150.7, -14.3, 89.53, 2, 0)
	elseif GetSpawnLocationID(NPC)== 133775651 then
	MovementLoopAddLocation(NPC, -39.72, -11.89, -43.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.46, -11.71, -29.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.26, -11.45, -22.5, 2, 0)
	MovementLoopAddLocation(NPC, -45, -10.51, -26.8, 2, 0)
	MovementLoopAddLocation(NPC, -54.32, -10.57, -27.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.62, -10.66, -19.87, 2, 0)
	MovementLoopAddLocation(NPC, -53.13, -10.7, -13.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.61, -10.7, -22.03, 2, 0)
	MovementLoopAddLocation(NPC, -39.91, -10.7, -36.09, 2, 0)
	MovementLoopAddLocation(NPC, -33.09, -11.36, -44.94, 2, 0)
	MovementLoopAddLocation(NPC, -25.07, -11.13, -49.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.5, -11.9, -41.41, 2, 0)
	MovementLoopAddLocation(NPC, -40.13, -11.77, -34.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.9, -11.91, -32.09, 2, 0)
	MovementLoopAddLocation(NPC, -22.21, -11.78, -24.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.8, -11.56, -30.14, 2, 0)
	MovementLoopAddLocation(NPC, -20.09, -11.52, -34.38, 2, 0)
	MovementLoopAddLocation(NPC, -18.03, -11.7, -41.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.32, -11.96, -44, 2, 0)
	MovementLoopAddLocation(NPC, -40.73, -11.66, -44.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.79, -11.83, -21.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.95, -11.32, -20.16, 2, 0)
	MovementLoopAddLocation(NPC, -41.01, -10.7, -18.47, 2, 0)
	MovementLoopAddLocation(NPC, -50.38, -10.7, -17, 2, 0)
	MovementLoopAddLocation(NPC, -58.49, -10.7, -9.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.11, -10.7, -16.5, 2, 0)
	MovementLoopAddLocation(NPC, -34.35, -11.3, -43.29, 2, 0)
	MovementLoopAddLocation(NPC, -29.3, -11.64, -47.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.03, -11.77, -34.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.64, -11.91, -24.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.15, -11.74, -30.3, 2, 0)
	MovementLoopAddLocation(NPC, -20.28, -11.7, -34.51, 2, 0)
	MovementLoopAddLocation(NPC, -18.09, -11.7, -41.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.57, -12.07, -44.27, 2, 0)
	elseif GetSpawnLocationID(NPC)== 133775652 then
	MovementLoopAddLocation(NPC, -107.28, -11, 78.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.93, -11.07, 81.41, 2, 0)
	MovementLoopAddLocation(NPC, -130.76, -11.3, 84.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.27, -12.64, 78.63, 2, 0)
	MovementLoopAddLocation(NPC, -151.58, -12.74, 65.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.12, -12.19, 59.05, 2, 0)
	MovementLoopAddLocation(NPC, -116.54, -11.79, 52.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.49, -11.68, 67.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.72, -11.74, 72.22, 2, 0)
	MovementLoopAddLocation(NPC, -127.32, -11.93, 75.18, 2, 0)
	MovementLoopAddLocation(NPC, -137.96, -12.43, 76.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.94, -12.47, 68.84, 2, 0)
	MovementLoopAddLocation(NPC, -149.37, -12.11, 19.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.72, -11.36, 30.37, 2, 0)
	MovementLoopAddLocation(NPC, -122.98, -11.04, 47.18, 2, 0)
	MovementLoopAddLocation(NPC, -107.05, -10.95, 71.17, 2, 0)
	elseif GetSpawnLocationID(NPC)== 133775653 then
	MovementLoopAddLocation(NPC, -131.58, -12.7, 66.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.69, -12.68, 80.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.12, -13.42, 85.37, 2, 0)
	MovementLoopAddLocation(NPC, -150, -14.61, 86.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -150.91, -14.34, 74.35, 2, 0)
	MovementLoopAddLocation(NPC, -141.91, -12.47, 58.52, 2, 0)
	MovementLoopAddLocation(NPC, -138.63, -10.53, 40.25, 2, 0)
	MovementLoopAddLocation(NPC, -134.67, -10.46, 12.95, 2, 0)
	MovementLoopAddLocation(NPC, -142.8, -10.36, 1.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -151.23, -13.44, 18.87, 2, 0)
	MovementLoopAddLocation(NPC, -147.56, -13.11, 39.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.78, -12.59, 48.75, 2, 0)
	MovementLoopAddLocation(NPC, -125.74, -12.03, 68.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.99, -11.8, 80.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.01, -12.21, 75.66, 2, 0)
	elseif GetSpawnLocationID(NPC)== 133775654 then
	MovementLoopAddLocation(NPC, -140.67, -12.8, 41.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.76, -12.24, 24.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.68, -11.75, 18.5, 2, 0)
	MovementLoopAddLocation(NPC, -116.12, -11.65, 14.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.59, -10.52, 17.4, 2, 0)
	MovementLoopAddLocation(NPC, -125.23, -10.19, 25, 2, 0)
	MovementLoopAddLocation(NPC, -124.52, -10.19, 38.4, 2, 0)
	MovementLoopAddLocation(NPC, -114.76, -10.41, 46.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.85, -10.2, 61.13, 2, 0)
	MovementLoopAddLocation(NPC, -123.89, -10.28, 78.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.17, -12.26, 66.27, 2, 0)
	MovementLoopAddLocation(NPC, -147.86, -13.22, 55.39, 2, 0)
	MovementLoopAddLocation(NPC, -149.84, -13.63, 42.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.65, -13.33, 17.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.58, -12.5, 33.93, 2, 0)
	elseif GetSpawnLocationID(NPC)== 133775655 then
	MovementLoopAddLocation(NPC, -79.32, -10.6, -12.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.45, -10.5, -16.23, 2, 0)
	MovementLoopAddLocation(NPC, -62.31, -10.5, -22.04, 2, 0)
	MovementLoopAddLocation(NPC, -43.91, -10.6, -40.16, 2, 0)
	MovementLoopAddLocation(NPC, -37.31, -11.23, -43.71, 2, 0)
	MovementLoopAddLocation(NPC, -35.67, -11.65, -47.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.11, -11.36, -28.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.17, -10.6, -25.22, 2, 0)
	MovementLoopAddLocation(NPC, -40.15, -10.6, -15.61, 2, 0)
	MovementLoopAddLocation(NPC, -46.16, -10.6, -9.6, 2, 0)
	MovementLoopAddLocation(NPC, -54.02, -10.6, -2.22, 2, 0)
	MovementLoopAddLocation(NPC, -66.99, -10.6, 8.2, 2, 0)
	MovementLoopAddLocation(NPC, -72.05, -10.6, 14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.06, -10.6, 13.32, 2, 0)
	MovementLoopAddLocation(NPC, -33.72, -10.6, 6.68, 2, 0)
	MovementLoopAddLocation(NPC, -17.74, -12.7, 4.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.01, -11.65, -0.48, 2, 0)
	MovementLoopAddLocation(NPC, -27.11, -11.29, -2.3, 2, 0)
	MovementLoopAddLocation(NPC, -30.65, -10.62, -2.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.78, -10.6, -13.21, 2, 0)
	MovementLoopAddLocation(NPC, -25.94, -11.08, -35.87, 2, 0)
	MovementLoopAddLocation(NPC, -22.65, -12.8, -45.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.37, -11.8, -47.93, 2, 0)
	MovementLoopAddLocation(NPC, -18.82, -11.15, -50.05, 2, 0)
	MovementLoopAddLocation(NPC, -16.15, -10.6, -55.69, 2, 0)
	MovementLoopAddLocation(NPC, -10.44, -10.6, -63.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.39, -10.6, -54.2, 2, 0)
	MovementLoopAddLocation(NPC, -46.68, -10.6, -32.03, 2, 0)
	MovementLoopAddLocation(NPC, -53.04, -10.6, -24.31, 2, 0)
	MovementLoopAddLocation(NPC, -63.84, -10.6, -14.64, 2, 0)
	MovementLoopAddLocation(NPC, -67.69, -10.6, -8.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -72.94, -10.6, -3.83, 2, 0)
	MovementLoopAddLocation(NPC, -82.62, -11.05, 2.69, 2, math.random(10, 20))	    
	elseif GetSpawnLocationID(NPC)== 133775656 then
	MovementLoopAddLocation(NPC, -25.27, -12.3, 3.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.38, -10.6, -9.33, 2, 0)
	MovementLoopAddLocation(NPC, -35.02, -10.6, -20.55, 2, 0)
	MovementLoopAddLocation(NPC, -38.36, -11.45, -31.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.78, -10.6, -20.68, 2, 0)
	MovementLoopAddLocation(NPC, -53.71, -10.6, -13.71, 2, 0)
	MovementLoopAddLocation(NPC, -59.94, -10.8, -5.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.54, -10.6, -15.8, 2, 0)
	MovementLoopAddLocation(NPC, -27.73, -10.63, -50.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.2, -11.66, -43.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.33, -12.56, -37.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.11, -12.13, -34.91, 2, 0)
	MovementLoopAddLocation(NPC, -42.44, -11.31, -31.87, 2, 0)
	MovementLoopAddLocation(NPC, -47.1, -10.6, -28.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.65, -10.6, -18.04, 2, 0)
	MovementLoopAddLocation(NPC, -35.94, -10.6, -9.02, 2, 0)
	MovementLoopAddLocation(NPC, -27.42, -10.6, 0.93, 2, 0)
	MovementLoopAddLocation(NPC, -20.66, -12.73, 14.5, 2, math.random(10, 20))
	elseif GetSpawnLocationID(NPC)== 133775657 then
	MovementLoopAddLocation(NPC, -15.51, -11.68, -25.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.71, -11.38, -34.55, 2, 0)
	MovementLoopAddLocation(NPC, -16.67, -11.15, -40.45, 2, 0)
	MovementLoopAddLocation(NPC, -15.55, -10.7, -57.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.82, -10.7, -46.1, 2, 0)
	MovementLoopAddLocation(NPC, -13.39, -11.84, -2.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.58, -12.18, -0.27, 2, 0)
	MovementLoopAddLocation(NPC, -35.11, -12.05, 16.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.69, -10.76, 9.24, 2, 0)
	MovementLoopAddLocation(NPC, -34.81, -10.7, -12, 2, 0)
	MovementLoopAddLocation(NPC, -35.17, -11.13, -22.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.84, -12.07, -27.1, 2, 0)
	MovementLoopAddLocation(NPC, -25.47, -11.36, -43.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.06, -11.89, -28.22, 2, 0)
	MovementLoopAddLocation(NPC, -26.89, -10.7, -3.23, 2, 0)
	MovementLoopAddLocation(NPC, -30.3, -11.56, 10.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.82, -11.63, 17.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.69, -10.7, -3.52, 2, 0)
	MovementLoopAddLocation(NPC, -32.28, -10.7, -15.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.36, -11.56, -24.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.11, -11.48, -22.03, 2, math.random(10, 20))	
	elseif GetSpawnLocationID(NPC)== 133775658 then
	MovementLoopAddLocation(NPC, 84.63, -10.98, -45.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.34, -11.01, -46.87, 2, 0)
	MovementLoopAddLocation(NPC, 63.91, -11.8, -60.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.37, -11.92, -67.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.82, -11.73, -60.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.79, -11.18, -51.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.28, -10.7, -57.43, 2, 0)
	MovementLoopAddLocation(NPC, 40.69, -10.7, -69.89, 2, 0)
	MovementLoopAddLocation(NPC, 30.27, -10.7, -79.5, 2, 0)
	MovementLoopAddLocation(NPC, 24.75, -11.06, -87.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.81, -11.7, -74.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.21, -11.87, -80.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.55, -11.79, -48.34, 2, 0)
	MovementLoopAddLocation(NPC, 77.63, -11.96, -35.76, 2, 0)
	MovementLoopAddLocation(NPC, 78.08, -11.76, -29.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.69, -11.28, -41, 2, 0)
	MovementLoopAddLocation(NPC, 85.95, -11, -43.95, 2, 0)
	MovementLoopAddLocation(NPC, 94.21, -11.22, -43.57, 2, math.random(10, 20))	   
	elseif GetSpawnLocationID(NPC)== 133775659 then
	MovementLoopAddLocation(NPC, 59.65, -10.96, -49.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.61, -12.44, -39.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.64, -11.29, -45.1, 2, 0)
	MovementLoopAddLocation(NPC, 78.75, -11.18, -47.06, 2, 0)
	MovementLoopAddLocation(NPC, 76.6, -11.15, -48.57, 2, 0)
	MovementLoopAddLocation(NPC, 73.09, -11.5, -51, 2, 0)
	MovementLoopAddLocation(NPC, 68.67, -11.74, -55.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.79, -11.04, -46.69, 2, 0)
	MovementLoopAddLocation(NPC, 85.09, -11.27, -44.29, 2, 0)
	MovementLoopAddLocation(NPC, 94.05, -11.63, -42.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.54, -11.08, -44.24, 2, 0)
	MovementLoopAddLocation(NPC, 79.18, -10.7, -47.97, 2, 0)
	MovementLoopAddLocation(NPC, 73.1, -10.7, -55.77, 2, 0)
	MovementLoopAddLocation(NPC, 71.14, -11.63, -70.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.18, -11.62, -73.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.29, -11.01, -63.17, 2, 0)
	MovementLoopAddLocation(NPC, 75.28, -10.98, -51.86, 2, 0)
	MovementLoopAddLocation(NPC, 79.95, -10.61, -43.85, 2, 0)
	MovementLoopAddLocation(NPC, 87.38, -11.46, -40.43, 2, 0)
	MovementLoopAddLocation(NPC, 93.6, -12.11, -38.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.38, -12.35, -43.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.42, -12.16, -44.83, 2, 0)
	MovementLoopAddLocation(NPC, 70.15, -11.39, -47.78, 2, 0)
	elseif GetSpawnLocationID(NPC)== 133775660 then
	MovementLoopAddLocation(NPC, 37.15, -10.99, -74.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.45, -11.12, -76.6, 2, 0)
	MovementLoopAddLocation(NPC, 26.3, -11.01, -85.71, 2, 0)
	MovementLoopAddLocation(NPC, 21.52, -11.17, -92.57, 2, 0)
	MovementLoopAddLocation(NPC, 20.77, -10.81, -94.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.19, -11.25, -86.76, 2, 0)
	MovementLoopAddLocation(NPC, 52.37, -11.75, -64.77, 2, 0)
	MovementLoopAddLocation(NPC, 55.63, -11.73, -60.66, 2, 0)
	MovementLoopAddLocation(NPC, 65.55, -11.8, -51.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.05, -11.83, -41.37, 2, 0)
	MovementLoopAddLocation(NPC, 79.78, -11.9, -36.25, 2, 0)
	MovementLoopAddLocation(NPC, 91.84, -12.72, -24.07, 2, 0)
	MovementLoopAddLocation(NPC, 94.84, -12.82, -19.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.67, -11.7, -41.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.13, -10.7, -43.98, 2, 0)
	MovementLoopAddLocation(NPC, 77.92, -10.7, -48.69, 2, 0)
	MovementLoopAddLocation(NPC, 73.49, -10.7, -53.24, 2, 0)
	MovementLoopAddLocation(NPC, 56.44, -11.73, -75.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.37, -11.76, -70.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56, -11.81, -66.37, 2, 0)
	MovementLoopAddLocation(NPC, 54.56, -11.15, -58.85, 2, 0)
	MovementLoopAddLocation(NPC, 50.03, -10.53, -56.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.88, -11.59, -68.55, 2, 0)
	MovementLoopAddLocation(NPC, 42.91, -11.36, -72.92, 2, math.random(10, 20))	
	elseif GetSpawnLocationID(NPC)== 133775661 then
	MovementLoopAddLocation(NPC, 10.38, -11.83, -23.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.83, -12.19, -21.07, 2, 0)
	MovementLoopAddLocation(NPC, 37.41, -12.89, -14.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.24, -13.58, -11.59, 2, 0)
	MovementLoopAddLocation(NPC, 31.42, -14.54, -4.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.95, -14.56, -7.49, 2, 0)
	MovementLoopAddLocation(NPC, 39.81, -12.35, -25.56, 2, 0)
	MovementLoopAddLocation(NPC, 40.42, -11.9, -29.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.4, -12.07, -20.81, 2, 0)
	MovementLoopAddLocation(NPC, 33.33, -12.28, -8.54, 2, 0)
	MovementLoopAddLocation(NPC, 31.4, -12.54, 1.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.07, -12.63, -16.12, 2, 0)
	MovementLoopAddLocation(NPC, 34.42, -12.16, -26.6, 2, 0)
	MovementLoopAddLocation(NPC, 34.42, -11.84, -31.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.81, -13.9, -8.76, 2, 0)
	MovementLoopAddLocation(NPC, 40.69, -13.72, -1.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.07, -13.86, -6.36, 2, 0)
	MovementLoopAddLocation(NPC, 34.15, -12.79, -26.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.58, -12.18, -36.02, 2, 0)
	MovementLoopAddLocation(NPC, 27.91, -11.34, -44.21, 2, 0)
	MovementLoopAddLocation(NPC, 22.32, -10.66, -58.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.23, -10.7, -51.31, 2, 0)
	MovementLoopAddLocation(NPC, 30.16, -10.7, -15.94, 2, 0)
	MovementLoopAddLocation(NPC, 34.5, -11.78, -7.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.32, -12.24, -12.15, 2, 0)
	MovementLoopAddLocation(NPC, 31.2, -12.14, -23.38, 2, math.random(10, 20))
	elseif GetSpawnLocationID(NPC)== 133775662 then
	MovementLoopAddLocation(NPC, -5.21, -11.85, -86.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.86, -11.28, -81.38, 2, 0)
	MovementLoopAddLocation(NPC, -0.06, -11.34, -76.18, 2, 0)
	MovementLoopAddLocation(NPC, 4.95, -12.19, -64.09, 2, 0)
	MovementLoopAddLocation(NPC, 7.02, -12.64, -62.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.3, -12.16, -67.66, 2, 0)
	MovementLoopAddLocation(NPC, 0.36, -11.74, -81.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.54, -11.78, -81.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.78, -11.77, -73.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.94, -11.96, -74.92, 2, 0)
	MovementLoopAddLocation(NPC, 3.54, -11.83, -78.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.08, -12.28, -70.44, 2, 0)
	MovementLoopAddLocation(NPC, 3.73, -12.78, -62.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.3, -12.18, -69.53, 2, 0)
	MovementLoopAddLocation(NPC, -0.2, -12.16, -78.23, 2, 0)
	elseif GetSpawnLocationID(NPC)== 133775663 then
	MovementLoopAddLocation(NPC, 22.56, -11.88, -20.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.7, -12.23, -34.84, 2, 0)
	MovementLoopAddLocation(NPC, 49.3, -11.86, -42.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.54, -11.84, -33.61, 2, 0)
	MovementLoopAddLocation(NPC, 29.49, -12.29, -27.58, 2, 0)
	MovementLoopAddLocation(NPC, 19.55, -13.67, -18.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.07, -13.78, -20.2, 2, 0)
	MovementLoopAddLocation(NPC, 33.45, -12.86, -31.19, 2, 0)
	MovementLoopAddLocation(NPC, 36.82, -12.6, -35.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.65, -12.37, -32.74, 2, 0)
	MovementLoopAddLocation(NPC, 7.29, -11.83, -25.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.39, -12.12, -20.47, 2, 0)
	MovementLoopAddLocation(NPC, 16.63, -12.19, -17.97, 2, 0)
	MovementLoopAddLocation(NPC, 22.09, -13.2, -16.37, 2, 0)
	MovementLoopAddLocation(NPC, 25.78, -13.57, -14.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.55, -13.86, -9.53, 2, 0)
	MovementLoopAddLocation(NPC, 40.74, -13.66, -9.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.92, -13.5, -15.97, 2, 0)
	MovementLoopAddLocation(NPC, 46.97, -12.31, -26.32, 2, 0)
	MovementLoopAddLocation(NPC, 49.39, -11.72, -45.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.2, -10.6, -45.04, 2, 0)
	MovementLoopAddLocation(NPC, 36.92, -10.7, -43.17, 2, 0)
	MovementLoopAddLocation(NPC, 22.27, -12.42, -39.81, 2, math.random(10, 20))
	elseif GetSpawnLocationID(NPC)== 133775664 then
	MovementLoopAddLocation(NPC, 5.62, -13.58, 24.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.85, -13.36, 31.92, 2, 0)
	MovementLoopAddLocation(NPC, 15.31, -14.03, 43.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.67, -10.7, 73.89, 2, 0)
	MovementLoopAddLocation(NPC, -7.52, -11.02, 73.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.13, -10.7, 70.31, 2, 0)
	MovementLoopAddLocation(NPC, 15.94, -10.7, 66.6, 2, 0)
	MovementLoopAddLocation(NPC, 27.99, -10.98, 55.85, 2, 0)
	MovementLoopAddLocation(NPC, 35.1, -11.97, 49.11, 2, 0)
	MovementLoopAddLocation(NPC, 45.28, -11.33, 34.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.33, -11.22, 24.01, 2, 0)
	MovementLoopAddLocation(NPC, 60.21, -11.69, 18.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.96, -12.18, 20.86, 2, 0)
	MovementLoopAddLocation(NPC, 29.11, -12.25, 28.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.61, -11.69, 56.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.49, -12.15, 46.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.64, -10.7, 55.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.51, -11.69, 52.61, 2, 0)
	MovementLoopAddLocation(NPC, 62.19, -11.9, 48.36, 2, 0)
	MovementLoopAddLocation(NPC, 73.45, -11.8, 46.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.62, -12.14, 44.57, 2, 0)
	MovementLoopAddLocation(NPC, 80.91, -12.22, 42.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.11, -12.24, 39.52, 2, 0)
	MovementLoopAddLocation(NPC, 74.35, -12.5, 33.3, 2, 0)
	MovementLoopAddLocation(NPC, 76.42, -13.72, 18.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.03, -12.76, 24.35, 2, 0)
	MovementLoopAddLocation(NPC, 66.13, -12.47, 30.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.83, -11.2, 30.74, 2, 0)
	MovementLoopAddLocation(NPC, 46.79, -11.16, 30.9, 2, 0)
	MovementLoopAddLocation(NPC, 42.39, -11.78, 30.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.55, -12.51, 30.5, 2, 0)
	MovementLoopAddLocation(NPC, 29.54, -13.1, 28.66, 2, 0)
	MovementLoopAddLocation(NPC, 19.14, -13.39, 27.93, 2, 0)	    
	elseif GetSpawnLocationID(NPC)== 133775665 then
	MovementLoopAddLocation(NPC, -11.34, -13.74, 33.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.16, -11.89, 45.32, 2, 0)
	MovementLoopAddLocation(NPC, -11.23, -11.06, 56.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.38, -12.58, 47.43, 2, 0)
	MovementLoopAddLocation(NPC, 8.01, -14.31, 40.05, 2, 0)
	MovementLoopAddLocation(NPC, 10.49, -14.28, 34.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.45, -13.47, 26.37, 2, 0)
	MovementLoopAddLocation(NPC, 34.18, -13.78, 18.86, 2, 0)
	MovementLoopAddLocation(NPC, 39.85, -13.65, 13.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.97, -12.33, 16.33, 2, 0)
	MovementLoopAddLocation(NPC, 61.41, -12.43, 14.64, 2, 0)
	MovementLoopAddLocation(NPC, 67.96, -13.3, 13.4, 2, 0)
	MovementLoopAddLocation(NPC, 71.89, -13.37, 13.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.77, -12.88, 21.53, 2, 0)
	MovementLoopAddLocation(NPC, 64.08, -12.66, 34.98, 2, 0)
	MovementLoopAddLocation(NPC, 59.53, -12.77, 46.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.77, -12.25, 56.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.24, -11.26, 55.07, 2, 0)
	MovementLoopAddLocation(NPC, 39.89, -11.65, 50.25, 2, 0)
	MovementLoopAddLocation(NPC, 27.33, -13.47, 35.23, 2, 0)
	MovementLoopAddLocation(NPC, 23.47, -13.59, 30.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.88, -11.82, 55.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.44, -12.11, 51.43, 2, 0)
	MovementLoopAddLocation(NPC, 16.69, -13.15, 39.42, 2, 0)
	MovementLoopAddLocation(NPC, 8.97, -13.55, 30.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.7, -12.35, 37.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.14, -13.29, 39.54, 2, 0)
	MovementLoopAddLocation(NPC, 7.63, -14.62, 39.92, 2, 0)
	MovementLoopAddLocation(NPC, 12.03, -14.94, 41.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.37, -13.67, 37.24, 2, 0)	
	elseif GetSpawnLocationID(NPC)== 133775666 then
	MovementLoopAddLocation(NPC, 33.48, -10.96, 74.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.6, -10.7, 70.59, 2, 0)
	MovementLoopAddLocation(NPC, 58.77, -10.7, 56.39, 2, 0)
	MovementLoopAddLocation(NPC, 69.02, -10.7, 46.71, 2, 0)
	MovementLoopAddLocation(NPC, 73.1, -11.68, 41.79, 2, 0)
	MovementLoopAddLocation(NPC, 74.81, -12.09, 34.34, 2, 0)
	MovementLoopAddLocation(NPC, 75.22, -12.42, 28.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.41, -12.47, 21.72, 2, 0)
	MovementLoopAddLocation(NPC, 85.03, -12.45, 16.92, 2, 0)
	MovementLoopAddLocation(NPC, 94.04, -11.79, 6.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.39, -10.7, 14.39, 2, 0)
	MovementLoopAddLocation(NPC, 74.69, -10.7, 23.32, 2, 0)
	MovementLoopAddLocation(NPC, 68.55, -12.53, 29.8, 2, 0)
	MovementLoopAddLocation(NPC, 66.75, -12.8, 34.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.32, -12.79, 45.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.82, -12.15, 46.67, 2, 0)
	MovementLoopAddLocation(NPC, 52.6, -11.78, 46.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.15, -12.6, 49.1, 2, 0)
	MovementLoopAddLocation(NPC, 43.59, -12.49, 52.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.08, -11.7, 62.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.83, -11.2, 62.57, 2, 0)
	MovementLoopAddLocation(NPC, 57.24, -11.26, 63.9, 2, 0)
	MovementLoopAddLocation(NPC, 69.84, -11.27, 70.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.75, -10.96, 60.19, 2, 0)
	MovementLoopAddLocation(NPC, 48.09, -11.34, 49.78, 2, 0)
	MovementLoopAddLocation(NPC, 42.73, -11.55, 45.39, 2, 0)
	MovementLoopAddLocation(NPC, 28.85, -13.13, 30.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.79, -13.52, 21.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.06, -13.64, 21.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.29, -13.61, 15.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.88, -11.76, 40.44, 2, 0)
	end
end
	
	
	
	
	
	
	
	