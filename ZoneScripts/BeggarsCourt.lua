--[[
	Script Name	: ZoneScripts/BeggarsCourt.lua
	Script Purpose	: 
	Script Author	:  (unknown author) (Updated by Cynnar)
	Script Date	: 
	Script Notes	: 
--]]

local HALFELF_MENTOR_QUEST_2 = 308 -- Dirty Work
local HALFELF_MENTOR_QUEST_4 = 317 -- Thaen Sevellos
local MUFFLED_VOICES = 1370104
local A_ROMMULS_LOYALIST = 1370067
local THAEN_SEVELLOS = 1370066

function init_zone_script(Zone)

	SetLocationProximityFunction(Zone, 82.78, -7.08, 112.83, 10, "InRange", "LeaveRange")
	SetLocationProximityFunction(Zone, 70.43, 5.02, -22.17, 20, "InRangeQuest4", "LeaveRange")
end

function InRange(Zone, Spawn)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_2) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_2) == 2 then
		MuffledVoice = GetSpawn(Spawn, MUFFLED_VOICES)
		if MuffledVoice ~= nil then
			conversation = CreateConversation()
			PlayFlavor(MuffledVoice, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice000.mp3", "", "", 2566882511, 3306688521, Spawn)
			AddConversationOption(conversation, "[continue listening]", "dlg_18_1")
			StartConversation(conversation, MuffledVoice, Spawn, "Do you have him?")
		end
	end
end

function InRangeQuest4(Zone, Spawn)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_4) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_4) == 1 then
		if GetSpawn(Spawn, A_ROMMULS_LOYALIST) == nil then
			-- Two Rommuls loyalists
			choice = math.random(1, 2)
			if choice == 1 then
				--SpawnMob(Zone, A_ROMMULS_LOYALIST, false, 82.29, 5.02, -10.46, 259)
				--SpawnMob(Zone, A_ROMMULS_LOYALIST, false, 80.86, 5.02, -7.66, 276)
				SpawnByLocationID(GetZone(Spawn), 403036)
				SpawnByLocationID(GetZone(Spawn), 403037)
			elseif choice == 2 then
				--SpawnMob(Zone, A_ROMMULS_LOYALIST, false, 82.29, 5.02, -10.46, 259)
				--SpawnMob(Zone, A_ROMMULS_LOYALIST, false, 80.86, 5.02, -7.66, 276)
				SpawnByLocationID(GetZone(Spawn), 403036)
				SpawnByLocationID(GetZone(Spawn), 403037)
			end

			-- Thaen Sevellos
			--SpawnMob(Zone, THAEN_SEVELLOS, false, 86.86, 5.02, -9.76, 81)
			SpawnByLocationID(GetZone(Spawn), 403035)
		end
	end
end

function LeaveRange(zone, Spawn)
end