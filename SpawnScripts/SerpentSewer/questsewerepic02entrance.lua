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
    
end


function can_use_command(NPC, Spawn, Command)
if Command == 'Open sewer grate' then
                if not HasCompletedQuest(Spawn, MurkwaterUniform) and  not HasCompletedQuest(Spawn, BackAndForth) then
                return false
                elseif HasCompletedQuest(Spawn, MurkwaterUniform) and HasCompletedQuest(Spawn, BackAndForth) then
                return true
end                
end
end



function respawn(NPC)
	spawn(NPC)
end