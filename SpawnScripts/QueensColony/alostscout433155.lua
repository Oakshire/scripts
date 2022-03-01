--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout433155.lua
	Script Purpose	:	Waypoint Path for alostscout433155.lua
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
	math.randomseed(os.time())
	voice = math.random (1,3)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1024.mp3", "", "hello", 0, 0, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 255.88, -4.57, 63.03, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.45, -6.62, 73.89, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 232.39, -6.32, 92.67, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 261.02, -6.43, 92.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 245.86, -7.23, 92.69, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 245.98, -7.06, 87.3, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 254.7, -6.15, 71.17, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 255.68, -6.41, 75.43, 2, 0)
	MovementLoopAddLocation(NPC, 254.66, -6.83, 98.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 249.6, -5.79, 122.85, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 241.2, -6.88, 87.35, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.47, -6.99, 84.59, 2, math.random(14, 28))
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