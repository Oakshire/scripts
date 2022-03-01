--[[
    Script Name    : SpawnScripts/SerpentSewer/widgetbedroll.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 09:07:56
    Script Purpose : 
                   : 
--]]

local AForgottenPoster = 5272



function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, AForgottenPoster) and not HasCompletedQuest(Spawn,  AForgottenPoster) then
     AddPrimaryEntityCommand(Spawn, NPC, "examine bed", 5, "examine bed", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine bed' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Examine parchment", "offer")
               AddConversationOption(conversation, "Leave it alone")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You find a bed roll with a piece of parchment sticking out from under it.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine bed", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn,  AForgottenPoster)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I will finish the job")
StartDialogConversation(conversation, 1, NPC, Spawn, "Upon examining the parchment you realize that it is an old, faded decree by the Overlord. It charges citizens to eradicate sift dashers from the sewers, whoever left it here is long gone.")            
end


function check(NPC, Spawn)
     if not HasQuest(Spawn,  AForgottenPoster) and not HasCompletedQuest(Spawn, AForgottenPoster) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine barrel", 1)
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end