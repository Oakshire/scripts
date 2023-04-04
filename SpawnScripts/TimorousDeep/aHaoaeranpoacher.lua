--[[
	Script Name	: SpawnScripts/TimorousDeep/aHaoaeranpoacher.lua
	Script Purpose	: a Haoaeran poacher spawn script
	Script Author	: premierio015
	Script Date	: 03.04.2023
	Script Notes	: 
--]]

local crablist = { 35182, 34566, 34575, 34752, 34873, 35006, 35182, 35355, 35470, 35506, 35527, 35535, 35544, 35550, 35551, 35554, 35555, 35581, 35635, 35698, 35768, 35818, 35848, 35867, 35889, 35918, 35943, 35948, 35951, 35960, 35971, 35981 }; -- array with crabs location ID's
function prespawn(NPC)
for k, v in ipairs(crablist) do
AddSpawnProximity(NPC, v,  1, 5, "InRange")
  end
end

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
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC)
local crab = GetSpawn(NPC, 2630018)
if crab ~= nil then
Attack(NPC, crab)
end
   end






function killed(NPC, Spawn)
	chance = MakeRandomInt(1, 100)
	if chance <= 50 then
		PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_victory_9f0466af.mp3", "Score one for the spiroc!", "", 2170775157, 841438160)
	end
end

function aggro(NPC, Spawn)
	chance = MakeRandomInt(1, 100)
	if chance <= 50 then
	    option = MakeRandomInt(1, 2)
	    if option == 1 then 
		PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_aggro_64bf7f6f.mp3", "I'm taking this one down!", "", 1322142455, 2874795880)
		else
		PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_aggro_ef272489.mp3", "Hostile at twelve o'clock!", "", 1038256671, 3948487543)
	   end
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
