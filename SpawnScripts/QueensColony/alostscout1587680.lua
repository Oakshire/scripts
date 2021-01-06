--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout1587680.lua
	Script Purpose	:	Waypoint Path for alostscout1587680.lua
	Script Author	:	Jabantiz (movement by Rylec and play flavor by Premierio015)
	Script Date	:	06-01-2020 10:07:23 
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

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1001.mp3", "", "hello", 0, 0, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 238.51, -6.76, 82.01, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 238.98, -6.52, 77.68, 2, 0)
	MovementLoopAddLocation(NPC, 244.77, -5.56, 68.4, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 252.05, -6.44, 73.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 242.52, -6.67, 78.94, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 264.93, -6.83, 106.43, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 245.82, -6.04, 71.11, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 249.56, -6.88, 76.67, 2, math.random(14, 28))
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
	if not HasLanguage(Spawn, 1) then  -- IF PLAYER DOESN'T SPEAK HALASIAN THEN HE WILL HEAR THOSE VOICEOVERS.
		local choice = math.random(1, 2)
		if choice == 1  then
          PlayFlavor(NPC, "voiceover/english/optional3/barbarian_outland/ft/barbarian/barbarian_outland_1_garbled_gf_b80c3123.mp3", "Asfkher van baed rijs prakti kjen", "", 3736519483, 298405430, Spawn, 1)
                else
          PlayFlavor(NPC, "voiceover/english/optional3/barbarian_outland/ft/barbarian/barbarian_outland_1_garbled_gf_b0cb46d4.mp3", "Neit te geb ruiken, wat weg hout u hetten", "", 3553301683, 4073612943, Spawn, 1)
          end
       elseif HasLanguage(Spawn, 1) then
               local choice = math.random(1, 2)
               if choice == 1  then
            PlayFlavor(NPC, "voiceover/english/optional3/barbarian_outland/ft/barbarian/barbarian_outland_1_aggro_gf_5cbe779b.mp3", "Enemies approach!", "", 991095436, 863644706, Spawn)
              else
            PlayFlavor(NPC, "voiceover/english/optional3/barbarian_outland/ft/barbarian/barbarian_outland_1_aggro_gf_9ed7a064.mp3", "This is what we were trained for!  Do not fail in your duty!", "", 3130720919, 1154579014, Spawn)      
 end
    end
       end