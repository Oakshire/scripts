--[[
	Script Name	: SpawnScripts/TimorousDeep/acapturedsarnak.lua
	Script Purpose	: a captured sarnak 
	Script Author	: John Adams
	Script Date	: 2009.03.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_PRISON_BREAK = 131

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	if HasQuest(Spawn, QUEST_PRISON_BREAK) and GetQuestStep(Spawn, QUEST_PRISON_BREAK) == 1 then
		if NoSentriesAreClose(NPC) then
			conversation = CreateConversation()

			PlayFlavor(NPC, "voiceover/english/rok_questvo/a_captured_sarnak/_exp04/exp04_rgn_timorous_deep/chrykori_tie/captured_sarnak/sarnak000.mp3", "", "", 828273370, 3232818637, Spawn)
			AddConversationOption(conversation, "Yes, run back to Chrykori Tie.", "ItsSafe")
			StartConversation(conversation, NPC, Spawn, "Is it safe?")
		else
			PlayFlavor(NPC, "voiceover/english/rok_questvo/a_captured_sarnak/_exp04/exp04_rgn_timorous_deep/sarnak/actor_captured_sarnak_not_safe_c743b130.mp3", "There are still sentries about!", "", 1306178937, 536022533, Spawn)
		end
	else
		Say(NPC, "...", Spawn)
	end
end

function NoSentriesAreClose(NPC)
	Sentry = GetSpawn(NPC, 2630093)
	if GetDistance(NPC, Sentry) <= 10 then
		if not IsAlive(Sentry) then
			return true;
		else
			return false;
		end
	else
		return true;
	end
end

function ItsSafe(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/a_captured_sarnak/_exp04/exp04_rgn_timorous_deep/sarnak/actor_captured_sarnak_thanks_64962be1.mp3", "Thank you!", "", 3145148211, 2012659312, Spawn)
	AddStepProgress(Spawn, QUEST_PRISON_BREAK, 1, 1)
	RunAway(NPC, Spawn)
end

function RunAway(NPC, Spawn)
	MovementLoopAddLocation(NPC, 330.01, 80.49, 148.29, 10, 0)
	MovementLoopAddLocation(NPC, 293.32, 49.81, 66.89, 10, 0)
	MovementLoopAddLocation(NPC, 288.29, 49.15, 68.3, 10, 0)
	MovementLoopAddLocation(NPC, 270.94, 38.79, 104.6, 10, 0)
	MovementLoopAddLocation(NPC, 214.08, 36.39, 100.36, 10, 0)
	MovementLoopAddLocation(NPC, 202.58, 29.11, 126.46, 10, 0)
	MovementLoopAddLocation(NPC, 109.03, 17.9, 140.07, 10, 10, "MakeDespawn")
end

function MakeDespawn(NPC)
	Despawn(NPC)
end