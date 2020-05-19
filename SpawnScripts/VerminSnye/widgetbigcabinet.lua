--[[
    Script Name    : SpawnScripts/VerminSnye/widgetbigcabinet.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.18 03:05:04
    Script Purpose : 
                   : 
--]]

local TheShrillerCatcher = 537

function spawn(NPC)

end


function respawn(NPC)
         spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
   if not HasQuest(Spawn, TheShrillerCatcher) and not HasCompletedQuest(Spawn, TheShrillerCatcher) then
   if Message == "examine cabinet" then
   local con = CreateConversation()

   AddConversationOption(con, "Look inside cabinet.", "Inside")
   AddConversationOption(con, "Leave the cabinet alone.")
   StartDialogConversation(con, 1, NPC, Spawn, "You see a large cabinet with its door slightly ajar.")
   end
      end

function Inside(NPC, Spawn)
OfferQuest(NPC, Spawn, TheShrillerCatcher)
local con = CreateConversation()

AddConversationOption(con, "I'll finish the job.")
AddConversationOption(con, "exit.")
StartDialogConversation(con, 1, NPC, Spawn, "Inside the cabinet you see a lagre net attached to the end of a pole and a note that reads: ''Sorry boss, but these rabid shrillers are scaring me to death! Someone else is going to have to exterminate them, I quit!''")
end
   end

