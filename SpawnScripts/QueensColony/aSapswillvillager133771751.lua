--[[
        Script Name     : SpawnScripts/QueensColony/aSapswillvillager133771751.lua
	Script Purpose	: Spawn script for a happy Sapswill villager.
	Script Author	: Scatman
	Script Date	: 2009.01.11
	Script Notes	: 
--]]

local ADiplomaticMission = 166

function spawn(NPC)
        AddTimer(NPC, 5000, "EmoteLoop")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if HasQuest(Spawn, ADiplomaticMission) and not QuestStepIsComplete(Spawn, ADiplomaticMission, 5) then
		SetStepComplete(Spawn, ADiplomaticMission, 5)
	end
	
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "Get some swill, diplomat! Is good!")
	else
		Say(NPC, "Dishpan hands? Huh? Oh! Dip-lo-mat! Ha! Funny!")
	end
end

function EmoteLoop(NPC)
        math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
            PlayAnimation(NPC, 11150)
            AddTimer(NPC, 9000, "Idle")
        else
	    PlayAnimation(NPC, 13054)
	    AddTimer(NPC, 11200, "Idle")
        end
end

function Idle(NPC)
	PlayAnimation(NPC, 323)    
        EmoteLoop(NPC)
end

