--[[
    Script Name    : SpawnScripts/Antonica/warriorcapquestwidget.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.21 11:04:16
    Script Purpose : 
                   : 
--]]

local TheseBootsWereMadeFor = 5805 -- These Boots Were Made For QUEST ID

function spawn(NPC)
SetRequiredQuest(NPC, TheseBootsWereMadeFor, 10)
end

function casted_on(NPC, Spawn, Spell)
if Spell == 'climb down the trapdoor' then
Zone(GetZone(838), Spawn)
  end
end  

function respawn(NPC)
	spawn(NPC)
end