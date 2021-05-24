--[[
    Script Name    : SpawnScripts/Commonlands/questwheelofvaniki.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.23 10:05:30
    Script Purpose : 
                   : 
--]]

local TheWheelOfVaniki = 5230

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end


function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
if GetQuestStep(Spawn, TheWheelOfVaniki) == 1 then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "Examine rock", 2, "", "", 100, "")
end
   end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Examine rock' then
		    if GetQuestStep(Spawn, TheWheelOfVaniki) == 1 then
		         SetStepComplete(Spawn, TheWheelOfVaniki, 1)
		         end
	      	AddTimer(NPC, 150, "remove_access", 1)
		     local con = CreateConversation()
   AddConversationOption(con, "Look more closely.", "Option1")
   AddConversationOption(con, "Leave the rocks alone.")
   StartDialogConversation(con, 1, NPC, Spawn, "Though you feel as though you've seen these types of rocks hundreds of times, upon closer examination you notice this particular one is tilted slightly, as though it is concealing something.")
	     end
end



function remove_access(NPC, Spawn)
		SpawnSet(NPC, "display_hand_icon", 0)
       SpawnSet(NPC, "show_command_icon", 0) 
end       
    
    function Option1(NPC, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "Put the rock back the way you found it.")
      StartDialogConversation(con, 1, NPC, Spawn, "You gently push the rock to one side and find a flat, somewhat battered object half-buried beneath it.  Could this waterlogged disc be the Wheel of Vaniki?  If so, it's going to need some repairs.")
    end
        