--[[
	Script Name	: SapswillVillageDancer.lua
	Script Purpose	: Spawn script for a dancing Sapswill.
	Script Author	: Scatman
	Script Date	: 2009.01.11
	Script Notes	: 
--]]

local ADiplomaticMission = 166

function spawn(NPC)
	SpawnSet(NPC, "visual_state", 11298)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if HasCompletedQuest(Spawn, ADiplomaticMission) or HasQuest(Spawn, ADiplomaticMission) then
		QuestTalk(NPC, Spawn)
	else
		NormalTalk(NPC, Spawn)
	end
	
	
end

function NormalTalk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "Danger? Only danger I see is crackin' my nog on this rock!")
	else
		Say(NPC, "Invasion? Ahh my dance! I call it the Stout Shuffle though.")
	end
end

function QuestTalk(NPC, Spawn)
	if HasQuest(Spawn, ADiplomaticMission) and not QuestStepIsComplete(Spawn, ADiplomaticMission, 4) then
		SetStepComplete(Spawn, ADiplomaticMission, 4)
	end
	
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "Special welcomes, diplomat!")
	else
		Say(NPC, "Dancing is good for diplomats too!")
	end
end

