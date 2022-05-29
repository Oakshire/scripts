--[[
    Script Name    : SpawnScripts/PeatBog/qstunseenhandcrate1.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.28 12:05:39
    Script Purpose : 
                   : 
--]]

local AMBUSHED_QUEST_ID = 509

function spawn(NPC)
SetRequiredQuest(NPC, AMBUSHED_QUEST_ID, 1, 1,0,0)
end

function respawn(NPC)
	spawn(NPC)
end