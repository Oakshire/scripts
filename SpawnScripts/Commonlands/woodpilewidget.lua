--[[
    Script Name    : SpawnScripts/Commonlands/woodpilewidget.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.25 09:05:32
    Script Purpose : 
                   : 
--]]

local StopTheBloodskullLumberjacks = 5233

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
if not HasQuest(Spawn, StopTheBloodskullLumberjacks) and not HasCompletedQuest(Spawn, StopTheBloodskullLumberjacks) then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "examine wood pile", 3, "", "", 100, "")
end
   end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine wood pile' then
		 local con = CreateConversation()
		  AddConversationOption(con, "Read parchment.  ", "option1")
	       AddConversationOption(con, "Ignore it.")
	        StartDialogConversation(con, 1, NPC, Spawn, "You see a piece of parchment stuffed within the stack of wood.")
end	
    end


function option1(NPC, Spawn)
    OfferQuest(NPC, Spawn,  StopTheBloodskullLumberjacks )
     local con = CreateConversation()
		  AddConversationOption(con, "I should take care of these orcs.")
	       AddConversationOption(con, "exit")
	        StartDialogConversation(con, 1, NPC, Spawn, "The parchment reads, ''You told me this was a safe area!  Bloodskull lumberjacks are everywhere!  How am I supposed to work?!  I QUIT!")
	   AddTimer(NPC, 150, "remove_access", 1, Spawn)
end
  

function remove_access(NPC, Spawn)
       if HasQuest(Spawn, StopTheBloodskullLumberjacks) then
		SpawnSet(NPC, "display_hand_icon", 0)
       SpawnSet(NPC, "show_command_icon", 0)
end       
    end




function respawn(NPC)
	spawn(NPC)
end