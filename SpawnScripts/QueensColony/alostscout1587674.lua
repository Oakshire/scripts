--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout1587674.lua
	Script Purpose	:	Waypoint Path for alostscout1587674.lua
	Script Author	:	Jabantiz (movement by Rylec)
	Script Date	:	06-01-2020 10:07:40 
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
	MovementLoopAddLocation(NPC, 255.92, -6.51, 79.23, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 267.99, -6.16, 111.84, 2, 0)
	MovementLoopAddLocation(NPC, 268.45, -6.08, 114.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 267.84, -6.25, 120.27, 2, 0)
	MovementLoopAddLocation(NPC, 266.01, -6.08, 125.18, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 263.38, -6.82, 117.58, 2, 0)
	MovementLoopAddLocation(NPC, 259.79, -6.53, 92.73, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 256.38, -6.3, 77.75, 2, 0)
	MovementLoopAddLocation(NPC, 255.53, -6.09, 70.8, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 249.65, -6.81, 100.96, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 244.45, -5.85, 121.32, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 263.6, -6.83, 106.32, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 249.81, -5.14, 127.92, 2, math.random(14, 28))
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
