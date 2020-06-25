--[[
	Script Name	: SapswillVillageSitting.lua
	Script Purpose	: Spawn script for a sitting Sapswill.
	Script Author	: Scatman
	Script Date	: 2009.01.11
        Modified by      : premierio015
        Modified  Date : 2020.04.29
	Script Notes	:   
        Modified Notes :  Changed speed from 4 to 7, so now running look a like Live version.
--]]

local ADiplomaticMission = 166

function spawn(NPC)
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
	
	choice = math.random(1, 4)
	if choice == 1 then
		Say(NPC, "If not for twins, we not make it.")
	elseif choice == 2 then
		Say(NPC, "A friend to gobbies! Grexx was right!")
	elseif choice == 3 then
		Say(NPC, "Grexx was right, hopes has come!")
	else
		Say(NPC, "Days are grim, but Grexx has hopes.")
	end
end

function QuestTalk(NPC, Spawn)
	if HasQuest(Spawn, ADiplomaticMission) and not QuestStepIsComplete(Spawn, ADiplomaticMission, 3) then
		SetStepComplete(Spawn, ADiplomaticMission, 3)
	end
	
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "Hail? But soothsayer says no hail in forecast!")
	else
		Say(NPC, "Happy days ahead now, diplomatic friend!")
	end
end

