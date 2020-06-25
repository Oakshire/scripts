--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout1587675.lua
	Script Purpose	:	Waypoint Path for alostscout1587675.lua
	Script Author	:	Jabantiz (movement by Rylec)
	Script Date	:	06-01-2020 10:07:47 
	Script Notes	:	Locations collected from Live
--]]

local JoiningTheForwardRanks = 163

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
	MovementLoopAddLocation(NPC, 241.86, -6.9, 87.35, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 269.78, -6.02, 103.79, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 240.82, -6.95, 103.57, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 244.81, -6.57, 114.36, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 257.27, -6.83, 103.49, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 253.19, -6.83, 101.66, 2, 0)
	MovementLoopAddLocation(NPC, 233.5, -6.26, 82.13, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 253.93, -6.83, 110.93, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 270.93, -5.69, 106.52, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 256.6, -6.58, 82.51, 2, 0)
	MovementLoopAddLocation(NPC, 253.42, -6.08, 70.88, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.4, -6.8, 103.48, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 243.34, -7.22, 98.12, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 251.08, -6.1, 120.35, 2, math.random(14, 28))
end

function casted_on(NPC, Spawn, Message)
	local Cleric = GetSpawn(NPC, 2530111)
	if Message == "Divine Smite" and CompareSpawns(Spawn, Cleric) then
		local newScout = SpawnMob(GetZone(NPC), 2530196, false, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))
		if newScout ~= nil then
			CopySpawnAppearance(newScout, NPC)
			SpawnSet(newScout, "visual_state", "0")
                        SpawnSet(newScout, "attackable", "false")
			AddTimer(newScout, 5000, "Speak")
		end
		local mostHated = GetMostHated(NPC)
		if mostHated ~= nil and IsPlayer(mostHated) then
			if HasQuest(mostHated, JoiningTheForwardRanks) and GetQuestStep(mostHated, JoiningTheForwardRanks) == 2 then
				AddStepProgress(mostHated, JoiningTheForwardRanks, 2, 1)
			end
		end
		Despawn(NPC)
	end
end


function aggro(NPC, Spawn)
local chance = math.random(1, 100)
	if chance <= 50 then
		local choice = math.random(1, 2)
		if choice == 1 then
  PlayFlavor(NPC, "voiceover/english/froglok_base_1/ft/froglok/froglok_base_1_1_aggro_gm_12dbb8ad.mp3", "Caught thee red handed, did I?", "", 2731512393, 911400384)
               else
  PlayFlavor(NPC, "voiceover/english/froglok_base_1/ft/froglok/froglok_base_1_1_aggro_gm_ad1fc682.mp3", "Looks as if I'll get my workout today.", 1559839053, 2456776330)
end
   end
      end