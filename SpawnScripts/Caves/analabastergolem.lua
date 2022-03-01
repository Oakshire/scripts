--[[
	Script Name	: SpawnScripts/Caves/analabastergolem.lua
	Script Purpose	: an alabaster golem 
	Script Author	: Scatman
	Script Date	: 2009.11.19
	Script Notes	: 
--]]

local MIN_TIME = 3000
local MAX_TIME = 10000

function spawn(NPC)
	local sli = GetSpawnLocationID(NPC)
	if sli == 388305 or sli == 388308 or sli == 147864 or sli == 159970 or sli == 159971 or sli == 159972 or sli == 147866 or sli == 147867 then
		AddTimer(NPC, math.random(MIN_TIME, MAX_TIME), "MakeAttack")
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function MakeAttack(NPC)
	PlayFlavor(NPC, "", "", "attack", 0, 0)
	AddTimer(NPC, math.random(MIN_TIME, MAX_TIME), "MakeAttack")
end

--[[
PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_7c1e7a03.mp3", "Oerbet aertres nuavalen sulana", "", 294229851, 323943279)
PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_48632408.mp3", "Boona vas kontrella", "", 2577927628, 312715019)
PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_e0fead4d.mp3", "Pintoota kolata eldina mastarina", "", 2947217871, 3677590207)
PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_ba1c8454.mp3", "Ervmenta oolaves kor'tenza", "", 422166849, 245170409)
PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_garbled_7c1e7a03.mp3", "Oerbet aertres nuavalen sulana", "", 2422828991, 2611697218)
--]]