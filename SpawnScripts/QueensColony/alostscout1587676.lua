--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout1587676.lua
	Script Purpose	:	Waypoint Path for alostscout1587676.lua
	Script Author	:	Jabantiz (movement by Rylec)
	Script Date	:	06-01-2020 10:07:25 
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
	MovementLoopAddLocation(NPC, 229.84, -6.32, 106.19, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 235.77, -6.62, 103.84, 2, 0)
	MovementLoopAddLocation(NPC, 248.5, -7.24, 89.84, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 251, -4.45, 63.2, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 252.79, -5.32, 66.46, 2, 0)
	MovementLoopAddLocation(NPC, 257.3, -6.12, 77.3, 2, 0)
	MovementLoopAddLocation(NPC, 258.77, -6.41, 85.55, 2, 0)
	MovementLoopAddLocation(NPC, 268.45, -6.04, 106.32, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 247.01, -6.29, 117.66, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 265.59, -6.68, 106.36, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 243.27, -6.97, 109.15, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 252.34, -6.82, 106.42, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 257.23, -6, 122.68, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 255.8, -6, 122.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 254, -6.72, 118.05, 2, 0)
	MovementLoopAddLocation(NPC, 237.08, -6.76, 100.93, 2, math.random(14, 28))
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
  PlayFlavor(NPC, "voiceover/english/froglok_base_1/ft/froglok/froglok_base_1_1_aggro_gm_12dbb8ad.mp3", "Caught thee red handed, did I?", "", 2731512393, 911400384, Spawn)
               else
  PlayFlavor(NPC, "voiceover/english/froglok_base_1/ft/froglok/froglok_base_1_1_aggro_gm_ad1fc682.mp3", "Looks as if I'll get my workout today.", 1559839053, 2456776330, Spawn)
end
   end
      end