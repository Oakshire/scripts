--[[
    Script Name    : SpawnScripts/Commonlands/someveryoldbottles.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.23 09:05:01
    Script Purpose : 
                   : 
--]]

local TheWheelOfVaniki = 5230

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
if GetQuestStep(Spawn, TheWheelOfVaniki) == 4 then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "Grab the bottle", 3, "", "", 100, "")
end
   end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Grab the bottle' then
		 if GetQuestStep(Spawn, TheWheelOfVaniki) == 4 then
		SetStepComplete(Spawn, TheWheelOfVaniki, 4)
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