--[[
    Script Name    : SpawnScripts/Antonica/Crucibletablewithsmoke.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.20 12:05:10
    Script Purpose : 
                   : 
--]]
local Quest = 5841

function spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'inspect' then
      local con = CreateConversation()
    if IsInCombat(Spawn)== true then
        SendMessage(Spawn,"You are in combat!","red")
    else
        if GetQuestStep(Spawn,Quest)==4 or GetQuestStep(Spawn,Quest)==5  then
        Dialog1(NPC,Spawn)
      else
        AddConversationOption(con, "[Leave the table and trinkets alone...]")
        StartDialogConversation(con, 1, NPC, Spawn, "Foul smelling concotions and small trinkets litter the table. The Darkpaw gnolls are obviously dabbling in magic you are unfamiliar with.")
        end
    end
end
end

function Dialog1(NPC,Spawn)
        local con = CreateConversation()
        if not QuestStepIsComplete(Spawn,Quest,5) then
        AddConversationOption(con, "[Look for something to dispell enchantments.]", "Dialog2")
        end
        AddConversationOption(con, "[Leave the table and trinkets alone...]")
        StartDialogConversation(con, 1, NPC, Spawn, "Foul smelling concotions and small trinkets litter the table. The Darkpaw gnolls are obviously dabbling in magic you are unfamiliar with.")
end  
    
function Dialog2(NPC,Spawn)
        local con = CreateConversation()
        AddConversationOption(con, "[Grab the wand.]","offer")
        AddConversationOption(con, "[Leave the table and trinkets alone...]")
        StartDialogConversation(con, 1, NPC, Spawn, "You spot a crude wand next to some twitching hay. Perhaps this is one of the devices used by the Darkpaw to enchant scarecrows that terrorize local farmlands. It might work to disenchant something as well...")
end      
    
function offer(NPC, Spawn)
        local con = CreateConversation()
        if not QuestStepIsComplete(Spawn,Quest,5) then
        SetStepComplete(Spawn,Quest,5)
        end
        AddConversationOption(con, "[Leave the rest of the trinkets alone.]")
        StartDialogConversation(con, 1, NPC, Spawn, "An audible ZAP can be heard as you lift the wand off the table.")
      PlaySound(Spawn,"sounds/spells/lightning_burst/lb_volt_03.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
      ApplySpellVisual(NPC,18)
end