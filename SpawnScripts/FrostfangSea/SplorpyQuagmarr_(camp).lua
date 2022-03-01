--[[
	Script Name	: SpawnScripts/FrostfangSea/SplorpyQuagmarr_(camp).lua
	Script Purpose	: Splorpy Quagmarr spawn at the pilgrim camp
	Script Author	: theFoof
	Script Date	: 2013.05.21
	Script Notes	:
--]]

local UnbearableProblem = 25

local LostFroglok = 26

local GreatShelf = 30

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	    if HasCompletedQuest(Spawn, LostFroglok) == false then
	        PlayFlavor(NPC, "", "Dad says I'm not to talk to strangers.", "sad", 1689589577, 4560189, Spawn)
		else
		    PlayFlavor(NPC, "", "Hello again!", "wave", 1689589577, 4560189, Spawn)
		end
end

function SpawnAccess(NPC, Spawn)
    if HasQuest(Spawn, UnbearableProblem) then
	    if GetQuestStep(Spawn, UnbearableProblem) == 2 then
		
		else
		    AddSpawnAccess(NPC, Spawn)
		end
	elseif HasCompletedQuest(Spawn, UnbearableProblem) and HasCompletedQuest(Spawn, LostFroglok) == false then
	   
	elseif GetQuestStep(Spawn, GreatShelf) > 1 or HasCompletedQuest(Spawn, GreatShelf) then
		
	else
	    AddSpawnAccess(NPC, Spawn)
	end
end