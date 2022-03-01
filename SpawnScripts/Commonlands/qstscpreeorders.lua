--[[
    Script Name    : SpawnScripts/Commonlands/qstscpreeorders.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.15 09:04:30
    Script Purpose : 
                   : 
--]]

QUEST = 408

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")    
end


function SpawnAccess(NPC, Spawn)
if GetQuestStep(Spawn, QUEST) == 2 then
SpawnSet(NPC, "show_command_icon", 1)
SpawnSet(NPC, "display_hand_icon", 1)
elseif GetQuestStep(Spawn, QUEST) == 1 then
SpawnSet(NPC, "show_command_icon", 0)
SpawnSet(NPC, "display_hand_icon", 0)
end
   end


function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Search' then
		    if GetQuestStep(Spawn, QUEST) == 2 then
            SummonItem(Spawn, 11357, 1)
		end
		   end
	          end