--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout433112.lua
	Script Purpose	:	Waypoint Path for alostscout433112.lua
	Script Author	:	Jabantiz (movement by Rylec)
	Script Date	:	06-01-2020 10:07:20 
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
	MovementLoopAddLocation(NPC, 234.61, -6.5, 106.29, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 233.32, -6.37, 101.36, 2, 0)
	MovementLoopAddLocation(NPC, 233.37, -6.37, 98.12, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 230.55, -6.32, 94.35, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 232.12, -6.33, 98.42, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 233.32, -6.37, 100.35, 2, 0)
	MovementLoopAddLocation(NPC, 246.83, -6.79, 108.87, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 236.07, -6.27, 114.62, 2, 0)
	MovementLoopAddLocation(NPC, 230.68, -6, 118.07, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 234.23, -6.46, 108.93, 2, 0)
	MovementLoopAddLocation(NPC, 245.88, -7.23, 95.62, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 234.63, -5.73, 122.84, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.97, -6.84, 103.84, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 259.37, -6.59, 90.73, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 250.99, -6.82, 106.11, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 240.85, -6.56, 76.36, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 237.1, -6.29, 73.77, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 236.1, -6.66, 100.71, 2, 0)
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