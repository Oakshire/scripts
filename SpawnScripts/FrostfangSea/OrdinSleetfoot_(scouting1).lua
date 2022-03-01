--[[
	Script Name	: SpawnScripts/FrostfangSea/OrdinSleetfoot_(scouting1).lua
	Script Purpose	: Ordin Sleetfoot 
	Script Author	: theFoof
	Script Date	: 2013.06.11
	Script Notes	: 
--]]

local GoodDistraction = 61

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 15, "Ambush", "Ambush")
end

function respawn(NPC)
	spawn(NPC)
end

function Ambush(NPC, Spawn)
	if HasQuest(Spawn, GoodDistraction) then
		if GetQuestStep(Spawn, GoodDistraction) == 2 then
			AddSpawnAccess(NPC, Spawn)
			local mob1 = SpawnByLocationID(GetZone(Spawn), 572712)
			local mob2 = SpawnByLocationID(GetZone(Spawn), 34004)
			SetTempVariable(mob1, "linked", mob2)
			SetTempVariable(mob2, "linked", mob1)
			Attack(mob1, Spawn)
			Attack(mob2, Spawn)
		elseif GetQuestStep(Spawn, GoodDistraction) == 3 then
			AddSpawnAccess(NPC, Spawn)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if GetQuestStep(Spawn, GoodDistraction) == 2 then
		PlayFlavor(NPC, "", "Help me, please!", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, GoodDistraction) == 3 then
		AddTimer(NPC, 2000, "HideSpawn", 1, Spawn)
		PlayFlavor(NPC, "ordin_sleetfoot/halas/cragged_spine/ordin_sleetfoot_one001.mp3", "", "", 678640011, 1694488257, Spawn)
		AddConversationOption(conversation, "Be more careful next time.")
		AddConversationOption(conversation, "I will protect you no matter what.")
		StartConversation(conversation, NPC, Spawn, "Thanks for the back up there, I thought this was a good spot to hide.  Well, shall we continue on?  I'll meet you further into the cavern.  Keep up the good work, and I'll be able to scout around undetected.")
	end
end

function HideSpawn(NPC, Spawn)
	SetStepComplete(Spawn, GoodDistraction, 3)
	RemoveSpawnAccess(NPC, Spawn)
end