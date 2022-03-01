--[[
    Script Name    : SpawnScripts/Commonlands/questvanikibarrel.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 05:05:03
    Script Purpose : 
                   : 
--]]

local TheWheelOfVaniki = 5230

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
if GetQuestStep(Spawn, TheWheelOfVaniki) == 8 then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "Examine Barrel", 3, "", "", 100, "")
end
   end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Examine Barrel' then
		 if GetQuestStep(Spawn, TheWheelOfVaniki) == 8 then
		SetStepComplete(Spawn, TheWheelOfVaniki, 8)
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