--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout433089.lua
	Script Purpose	:	Waypoint Path for alostscout433089.lua
	Script Author	:	Jabantiz (movement by Rylec)
	Script Date	:	06-01-2020 10:07:17 
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
	MovementLoopAddLocation(NPC, 242.24, -6.97, 106.38, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 244.65, -7.22, 90.01, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 243.37, -6.35, 116.19, 2, 0)
	MovementLoopAddLocation(NPC, 247.17, -6.13, 120.43, 2, 0)
	MovementLoopAddLocation(NPC, 263.4, -6.36, 122.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 238.97, -6.43, 111.41, 2, 0)
	MovementLoopAddLocation(NPC, 236.25, -6.67, 109.33, 2, 0)
	MovementLoopAddLocation(NPC, 227.28, -6.15, 106.29, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 244.64, -4.43, 63.82, 2, 0)
	MovementLoopAddLocation(NPC, 247, -4.46, 60.16, 2, 0)
	MovementLoopAddLocation(NPC, 255.99, -4.3, 35.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 238.51, -6.76, 100.79, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.54, -6.93, 95.39, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 252.13, -6.72, 114.25, 2, math.random(14, 28))
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
