--[[
    Script Name    : SpawnScripts/Rogue_IrontoeInn/aledger.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.03 04:12:48
    Script Purpose : 
                   : 
--]]

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Read' then
      local con = CreateConversation()
       AddConversationOption(con, "Quickly scan the recent pages.", "Entry")
        AddConversationOption(con, "Leave the ledger.","Exit")
        StartDialogConversation(con, 1, NPC, Spawn, "This ledger is one of many records for the movement of goods in the Qeynos Harbor Cache.")
end
end

function Entry(NPC, Spawn)
      local con = CreateConversation()
        AddConversationOption(con, "Leave the ledger.","Exit")
        StartDialogConversation(con, 1, NPC, Spawn, "A note scribbled in the margins amongst recent arrivals. \'The lieutenant wants the new orders kept upstairs. For his eyes only!\' ")
end

function Exit(NPC, Spawn)
    CloseConversation(NPC,Spawn)    
end