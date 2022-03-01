--[[
    Script Name    : SpawnScripts/WailingCaves/rock01.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.18 06:05:25
    Script Purpose : 
                   : 
--]]

local SeerStone = 5225


function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
if GetQuestStep(Spawn, SeerStone) == 1 then
AddPrimaryEntityCommand(Spawn, NPC, "Pick up a clump of stone", 2, "", "", 10000, "")
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
else
SpawnSet(NPC, "display_hand_icon", 0)
SpawnSet(NPC, "show_command_icon", 0)
SetAccessToEntityCommand(Spawn, NPC, "Pick up a clump of stone", 0)
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Pick up a clump of stone' then
        SetStepComplete(Spawn, SeerStone, 1)
        end
            end
   
function respawn(NPC)
	spawn(NPC)
end