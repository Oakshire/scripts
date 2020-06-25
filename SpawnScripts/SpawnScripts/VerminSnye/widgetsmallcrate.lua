--[[
    Script Name    : SpawnScripts/VerminSnye/widgetsmallcrate.lua
    Script Author  : premierio015
    Script Date    : 2020.05.16 01:05:02
    Script Purpose : 
                   : 
--]]

local AStrangeDelivery = 531

function spawn(NPC)

end


function respawn(NPC)
         spawn(NPC)
end


function casted_on(NPC, Spawn, Message)
              if not HasQuest(Spawn, AStrangeDelivery) and not HasCompletedQuest(Spawn, AStrangeDelivery) then    
              if Message == "Open Crate" then
              local con = CreateConversation()
            
              AddConversationOption(con, "Look inside.", "Inside")
              AddConversationOption(con, "Leave it alone.")
              StartDialogConversation(con, 1, NPC, Spawn, "You find a small crate.")
end
   end

function Inside(NPC, Spawn)
OfferQuest(NPC, Spawn, AStrangeDelivery)
local con = CreateConversation()

AddConversationOption(con, "I will destroy them.")
AddConversationOption(con, "exit.")
StartDialogConversation(con, 1, NPC, Spawn, "Inside of the crate you find a slime covered note that reads:  ''Here's your stinking ravenous cube!  Good luck with that!  Hahahahaha!''  Someone actually sent those here?  I should do something about it.")
end
   end
