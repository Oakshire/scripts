--[[
    Script Name    : SpawnScripts/Freeport/agravelyillcitizen.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.22 08:08:20
    Script Purpose : 
                   : 
--]]

QUEST = 576


function spawn(NPC)
AddSpawnAccess(NPC, NPC)
SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
end


function respawn(NPC)
         spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 1  then
		AddSpawnAccess(NPC, Spawn)
        else
               RemoveSpawnAccess(NPC, Spawn)
	end
end

function casted_on(NPC, Spawn, Message)
   if Message == "Examine" then
   SetStepComplete(Spawn, QUEST, 1)
   SendMessage(Spawn, "This citizen is listless, and non-responsive.  It appears that she is close to death.")
   SpawnSet(NPC, "display_hand_icon", "0")
   SpawnSet(NPC, "show_command_icon", "0")
end
   end