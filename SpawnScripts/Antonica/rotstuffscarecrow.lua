--[[
    Script Name    : SpawnScripts/Antonica/rotstuffscarecrow.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.21 01:05:37
    Script Purpose : 
                   : 
--]]
local Quest = 5841

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'inspect' then
      local con = CreateConversation()
    if IsInCombat(Spawn)== true then
        SendMessage(Spawn,"You are in combat!","red")
    else
        if GetQuestStep(Spawn,Quest)==4 or GetQuestStep(Spawn,Quest)==5  then
        Dialog1(NPC,Spawn)
      else
        AddConversationOption(con, "[Leave the scarecrow alone...]")
        StartDialogConversation(con, 1, NPC, Spawn, "This scarecrow is in the process of being animated through arcane means. Once fully animated the gnolls will use it to sow discord in Antonica.")
        end
    end
end
end

function Dialog1(NPC,Spawn)
        local con = CreateConversation()
        if not QuestStepIsComplete(Spawn,Quest,5) then
        AddConversationOption(con, "[Look for something to dispell enchantments.]", "Dialog2")
        end
        AddConversationOption(con, "[Leave the scarecrow alone...]")
        StartDialogConversation(con, 1, NPC, Spawn, "This scarecrow is in the process of being animated through arcane means. Once fully animated the gnolls will use it to sow discord in Antonica.")
end  
    
function Dialog2(NPC,Spawn)
        local con = CreateConversation()
        AddConversationOption(con, "[Leave the scarecrow alone...]")
        StartDialogConversation(con, 1, NPC, Spawn, "Other than some slight twitching of the scarecrow's limbs, you don't notice anything that can help.")
end      
    
