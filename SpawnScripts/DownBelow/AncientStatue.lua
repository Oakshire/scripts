--[[
    Script Name    : SpawnScripts/DownBelow/AncientStatue.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.08 04:01:07
    Script Purpose : 
                   : 
--]]

local Scepter = 5369 -- An Ancient Scepter

--[[
function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, Scepter) and not HasCompletedQuest(Spawn,  Scepter) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function spawn(NPC)
SetRequiredQuest(NPC, Scepter, 1)
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Replace scepter' then
SetRequiredQuest(NPC, Scepter, 1)
end
end 

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

]]--
function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Replace scepter' then
    local con = CreateConversation()
    if GetQuestStep(Spawn, Scepter) == 1 then
    AddConversationOption(con, "Insert the old scepter you found.", "offer")
    end
    AddConversationOption(con, "Leave it be.")
    StartDialogConversation(con, 1, NPC, Spawn, "This ancient statue's hand has an empty hole, as if something is missing.")
end
end

function offer(NPC, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "Pick up the object.","Offer2")
    AddConversationOption(con, "You decide you'd rather keep the tarnished scepter.")
 StartDialogConversation(con, 1, NPC, Spawn, "As you replace the scepter, you notice a glint near the base of the statue.")
    SetAccessToEntityCommand(Spawn,NPC,"Replace scepter", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
end

function Offer2 (NPC, Spawn)
    SetStepComplete(Spawn, Scepter, 1)
    CloseItemConversation(NPC,Spawn)
end
function check(NPC, Spawn)
    if not HasQuest(Spawn, Scepter) and HasCompletedQuest(Spawn,  Scepter) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"Replace scepter", 0)
end
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, Scepter) then
    SetAccessToEntityCommand(Spawn,NPC,"Replace scepter")
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function respawn(NPC)
	spawn(NPC)
end