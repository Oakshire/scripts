--[[
	Script Name		:	SpawnScripts/FrostfangSea/OreColdstein.lua
	Script Purpose	:	movement path for ore coldstein
	Script Author	:	theFoof
	Script Date		:	2013.9.26
	Script Notes	:	
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 5, "InRange")
	MovementLoopAddLocation(NPC, -163.4, 148.64, 7.9, 2, 0)
	MovementLoopAddLocation(NPC, -166.86, 148.52, 33.36, 2, 0)
	MovementLoopAddLocation(NPC, -141.97, 147.09, 45.75, 2, 0)
	MovementLoopAddLocation(NPC, -111.31, 146.5, 17.37, 2, 0)
	MovementLoopAddLocation(NPC, -84.11, 146.36, 25.1, 2, 0)
	MovementLoopAddLocation(NPC, -77.74, 146.44, 19.53, 2, 0)
	MovementLoopAddLocation(NPC, -91.21, 146.53, -2.92, 2, 0)
	MovementLoopAddLocation(NPC, -67.78, 146.96, -21.08, 2, 0)
	MovementLoopAddLocation(NPC, -17.86, 146.43, -20.44, 2, 0)
	MovementLoopAddLocation(NPC, -6.99, 146.23, -50.87, 2, 0)
	MovementLoopAddLocation(NPC, -76.01, 146.74, -69.34, 2, 0)
	MovementLoopAddLocation(NPC, -76.38, 152.58, -103.59, 2, 0)
	MovementLoopAddLocation(NPC, -58.53, 153.69, -121.51, 2, 0)
	MovementLoopAddLocation(NPC, -39.7, 153.11, -115.98, 2, 3)
	MovementLoopAddLocation(NPC, -46.91, 153.78, -132.33, 2, 0)
	MovementLoopAddLocation(NPC, -63.83, 153.06, -144.21, 2, 0)
	MovementLoopAddLocation(NPC, -109.03, 150.91, -145.99, 2, 0)
	MovementLoopAddLocation(NPC, -109.43, 152.32, -121.26, 2, 0)
	MovementLoopAddLocation(NPC, -76.97, 152.54, -102.32, 2, 0)
	MovementLoopAddLocation(NPC, -80.46, 146.45, -75.78, 2, 0)
	MovementLoopAddLocation(NPC, -109.02, 147.1, -63.48, 2, 0)
	MovementLoopAddLocation(NPC, -94.14, 145.53, -33.29, 2, 0)
	MovementLoopAddLocation(NPC, -109.89, 146.24, -12.32, 2, 0)
	MovementLoopAddLocation(NPC, -129.26, 147.06, 3.77, 2, 0)
	MovementLoopAddLocation(NPC, -142.7, 148.73, 4.83, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC)
	if GetTempVariable(NPC, "chat_timer") == nil then
		local choice = math.random(1,4)
		if choice == 1 then
			PlayFlavor(NPC, "", "Comin' through!", "nod", 1689589577, 4560189)
		elseif choice == 2 then
			PlayFlavor(NPC, "", "Coldain with a purpose!", "hello", 0, 0)
		elseif choice == 3 then
			PlayFlavor(NPC, "", "Juss passin' through!", "hello", 0, 0)
		elseif choice == 4 then
			PlayFlavor(NPC, "", "BURP!  'Scuse me!", "hello", 0, 0)
		end
		SetTempVariable(NPC, "chat_timer", "1")
		AddTimer(NPC, 30000, "ChatTimer")
	end
end

function hailed(NPC)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
end

function ChatTimer(NPC)
	SetTempVariable(NPC, "chat_timer", nil)
end