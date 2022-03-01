--[[
    Script Name    : SpawnScripts/ScaleYard/questmalachidesk.lua
    Script Author  : Jabantiz
    Script Date    : 2018.06.18 12:06:02
    Script Purpose : 
                   : 
--]]

-- Quest ID's
local QUEST_3 = 348 -- 185 --Battle On The Home Front

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_3, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, Message)
	SetStepComplete(Spawn, QUEST_3, 3)
end