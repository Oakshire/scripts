--[[
    Script Name    : SpawnScripts/Commonlands/anoldvial.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 05:05:24
    Script Purpose : 
                   : 
--]]


local TheWheelOfVaniki = 5230

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
if GetQuestStep(Spawn, TheWheelOfVaniki) == 6 then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "Grab the vial", 3, "", "", 100, "")
end
   end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Grab the vial' then
		 if GetQuestStep(Spawn, TheWheelOfVaniki) == 6 then
		SetStepComplete(Spawn, TheWheelOfVaniki, 6)
		end
		AddTimer(NPC, 150, "remove_access", 1)
end	
  end


function remove_access(NPC, Spawn)
		SpawnSet(NPC, "display_hand_icon", 0)
       SpawnSet(NPC, "show_command_icon", 0) 
end       

function respawn(NPC)
	spawn(NPC)
end