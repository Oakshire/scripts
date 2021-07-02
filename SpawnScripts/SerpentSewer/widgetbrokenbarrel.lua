--[[
    Script Name    : SpawnScripts/SerpentSewer/widgetbrokenbarrel.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 07:07:10
    Script Purpose : 
                   : 
--]]

local ADrudgeProblem = 5269

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, ADrudgeProblem) and not HasCompletedQuest(Spawn,  ADrudgeProblem) then
     AddPrimaryEntityCommand(Spawn, NPC, "examine barrel", 5, "examine barrel", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine barrel' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Examine pieces", "offer")
               AddConversationOption(conversation, "Ignore it")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You find a wooden barrel that has been smashed to pieces.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine barrel", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn,  ADrudgeProblem )
 conversation = CreateConversation()
 AddConversationOption(conversation, "I should slay those drudge globules!")
StartDialogConversation(conversation, 1, NPC, Spawn, "Amidst the shattered wood, you find a small piece of parchment bearing the seal of Qeynos which reads:  \"I hope you find the drudge globules to your liking.  If they suit you, I have more where that came from.  Good luck with your work, I hope you make it home safe.  Best regards, Turl.\" ")            
end

function check(NPC, Spawn)
     if not HasQuest(Spawn,  ADrudgeProblem) and not HasCompletedQuest(Spawn,   ADrudgeProblem) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine barrel", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end