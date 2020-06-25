--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout433130.lua
	Script Purpose	:	Waypoint Path for alostscout433130.lua
	Script Author	:	Jabantiz (movement by Rylec)
	Script Date	:	06-01-2020 10:07:28 
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
	MovementLoopAddLocation(NPC, 266.07, -6.4, 122.6, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.41, -6.56, 111.8, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.32, -6.1, 117.88, 2, 0)
	MovementLoopAddLocation(NPC, 249.49, -5.8, 122.57, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 246.44, -5.71, 123.33, 2, 0)
	MovementLoopAddLocation(NPC, 236.65, -6, 121.14, 2, 0)
	MovementLoopAddLocation(NPC, 233.2, -6, 119.19, 2, 0)
	MovementLoopAddLocation(NPC, 230.79, -6, 119.16, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 234.62, -6.5, 109.27, 2, 0)
	MovementLoopAddLocation(NPC, 237.2, -6.76, 106.31, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 242.25, -7.15, 95.51, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 247.27, -6.98, 84.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 253.37, -6.81, 84.79, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 262.26, -6.83, 111.44, 2, 0)
	MovementLoopAddLocation(NPC, 263.16, -6.83, 117.1, 2, 0)
	MovementLoopAddLocation(NPC, 264.4, -6.59, 120.34, 2, 0)
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
	if chance <= 10 then
		local choice = math.random(1, 3)
		if choice == 1 then
  PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_aggro_gm_2f9edb08.mp3", "You'll never get the drop on a halfling!", "", 252597960, 759690529, Spawn)
                elseif choice == 2 then
  PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_aggro_gm_7434777c.mp3", "Help! Intruders! Someone get the guard!", "", 2664487555, 1568864156, Spawn)
               else 
  PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_aggro_gm_7b251faa.mp3", "Try to sneak into my home, will ya!", "", 100218096, 392363658, Spawn)
end
  end
     end

