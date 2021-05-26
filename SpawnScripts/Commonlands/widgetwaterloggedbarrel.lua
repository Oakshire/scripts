--[[
    Script Name    : SpawnScripts/Commonlands/widgetwaterloggedbarrel.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.25 08:05:01
    Script Purpose : 
                   : 
--]]

local ThePlunderofGunthak = 5237

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
if not HasQuest(Spawn, ThePlunderofGunthak) and not HasCompletedQuest(Spawn, ThePlunderofGunthak) then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "examine barrel", 3, "", "", 100, "")
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine barrel' then
		 local con = CreateConversation()
		  AddConversationOption(con, "Open barrel.", "option1")
	       AddConversationOption(con, "Leave the barrel alone.")
	        StartDialogConversation(con, 1, NPC, Spawn, "This barrel appears to be intact.")
end	
end

function option1(NPC, Spawn)
         OfferQuest(NPC, Spawn, ThePlunderofGunthak)
		 local con = CreateConversation()
		  AddConversationOption(con, "I should slay those pirates!")
	        StartDialogConversation(con, 1, NPC, Spawn, "Within the barrel is a shipment of sundry items. The top of the barrel marks this shipment as being bound for Freeport. The brand upon the side of the barrel, however, marks this shipment as stolen Gunthak booty.")
	        AddTimer(NPC, 150, "remove_access", 1, Spawn)
	        
end

function remove_access(NPC, Spawn)
       if HasQuest(Spawn, ThePlunderofGunthak) then
		SpawnSet(NPC, "display_hand_icon", 0)
       SpawnSet(NPC, "show_command_icon", 0)
        RemovePrimaryEntityCommand(Spawn, NPC, "examine stump", 3)
end       
    end


function respawn(NPC)
	spawn(NPC)
end