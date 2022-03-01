--[[
    Script Name    : SpawnScripts/RuinsVarsoon/abubblingbeaker.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.22 04:01:10
    Script Purpose : 
                   : 
--]]

local Acidic = 5449

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'pick up the beaker' then
    local con = CreateConversation()
    AddConversationOption(con, "Drink it. What harm could it do?", "DeathByAcid") -- a little something special I cooked up.
    AddConversationOption(con, "Pour a bit of the liquid onto the ground.", "offer")
    AddConversationOption(con, "Throw it down before whatever liquid contained within can cause you harm")
    StartDialogConversation(con, 1, NPC, Spawn, "A mysterious liquid seems to be bubbling of its own volition within the beaker. Each air pocket rising from the mixture lets out a slight puff of smoke, but the area around the beaker doesn't feel warm to the touch at all.")
end
end

function offer(NPC, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "Wrack your brain to think of who would be interested in this mixture.","Offer2")
    AddConversationOption(con, "Dump the entire beaker out.")
 StartDialogConversation(con, 1, NPC, Spawn, "The ground boils and bubbles away as the liquid eats a hole in it. Thankfully you didn't decide to test it by drinking it!")
    SetAccessToEntityCommand(Spawn,NPC,"pick up the beaker", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
end

function KeepMix (NPC, Spawn)
    OfferQuest(NPC, Spawn, Acidic)
    CloseConversation(NPC, Spawn)
end

function DeathByAcid(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "Ugh..")
    StartDialogConversation(con, 1, NPC, Spawn, "Was that really a wise idea?")
    PlayAnimation(Spawn, 308)
    AddTimer(NPC, 5000, "Death", 1, Spawn)
end

function Death(NPC,Spawn)
    KillSpawn(Spawn,NPC)
end

function Offer2(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "Keep the mixture and find someone willing to buy it.","KeepMix")
    StartDialogConversation(con, 1, NPC, Spawn, "It's possible that a mage would have a better use for it; it certainly seems that a mage created it. However, perhaps someone with more nimble fingers would find a more clever use... a rogue? Perhaps a locksmith? There are certainly a few in Qeynos who might be interested...")
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, Acidic) or HasCompletedQuest(Spawn, Acidic) then
    SetAccessToEntityCommand(Spawn,NPC,"pick up the beaker", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function check(NPC, Spawn)
    if not HasQuest(Spawn, Acidic) and not HasCompletedQuest(Spawn,  Acidic) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"pick up the beaker", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end