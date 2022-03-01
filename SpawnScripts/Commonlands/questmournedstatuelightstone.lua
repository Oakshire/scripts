--[[
    Script Name    : SpawnScripts/Commonlands/questmournedstatuelightstone.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.30 11:05:17
    Script Purpose : 
                   : 
--]]

local TheReturnOfTheLight = 485

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
if GetQuestStep(Spawn, TheReturnOfTheLight) == 2 then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Touch burned out lightstone to statue' then
		    if GetQuestStep(Spawn, TheReturnOfTheLight) == 2 then
		    SetStepComplete(Spawn, TheReturnOfTheLight, 2)
		    end
		 local con = CreateConversation()
		  AddConversationOption(con, "[Put stone away]")
	        StartDialogConversation(con, 1, NPC, Spawn, "Touching the lightstone to the statue causes the small orb to flicker with light and grow warm in your hand.")
end	
end


function respawn(NPC)
	spawn(NPC)
end