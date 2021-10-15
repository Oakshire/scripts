--[[
    Script Name    : SpawnScripts/Feerrott/widgetcampfire.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.14 07:10:52
    Script Purpose : 
                   : 
--]]

local VisionsOfFlame = 5370 -- Visions of Flame quest

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'examine fire' then
      local con = CreateConversation()
       AddConversationOption(con, "Gaze into flames.", "offer")
        AddConversationOption(con, "Ignore it.")
        StartDialogConversation(con, 1, NPC, Spawn, "You find a flickering camp fire.")
end
end

function offer(NPC, Spawn)
       OfferQuest(NPC, Spawn, VisionsOfFlame)
       local con = CreateConversation()
     AddConversationOption(con, "I will slay them.")
      AddConversationOption(con, "exit")
 StartDialogConversation(con, 1, NPC, Spawn, "As you gaze into the flames you begin to see flickering images of the lizardmen of the Feerott gathering in force and spilling out into the Commonlands and Antonica.  They should be stopped before this prophecy ever comes to pass!")
        SetAccessToEntityCommand(Spawn,NPC,"examine fire", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, VisionsOfFlame) or HasCompletedQuest(Spawn, VisionsOfFlame) then
      SetAccessToEntityCommand(Spawn,NPC,"examine fire", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function check(NPC, Spawn)
     if not HasQuest(Spawn, VisionsOfFlame) and not HasCompletedQuest(Spawn,  VisionsOfFlame) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine fire", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end