--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout1587673.lua
	Script Purpose	:	Waypoint Path for alostscout1587673.lua
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

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1016.mp3", "", "hello", 0, 0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 249.69, -7.13, 90.12, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 236.96, -6.75, 103, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 253.48, -6.83, 114.37, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 235.95, -6.62, 81.99, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 242.95, -6.04, 71.75, 2, 0)
	MovementLoopAddLocation(NPC, 251.16, -4.44, 63.28, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 259.82, -6.71, 95.32, 2, 0)
	MovementLoopAddLocation(NPC, 263.82, -6.83, 103.63, 2, 0)
	MovementLoopAddLocation(NPC, 267.3, -6.36, 117.07, 2, 0)
	MovementLoopAddLocation(NPC, 267.24, -6.37, 119.68, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 267.12, -6.39, 116.95, 2, 0)
	MovementLoopAddLocation(NPC, 263.42, -6.83, 109.83, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 254.81, -6.83, 110.92, 2, 0)
	MovementLoopAddLocation(NPC, 243.31, -6.97, 108.92, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 263.86, -6, 127.71, 2, 0)
	MovementLoopAddLocation(NPC, 268.44, -6.3, 130.65, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 254.59, -6, 125.44, 2, 0)
	MovementLoopAddLocation(NPC, 251.4, -5.88, 123.91, 2, 0)
	MovementLoopAddLocation(NPC, 247.09, -5.94, 122.34, 2, math.random(14, 28))
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