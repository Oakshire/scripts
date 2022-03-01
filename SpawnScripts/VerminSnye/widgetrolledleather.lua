--[[
    Script Name    : SpawnScripts/VerminSnye/widgetrolledleather.lua
    Script Author  : premierio015
    Script Date    : 2020.05.17 03:05:39
    Script Purpose : 
                   : 
--]]

local RatsWhatRats = 536

function spawn(NPC)
         
end


function respawn(NPC)
         spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
   if not HasQuest(Spawn, RatsWhatRats) and not HasCompletedQuest(Spawn, RatsWhatRats) then
   if Message == "examine pallet" then
   local con = CreateConversation()

   AddConversationOption(con, "Unroll pallet.", "unrolled")
   AddConversationOption(con, "Leave it alone.")
   StartDialogConversation(con, 1, NPC, Spawn, "You find a rolled, leather sleeping pallet.")
   end
      end

function unrolled(NPC, Spawn)
OfferQuest(NPC, Spawn, RatsWhatRats)
local con = CreateConversation()

AddConversationOption(con, "I will exterminate the rats.")
AddConversationOption(con, "exit.")
StartDialogConversation(con, 1, NPC, Spawn, "After unrollling the pallet, you see that it is completely ruined, having been chewed through by what probably was a very big rat. As you look around you also notice large rat droppings all over the area. Someone should do something about these rats!")
end
   end