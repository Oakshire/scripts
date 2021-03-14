--[[
    Script Name    : SpawnScripts/Commonlands/orcsiegetower.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.08 08:03:54
    Script Purpose : 
                   : 
--]]

local OrcSiegeTowerExplosionID = 330917 
local BloodskullDisruption = 404

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end


function InRange(NPC, Spawn)
if HasQuest(Spawn, BloodskullDisruption) then
AddPrimaryEntityCommand(Spawn, NPC, "Destroy")
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)

end
   end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Destroy' then
		    if not HasItem(Spawn, 6975) then
		           SendPopUpMessage(Spawn, "You need explosives to destroy this. Perhaps you can find some in the orc supplies", 255, 215, 0)
	            else
	                 RemoveItem(Spawn, 6975, 1)
	                 AddTimer(NPC, 2000, "explode")
	                 SpawnSet(NPC, "visual_state", "2017")
	                 if GetQuestStep(Spawn, BloodskullDisruption) == 4 then
                     SetStepComplete(Spawn, BloodskullDisruption, 4)
                     end
end
end
   end
 
   
function explode(NPC, Spawn)
local OrcSiegeTowerExplosion = GetSpawn(Spawn, 330917)
SpawnSet(OrcSiegeTowerExplosion, "visual_state", "4557")
SpawnSet(NPC, "model_type", 2375)
SpawnSet(NPC, "visual_state", "0")
AddTimer(NPC, 150000, "default_state")
end


function default_state(NPC, Spawn)
SpawnSet(NPC, "model_type", 2374)
end

function respawn(NPC)
spawn(NPC)
end


