--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout1587670.lua
	Script Purpose	:	Waypoint Path for alostscout1587670.lua
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
	math.randomseed(os.time())
	voice = math.random (1,3)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1063.mp3", "", "hello", 0, 0, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 252.02, -6.82, 100.88, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 231.72, -6.33, 103.92, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 245.77, -6.73, 111.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 238.5, -6.76, 100.84, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 252.09, -6.75, 81.84, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 244.83, -6.18, 119.17, 2, 0)
	MovementLoopAddLocation(NPC, 242.31, -5.07, 125.2, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 263.27, -6.83, 116.91, 2, math.random(14, 28))
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
