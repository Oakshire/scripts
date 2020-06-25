--[[
	Script Name		:	SpawnScripts/Darklight/invisiblecuberiftparticle.lua
	Script Purpose	: Sealing the Rift 
	Script Author	: Cynnar
	Script Date	: 2015.07.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local SealingTheRift = 122

function spawn(NPC, Player)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "QuestCheck", "QuestCheck")
end

function respawn(NPC)
    spawn(NPC)
end

function QuestCheck(NPC, Player)
    if HasCompletedQuest(Player, SealingTheRift ) or GetQuestStep(Player, SealingTheRift) > 1 then
        AddSpawnAccess(NPC, Player)
    end
end
