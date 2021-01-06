--[[
        Script Name     :       SpawnScripts/QueensColony/alostscout1587679.lua
	Script Purpose	:	Waypoint Path for alostscout1587679.lua
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
	MovementLoopAddLocation(NPC, 237.25, -6.06, 69.19, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 261.3, -6.83, 116.18, 2, 0)
	MovementLoopAddLocation(NPC, 266.13, -6.25, 123.84, 2, 0)
	MovementLoopAddLocation(NPC, 268.31, -6.28, 128.79, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 248.3, -6.11, 117.79, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 237.61, -6.63, 110.49, 2, 0)
	MovementLoopAddLocation(NPC, 233.43, -6.37, 109.2, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 230.92, -6, 119.56, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 234.78, -6, 118.03, 2, 0)
	MovementLoopAddLocation(NPC, 259.87, -6.83, 114.2, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 243.39, -6.73, 111.49, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 255.82, -6.39, 76.31, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 247.42, -6.17, 71.88, 2, 0)
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