--[[
    Script Name    : SpawnScripts/BrawlersDojo/SoulBrazier.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 11:12:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5790,5,0,0,1)
end


function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Begin Meditation' and not IsInCombat(Spawn)then
      local con = CreateConversation()
        AddConversationOption(con, "Focus on the words","Step2")
        StartDialogConversation(con, 1, NPC, Spawn, "After proving your combat prowess, you take a moment to reflect. Focusing on the shrine you notice words etched along the rim.")
        SpawnSet(Spawn,"action_state",540)
end
end

function Step2(NPC, Spawn)
      local con = CreateConversation()
        AddConversationOption(con, "Recite the mantra and breathe deeply...","Step3")
        StartDialogConversation(con, 1, NPC, Spawn, "Meditation leads to Peace.\n\nPeace leads to Serenity.\n\nSerenity leads to Tranquility.\n\nTranquility brings Enlightenment.\n ")
end

function Step3(NPC, Spawn)
      local con = CreateConversation()
        AddConversationOption(con, "I am a brawler!","Step4")
        StartDialogConversation(con, 1, NPC, Spawn, "A cool breeze swirls around you, sending a sensation up your spine.  You arise from the altar and know in your heart you are a brawler.")
        ApplySpellVisual(Spawn,13)
        SpawnSet(Spawn,"action_state",0)
end

function Step4(NPC,Spawn)
        SpawnSet(Spawn,"action_state",0)
        SetStepComplete(Spawn,5790,5)
        CloseConversation(NPC,Spawn)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end