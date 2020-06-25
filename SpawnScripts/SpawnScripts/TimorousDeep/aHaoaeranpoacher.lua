--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	choice = math.random(1, 4)
	if choice == 1 then
		clockwise1(NPC)
	elseif choice == 2 then
		clockwise2(NPC)
	elseif choice == 3 then
		counter_clockwise1(NPC)
	elseif choice == 4 then
		counter_clockwise2(NPC)
	end
	
	AddTimer(NPC, 10000, "InitialWait")
end

function respawn(NPC)
	spawn(NPC)
end

function InitialWait(NPC)
	AddTimer(NPC, 1000, "CheckForCrabs")
end

function CheckForCrabs(NPC)
	Crab = GetSpawn(NPC, 2630015)
	if GetDistance(NPC, Crab) <= 5 and IsAlive(Crab) then
		KillSpawn(Crab, NPC, 1)
	else
		Crab2 = GetSpawn(NPC, 2630016)
		if GetDistance(NPC, Crab2) <= 5 and IsAlive(Crab2) then
			KillSpawn(Crab2, NPC, 1)
		end
	end

	AddTimer(NPC, 10000, "SetUpCheck")
end

function SetUpCheck(NPC)
	AddTimer(NPC, 1000, "CheckForCrabs")
end

function aggro(NPC, Spawn)
	chance = math.random(1, 100)
	if chance <= 30 then
		PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_victory_9f0466af.mp3", "Score one for the spiroc!", "", 2170775157, 841438160)
	end
end

function killed(NPC, Spawn)
	chance = math.random(1, 100)
	if chance <= 30 then
		PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_aggro_64bf7f6f.mp3", "I'm taking this one down!", "", 1322142455, 2874795880)
	end
end

function clockwise1(NPC)
	x = GetX(NPC)
	y = GetY(NPC)
	z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 7 , y, z - 8 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 5 , y, z - 10, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 10, y, z + 9 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 5 , y, z + 8 , 2, math.random(5, 15))
end

function clockwise2(NPC)
	x = GetX(NPC)
 	y = GetY(NPC)
	z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 2 , y, z - 8 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 7 , y, z - 5 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z + 6 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 9 , y, z + 1 , 2, math.random(5, 15))
end

function counter_clockwise1(NPC)
	x = GetX(NPC)
	y = GetY(NPC)
	z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 7 , y, z + 8 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 5 , y, z + 10, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 10, y, z - 9 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 5 , y, z - 8 , 2, math.random(5, 15))
end

function counter_clockwise2(NPC)
	x = GetX(NPC)
	y = GetY(NPC)
	z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 2 , y, z + 8 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 7 , y, z + 5 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z - 6 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 9 , y, z - 1 , 2, math.random(5, 15))
end
