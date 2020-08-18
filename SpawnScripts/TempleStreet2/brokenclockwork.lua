--[[
    Script Name    : SpawnScripts/TempleStreet2/brokenclockwork.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.16 04:08:56
    Script Purpose : 
                   : 
--]]

QUEST = 574

function spawn(NPC)
        AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
end

function casted_on(NPC, Spawn, Message)
   if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 4 then
   if Message == "Examine Clockwork" then
   local con = CreateConversation()

   AddConversationOption(con, "Start fixing the clockwork.", "fixed")
   AddConversationOption(con, "This thing is junk anyway.")
   StartDialogConversation(con, 1, NPC, Spawn, "This clockwork appears to be badly damaged.  From what you've learned, however, you should have little trouble fixing it.")
   end
      end
         end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 4 then
		AddSpawnAccess(NPC, Spawn)
        else
               RemoveSpawnAccess(NPC, Spawn)
	end
end

function fixed(NPC, Spawn)
SetStepComplete(Spawn, QUEST, 4)
end


function respawn(NPC)

end
