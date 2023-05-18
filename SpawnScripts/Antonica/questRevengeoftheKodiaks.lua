--[[
    Script Name    : SpawnScripts/Antonica/questRevengeoftheKodiaks.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.17 07:05:57
    Script Purpose : 
                   : 
--]]
local Quest = 5833

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Search reeds' then
      local con = CreateConversation()
        if CanReceiveQuest(Spawn,Quest) then
        Dialog1(NPC,Spawn)
        elseif HasCompletedQuest(Spawn, Rune) then
        AddConversationOption(con, "[Leave the banner alone]")
        StartDialogConversation(con, 1, NPC, Spawn, "The banner on the memorial still reads, \"The final resting place of Guyc Swampleg. A great friend, but not a great runner. The young kodiaks got him while he was fishing.\"")
        elseif HasQuest(Spawn, Quest) and not HasCompletedQuest(Spawn, Quest) then
        AddConversationOption(con, "I still need to thing young kodiaks from Antonica.")
        StartDialogConversation(con, 1, NPC, Spawn, "The banner reads, \n\n \"The final resting place of Guyc Swampleg. A great friend, but not a great runner. The young kodiaks got him while he was fishing.\"")
        end
end
end

function Dialog1(NPC,Spawn)
        local con = CreateConversation()
        AddConversationOption(con, "[Read the banner]", "Dialog2")
        AddConversationOption(con, "[Leave the banner alone]")
        StartDialogConversation(con, 1, NPC, Spawn, "There appeares to be some sort of memorial within the reeds. A small banner waves silently as a gust blows through the Archer Woods.")
end  
    
function Dialog2(NPC,Spawn)
        local con = CreateConversation()
        AddConversationOption(con, "I need to make this area safer by removing young kodiaks!", "offer")
        AddConversationOption(con, "[Leave the banner alone]")
        StartDialogConversation(con, 1, NPC, Spawn, "The banner reads,\n\n \"The final resting place of Guyc Swampleg. A great friend, but not a great runner. The young kodiaks got him while he was fishing.\"")
end      
    
function offer(NPC, Spawn)
    CloseConversation(NPC,Spawn)
    OfferQuest(NPC, Spawn, Quest)
end