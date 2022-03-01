--[[
    Script Name    : SpawnScripts/RuinsVarsoon/widgetvarsoonscroll.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.23 04:01:58
    Script Purpose : 
                   : 
--]]

local BookBiting = 5451

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'inspect the scroll' then
    local con = CreateConversation()
    AddConversationOption(con, "Read scroll.", "offer")
    AddConversationOption(con, "Ignore scroll.")
    StartDialogConversation(con, 1, NPC, Spawn, "You find a dusty scroll on the shelf.")
end
end

function offer(NPC, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "I will destroy them.","Offer2")
    AddConversationOption(con, "Roll the scroll back up and ignore it.")
 StartDialogConversation(con, 1, NPC, Spawn, "Unrolling the dusty scroll you read: 'Do not judge a book by its cover. Some avid scholars claim to consume books, in the Ruins of Varsoon the enchanted tomes consume you!' I should destroy these tomes before they harm any unwary adventurer.")
    SetAccessToEntityCommand(Spawn,NPC,"inspect the scroll", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
end

function Offer2 (NPC, Spawn)
    OfferQuest(NPC, Spawn, BookBiting)
    CloseItemConversation(NPC,Spawn)
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, BookBiting) or HasCompletedQuest(Spawn, BookBiting) then
    SetAccessToEntityCommand(Spawn,NPC,"inspect the scroll", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function check(NPC, Spawn)
    if not HasQuest(Spawn, BookBiting) and not HasCompletedQuest(Spawn,  BookBiting) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"inspect the scroll", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end