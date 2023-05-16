--[[
    Script Name    : SpawnScripts/Antonica/questrunewindstalker.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.15 06:05:34
    Script Purpose : 
                   : 
--]]
local Rune = 5829

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Look under boat' then
      local con = CreateConversation()
        if not HasQuest(Spawn, Rune) and not HasCompletedQuest(Spawn, Rune) then
        AddConversationOption(con, "Grab the runestone!", "offer")
        AddConversationOption(con, "Leave the boat alone.")
        StartDialogConversation(con, 1, NPC, Spawn, "Underneath the boat I found what appears to be a restless runestone. The runestone is a marker used to attract undead to attack or occupy a particular place. Perhaps an army of undead are coming to the area. I should put a stop to this.")
        elseif HasCompletedQuest(Spawn, Rune) then
        AddConversationOption(con, "Whew! That smell is ripe!")
        StartDialogConversation(con, 1, NPC, Spawn, "Under boat you find a rotten fish... and an undead hand? It looks like it was grasping for something no longer there. Perhaps the runestone I removed lured it here originally.")
        PlayFlavor(Spawn,"","","stinky",0,0,Spawn)
        elseif HasQuest(Spawn, Rune) and not HasCompletedQuest(Spawn, Rune) then
        AddConversationOption(con, "I must kill more Caltorsis undead!")
        StartDialogConversation(con, 1, NPC, Spawn, "Underneath the boat I found a restless runestone used to attract undead to attack. I should continue to rid Antonica of these undead!")
        end
end
end


function offer(NPC, Spawn)
    CloseConversation(NPC,Spawn)
    OfferQuest(NPC, Spawn, Rune)
    PerformCameraShake(Spawn, 0.10000001192092896)
    PlaySound(Spawn,"sounds/critters/zombie/flesh/zombie_dead01.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end