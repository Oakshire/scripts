--[[
    Script Name    : SpawnScripts/FallenGate/questroguechestwidget.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.12 07:07:57
    Script Purpose : chest script needef for quest "Searching the Depths of Fallen Gate"
                   : 
--]]

local SearchTheDepthsOfFallenGate = 5307
local FallenDragoonBangleItem =  7025

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function InRange(NPC, Spawn)
 if GetQuestStep(Spawn, SearchTheDepthsOfFallenGate) == 4 then
      SetAccessToEntityCommand(Spawn,NPC,"open the chest", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
   end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'open the chest' then
		    if GetQuestStep(Spawn, SearchTheDepthsOfFallenGate) == 4 then
		    conversation = CreateConversation()
             AddConversationOption(conversation, "1", "Correct_Number01")
             AddConversationOption(conversation, "2", "Wrong")
             AddConversationOption(conversation, "3", "Wrong")
             AddConversationOption(conversation, "4", "Wrong")
             AddConversationOption(conversation, "5", "Wrong")
             AddConversationOption(conversation, "6", "Wrong")
            StartDialogConversation(conversation, 1, NPC, Spawn, "This must be the chest the mad Teir'dal wrote of! As you reach to open the chest, you notice a circular dial with a sequence of numbers. You decide to spin the dial to...")
        elseif QuestStepIsComplete(Spawn, SearchTheDepthsOfFallenGate, 4) then
        SendMessage(Spawn, "You have already recovered the bracelet from this chest.", 20) 
        end
    end
end

function Wrong(NPC, Spawn)
      conversation = CreateConversation()
   AddConversationOption(conversation, "Oops!")
   StartDialogConversation(conversation, 1, NPC, Spawn, "A strange glow lights up the area and the dial turns back to its starting place!")
end

function Correct_Number01(NPC, Spawn)
 conversation = CreateConversation()
             AddConversationOption(conversation, "1", "Wrong")
             AddConversationOption(conversation, "2", "Wrong")
             AddConversationOption(conversation, "3", "Wrong")
             AddConversationOption(conversation, "4", "Correct_Number02")
             AddConversationOption(conversation, "5", "Wrong")
             AddConversationOption(conversation, "6", "Wrong")
            StartDialogConversation(conversation, 1, NPC, Spawn, "The ancient tumbler creaks to a halt. You begin to spin the dial to the right and pick a new number...")
end

function Correct_Number02(NPC, Spawn)
  conversation = CreateConversation()
             AddConversationOption(conversation, "1", "Wrong")
             AddConversationOption(conversation, "2", "Correct_Number03")
             AddConversationOption(conversation, "3", "Wrong")
             AddConversationOption(conversation, "4", "Wrong")
             AddConversationOption(conversation, "5", "Wrong")
             AddConversationOption(conversation, "6", "Wrong")
            StartDialogConversation(conversation, 1, NPC, Spawn, "Again, the tumbler stops. Your third choice is...")
end


function Correct_Number03(NPC, Spawn)
  conversation = CreateConversation()
             AddConversationOption(conversation, "1", "Wrong")
             AddConversationOption(conversation, "2", "Wrong")
             AddConversationOption(conversation, "3", "Wrong")
             AddConversationOption(conversation, "4", "Wrong")
             AddConversationOption(conversation, "5", "Wrong")
             AddConversationOption(conversation, "6", "Correct_Number04")
            StartDialogConversation(conversation, 1, NPC, Spawn, "Something seems to block the lock for a moment, but then it slides into the correct position. You pick...")
end


function Correct_Number04(NPC, Spawn)
  conversation = CreateConversation()
             AddConversationOption(conversation, "1", "Wrong")
             AddConversationOption(conversation, "2", "Wrong")
             AddConversationOption(conversation, "3", "Correct_Number05")
             AddConversationOption(conversation, "4", "Wrong")
             AddConversationOption(conversation, "5", "Wrong")
             AddConversationOption(conversation, "6", "Wrong")
            StartDialogConversation(conversation, 1, NPC, Spawn, "The dial stops spinning. Your new choice is...")
end


function Correct_Number05(NPC, Spawn)
  conversation = CreateConversation()
             AddConversationOption(conversation, "1", "Wrong")
             AddConversationOption(conversation, "2", "Wrong")
             AddConversationOption(conversation, "3", "Wrong")
             AddConversationOption(conversation, "4", "Wrong")
             AddConversationOption(conversation, "5", "Correct_Number06")
             AddConversationOption(conversation, "6", "Wrong")
            StartDialogConversation(conversation, 1, NPC, Spawn, "The obviously-gnomish contraption creaks a bit as the cogs spin around. You turn to...")
end


function Correct_Number06(NPC, Spawn)
  conversation = CreateConversation()
             AddConversationOption(conversation, "[take the bracelet]", "complete")
            StartDialogConversation(conversation, 1, NPC, Spawn, "The decrepit lock falls apart as the magical energy holding it together releases. Inside you find a small metallic bracelet.")
end

function complete(NPC, Spawn)
SummonItem(Spawn, FallenDragoonBangleItem, 1)
SetStepComplete(Spawn, SearchTheDepthsOfFallenGate, 4)
end

function respawn(NPC)
	spawn(NPC)
end