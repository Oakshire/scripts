--[[
    Script Name    : SpawnScripts/SerpentSewer/questsewerepic02entrance.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 12:07:36
    Script Purpose : 
                   : 
--]]

local MurkwaterUniform = 568
local BackAndForth = 569

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
if HasCompletedQuest(Spawn, MurkwaterUniform) and HasCompletedQuest(Spawn, BackAndForth) then
SetAccessToEntityCommand(Spawn, NPC,"Open sewer grate", 1)
elseif not HasCompletedQuest(Spawn, MurkwaterUniform) and not HasCompletedQuest(Spawn, BackAndForth) then
SetAccessToEntityCommand(Spawn, NPC,"Open sewer grate", 0)
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Open sewer grate' then
                if not HasCompletedQuest(Spawn, MurkwaterUniform) and  not HasCompletedQuest(Spawn, BackAndForth) then
                SetAccessToEntityCommand(Spawn,NPC,"Open sewer grate", 0)
   end
 end
end


function respawn(NPC)
	spawn(NPC)
end