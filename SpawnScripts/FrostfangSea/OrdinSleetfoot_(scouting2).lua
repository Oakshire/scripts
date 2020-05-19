--[[
	Script Name	: SpawnScripts/FrostfangSea/OrdinSleetfoot_(scouting2).lua
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
		if GetQuestStep(Spawn, GoodDistraction) == 4 then
			AddSpawnAccess(NPC, Spawn)
			local mob1 = SpawnByLocationID(GetZone(Spawn), 572713)
			local mob2 = SpawnByLocationID(GetZone(Spawn), 572714)
			SetTempVariable(mob1, "linked", mob2)
			SetTempVariable(mob2, "linked", mob1)
			Attack(mob1, Spawn)
			Attack(mob2, Spawn)
		elseif GetQuestStep(Spawn, GoodDistraction) == 5 then
			AddSpawnAccess(NPC, Spawn)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if GetQuestStep(Spawn, GoodDistraction) == 4 then
		PlayFlavor(NPC, "", "Help me, please!", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, GoodDistraction) == 5 then
		PlayFlavor(NPC, "ordin_sleetfoot/halas/cragged_spine/ordin_sleetfoot_two001.mp3", "", "", 70062741, 2568038023, Spawn)
		AddConversationOption(conversation, "If you are done, we should head back.  Thirin will want a report of what's in these caves.", "Quest1Chat_1")
		StartConversation(conversation, NPC, Spawn, "Thank you again.  Thirin is right, ye are dependable and I couldn't have done this without ye.")
	end
end

function Quest1Chat_1(NPC, Spawn)
	AddTimer(NPC, 2000, "HideSpawn", 1, Spawn)	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "ordin_sleetfoot/halas/cragged_spine/ordin_sleetfoot_two002.mp3", "", "", 2823426244, 1105831845, Spawn)
	AddConversationOption(conversation, "Very well.  Good luck.")
	StartConversation(conversation, NPC, Spawn, "Of course.  Ye head back without me.  I want to check out what's up ahead.  I'll meet ye back with Thirin when I'm done here.  ")
end

function HideSpawn(NPC, Spawn)
	SetStepComplete(Spawn, GoodDistraction, 5)
	RemoveSpawnAccess(NPC, Spawn)
end