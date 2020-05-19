--[[
	Script Name	: SpawnScripts/Oakmyst/Gilrix.lua 
	Script Purpose	: Spawn script for GIlrix
	Script Author	: Scatman
	Script Date	: 2009.05.03
	Script Notes	: 
--]]

local QUEST_FROM_CHARLIN_4 = 207
local FULKOIR_RUN_SPEED = 10

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC, Spawn)
	if HasQuest(Spawn, QUEST_FROM_CHARLIN_4) and GetQuestStep(Spawn, QUEST_FROM_CHARLIN_4) == 1 then
		Fulkoir = GetSpawn(Spawn, 1950083)
		if Fulkoir ~= nil then
			PlayFlavor(Fulkoir, "voiceover/english/tutorial_revamp/fulkoir_haggleton/qey_adv01_oakmyst_revamp/qst_fulkoir_gone_ff0a041c.mp3", "I'd have to be five times as crazy as I already am to stay here!", "", 2327597972, 1883003048)
			MovementLoopAddLocation(Fulkoir, 990.39, 12.85, -270.46, FULKOIR_RUN_SPEED, 0)
			MovementLoopAddLocation(Fulkoir, 967.24, 8.43, -295.91, FULKOIR_RUN_SPEED, 0)
			MovementLoopAddLocation(Fulkoir, 945.64, 4.69, -314.65, FULKOIR_RUN_SPEED, 0)
			MovementLoopAddLocation(Fulkoir, 942.97, 2.22, -350.52, FULKOIR_RUN_SPEED, 0)
			MovementLoopAddLocation(Fulkoir, 996.30, 2.98, -348.56, FULKOIR_RUN_SPEED, 0, DespawnFulkoir)
		end
	end
end