--[[
    Script Name    : SpawnScripts/Blackburrow/questheritagedwbstoutkeg.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.21 08:04:22
    Script Purpose : 
                   : 
--]]

local TheseBootsWereMadeFor = 5805 -- These Boots Were Made For QUEST ID

function spawn(NPC)
SetRequiredQuest(NPC, TheseBootsWereMadeFor, 8)
end

function casted_on(NPC, Spawn, Spell)
if Spell == 'pour some Blackburrow Stout for Hwal' then
SetStepComplete(Spawn, TheseBootsWereMadeFor, 8)
  end
end    

function respawn(NPC)
	spawn(NPC)
end