--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout1587672.lua
 	Script Purpose	:	Waypoint Path for alostscout1587672.lua
	Script Author	:	Jabantiz (movement by Rylec)
	Script Date	:	06-01-2020 10:07:55 
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
	MovementLoopAddLocation(NPC, 239.64, -5.69, 68.34, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.83, -6.35, 72.16, 2, 0)
	MovementLoopAddLocation(NPC, 238.78, -6.51, 77.16, 2, 0)
	MovementLoopAddLocation(NPC, 239.68, -6.86, 87.27, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.4, -6.48, 112.53, 2, 0)
	MovementLoopAddLocation(NPC, 251.09, -5.49, 125.34, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 247.84, -5.79, 123.56, 2, 0)
	MovementLoopAddLocation(NPC, 242.21, -6.23, 117.13, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 256.14, -6.83, 98.22, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 231.79, -6.33, 106.39, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 246.94, -6.97, 82.35, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 264.78, -6.52, 98.25, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 244.72, -5.27, 125.24, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 262.13, -6.78, 98.24, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 235.95, -6.65, 89.92, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.83, -6.35, 72.44, 2, 0)
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
		local choice = math.random(1, 3)
		if choice == 1 then
  PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_aggro_gf_e78cd055.mp3", "You covered your approach well, but it doesn't matter much now.", "", 2593953869, 4106947814, Spawn)
                elseif choice == 2 then
  PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_aggro_gf_b9683a31.mp3", "Winds carried your voice long ago. I'm prepared now.", "", 1982146573, 3859905890, Spawn)
               else
  PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_aggro_gf_8fcdd59.mp3", "You ruined your own lands, but you won't ruin these.", "", 2300111785, 2561177665, Spawn)
 end
    end
       end
