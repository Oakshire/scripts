--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout1587671.lua
	Script Purpose	:	Waypoint Path for alostscout1587671.lua
	Script Author	:	Jabantiz (movement by Rylec)
	Script Date	:	06-01-2020 10:07:38 
	Script Notes	:	Locations collected from Live
--]]

local JoiningTheForwardRanks = 163

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	voice = math.random (1,3)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1063.mp3", "", "hello", 0, 0, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 258.39, -6.83, 117.19, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 249.73, -6.42, 114.59, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 247.31, -7.03, 100.77, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 262.09, -6.43, 92.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 264, -6.44, 95.92, 2, 0)
	MovementLoopAddLocation(NPC, 268.31, -6.15, 117.21, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 257.26, -6.83, 87.34, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 246.07, -6.66, 111.96, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.46, -7.24, 90.23, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 245.91, -6.38, 117.21, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 250.97, -7.01, 95.44, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 237.12, -6.05, 117.1, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 237.03, -6.69, 110.39, 2, 0)
	MovementLoopAddLocation(NPC, 235, -6.54, 103.17, 2, 0)
	MovementLoopAddLocation(NPC, 232.87, -6.33, 100.01, 2, 0)
	MovementLoopAddLocation(NPC, 232.07, -6.32, 92.76, 2, math.random(14, 28))
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