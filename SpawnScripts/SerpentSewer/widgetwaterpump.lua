--[[
    Script Name    : SpawnScripts/SerpentSewer/widgetwaterpump.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 06:07:51
    Script Purpose : 
                   : 
--]]

local ASewageProblem = 5267

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, ASewageProblem) and not HasCompletedQuest(Spawn,  ASewageProblem) then
     AddPrimaryEntityCommand(Spawn, NPC, "examine pump", 5, "examine pump", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
elseif HasQuest(Spawn, ASewageProblem) and not HasCompletedQuest(Spawn,  ASewageProblem) then
        SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine pump' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Examine pump", "offer")
               AddConversationOption(conversation, "Leave the pump alone")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You find a gnomish water pump.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine pump", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ASewageProblem)
conversation = CreateConversation()
AddConversationOption(conversation, "I will stop them")
StartDialogConversation(conversation, 1, NPC, Spawn, "Upon closer inspection you realize that the pump is pumping something into the sewers, not out! Those crazed channel menders must have something to do with this!")
end


function check(NPC, Spawn)
     if not HasQuest(Spawn, ASewageProblem) and not HasCompletedQuest(Spawn,  ASewageProblem) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine pump", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end