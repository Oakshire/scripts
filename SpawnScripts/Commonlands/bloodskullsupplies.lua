--[[
    Script Name    : SpawnScripts/Commonlands/bloodskullsupplies.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.08 08:03:54
    Script Purpose : 
                   : 
--]]

local BloodskullDisruption = 404

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end


function InRange(NPC, Spawn)
if HasQuest(Spawn, BloodskullDisruption)  then
AddPrimaryEntityCommand(Spawn, NPC, "Destroy")
AddPrimaryEntityCommand(SPawn, NPC, "Search for Explosives")
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
SetVisualFlag(NPC)
end
   end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Destroy' then
		       if not HasItem(Spawn, 6975) then
		           SendPopUpMessage(Spawn, "You need explosives to destroy this. Perhaps you can find some in the orc supplies", 255, 215, 0)
		       else
	                 AddTimer(NPC, 2000, "explode")
	                 SpawnSet(NPC, "visual_state", "2017")
	                 if GetQuestStep(Spawn, BloodskullDisruption) == 3 then
                     AddStepProgress(Spawn, BloodskullDisruption, 3, 1)
                     RemoveItem(Spawn, 6975, 1)
                     end
               end
              end
            
        if SpellName == 'Search for Explosives' then
           SummonItem(Spawn, 6975, 1)
           SendPopUpMessage(Spawn, "You receive explosives.", 255, 255, 255)
       end
end
 
   
function explode(NPC, Spawn)
Despawn(NPC)
end
  
function respawn(NPC)
spawn(NPC)
end



