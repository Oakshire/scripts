--[[
    Script Name    : SpawnScripts/Commonlands/bloodskullsupplies.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.08 08:03:54
    Script Purpose : 
                   : 
--]]

local BloodskullDisruption = 404

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "InRange")
end


function InRange(NPC, Spawn)
if GetQuestStep(Spawn, BloodskullDisruption) == 3  then
AddPrimaryEntityCommand(Spawn, NPC, "Destroy")
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
end
   end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Destroy' then
	                 AddTimer(NPC, 2000, "explode")
	                 SpawnSet(NPC, "visual_state", "2017")
                     AddStepProgress(Spawn, BloodskullDisruption, 3, 1)  
end
   end
 
   
function explode(NPC, Spawn)
Despawn(NPC)
end
  
function respawn(NPC)
spawn(NPC)
end



