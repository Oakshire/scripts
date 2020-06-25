--[[
    Script Name    : SpawnScripts/Starcrest/RedSunBerries.lua
    Script Author  : Jabantiz
    Script Date    : 2018.06.14 11:06:05
    Script Purpose : 
                   : 
--]]

-- Quest ID's
local MEETING_WITH_CAYAN = 316

function spawn(NPC)
	SetRequiredQuest(NPC, MEETING_WITH_CAYAN, 2)
end

function respawn(NPC)
	spawn(NPC)
end

