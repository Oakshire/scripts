--[[
    Script Name    : SpawnScripts/BeggarsCourt/aBrotherhoodcache.lua
    Script Author  : Cynnar
    Script Date    : 2018.06.22 06:06:40
    Script Purpose : 
                   : 
--]]

local HALFELF_MENTOR_QUEST_3 = 315 -- Reel Him In

function spawn(NPC)
	SetRequiredQuest(NPC, HALFELF_MENTOR_QUEST_3, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


