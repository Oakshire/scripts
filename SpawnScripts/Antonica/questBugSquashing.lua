--[[
    Script Name    : SpawnScripts/Antonica/questBugSquashing.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.19 05:05:51
    Script Purpose : 
                   : 
--]]
local Quest = 5842

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'inspect' then
      local con = CreateConversation()
        if CanReceiveQuest(Spawn,Quest) then
        Dialog1(NPC,Spawn)
        elseif HasCompletedQuest(Spawn, Quest) then
        AddConversationOption(con, "[Leave the carcass.]")
        StartDialogConversation(con, 1, NPC, Spawn, "This is a dead klicnik that has historically plagued these lands. You've done what you could to thin their numbers.")
        elseif HasQuest(Spawn, Quest) and not HasCompletedQuest(Spawn, Quest) then
        AddConversationOption(con, "I must squish more klicnik warriors!")
        StartDialogConversation(con, 1, NPC, Spawn, "This is a dead klicnik reminds you of your mission to remove them from the Antonica countryside. You must do what you can to reduce their numbers!")
        end
end
end

function Dialog1(NPC,Spawn)
        local con = CreateConversation()
        AddConversationOption(con, "[Look closer...]", "Dialog2")
        AddConversationOption(con, "[Leave the carcass.]")
        StartDialogConversation(con, 1, NPC, Spawn, "Whatever this was, it appears hard as a shell with a surface that glimmers with a faint light.")
end  
    
function Dialog2(NPC,Spawn)
        local con = CreateConversation()
        AddConversationOption(con, "I should destroy the klicnik warriors!", "offer")
        AddConversationOption(con, "[Leave the carcass.]")
        StartDialogConversation(con, 1, NPC, Spawn, "Upon closer inspection you realize that it is an old, empty carapace for a klicnik warrior!  Why are there so many of these dangerous insects so close to fair Qeynos?!")
end      
    
function offer(NPC, Spawn)
    CloseConversation(NPC,Spawn)
    OfferQuest(NPC, Spawn, Quest)
end