--[[
    Script Name    : SpawnScripts/FallenGate/fgepicaccessbookcase.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 09:07:48
    Script Purpose : bookcase that gives an item "Ilucide's battered journal"
                   : 
--]]

local IlucidesBatteredJournal = 8259
local SearchTheDepthsOfFallenGate = 5307

function spawn(NPC)
 
end



function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Search the Books' then
         if not HasItem(Spawn, IlucidesBatteredJournal) then
         SummonItem(Spawn, IlucidesBatteredJournal, 1)
         SendMessage(Spawn, "You find an old battered journal.")
         SendPopUpMessage(Spawn, "You receive Ilucide's battered journal", 255, 255, 255)
         elseif HasItem(Player, IlucidesBatteredJournal) and not HasQuest(Spawn, SearchTheDepthsOfFallenGate) then
         SendMessage(Spawn, "You have already found the spell you needed.", 20)
         elseif HasQuest(Spawn, SearchTheDepthsOfFallenGate) and not QuestStepIsComplete(Spawn, SearchTheDepthsOfFallenGate, 3) then
         SetStepComplete(Spawn, SearchTheDepthsOfFallenGate, 3)
         SendMessage(Spawn, "You search through the books on the bookcase and quickly discern the book with the spell you need!")
         elseif QuestStepIsComplete(Spawn, SearchTheDepthsOfFallenGate, 3) then
        SetAccessToEntityCommand(Spawn,NPC,"Leave the supplies", 0)
        SpawnSet(NPC, "show_command_icon", 0)
        SpawnSet(NPC, "display_hand_icon", 0)
         end
      end
   end

