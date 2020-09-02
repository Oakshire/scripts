--[[
    Script Name    : SpawnScripts/Freeport/GerhildMaclennan.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.30 07:08:48
    Script Purpose : 
                   : 
--]]

local TheHiddenNewHalasian = 578

function spawn(NPC)
 SetPlayerProximityFunction(NPC, 50, "InRange", "InRange")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetQuestStep(Spawn, TheHiddenNewHalasian) == 3 then
    conversation = CreateConversation()
    PlayFlavor(NPC, "gerhild_maclennan/freeport_combined/quest/racial/barbarian/gerhild_maclennan_001.mp3", "", "", 1385565985, 2770955771, Spawn)
    AddConversationOption(conversation, "A question of faith.", "dlg1")
    StartConversation(conversation, NPC, Spawn, "What brings you in, this day?") 
end
   end

function dlg1(NPC, Spawn)
  FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "gerhild_maclennan/freeport_combined/quest/racial/barbarian/gerhild_maclennan_002.mp3", "", "", 769732258, 2457685776, Spawn)
 AddConversationOption(conversation, "It can certainly shake one's faith." , "dlg2")
 StartConversation(conversation, NPC, Spawn, "Oddly, a common enough topic in these days.  Seems ya can't go a season without gods rising, falling or ascending.")
end

function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "gerhild_maclennan/freeport_combined/quest/racial/barbarian/gerhild_maclennan_003.mp3", "", "", 2945748388, 2492751437, Spawn)
AddConversationOption(conversation, "You didn't?", "dlg3")
StartConversation(conversation, NPC, Spawn, "Agreed.  I watched as many had to reevaluate their faith due to Rallos Zek's death.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "gerhild_maclennan/freeport_combined/quest/racial/barbarian/gerhild_maclennan_004.mp3", "", "no", 2147169257, 517808444, Spawn)
AddConversationOption(conversation, "You have revealed your true feelings!", "fight")
AddConversationOption(conversation, "You should be careful who you admit that to.", "onyourway")
StartConversation(conversation, NPC, Spawn, "No.  The Warlord's death did nothing to shake my faith.  On the other hand, learning of Erollisi's death shook my faith greatly!  If truth be told, I've often given thought to visiting New Halas.  I could see the Cairn of The Huntress, the statue crafted by Varig Ro commemorating her.")
end

function fight(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "I will not stand here and take such judgment!", "", 1689589577, 4560189, Spawn)
SetStepComplete(Spawn, TheHiddenNewHalasian, 3)
SpawnSet(NPC, "attackable", 1)
SpawnSet(NPC, "show_level", 1)
SpawnSet(NPC, "faction", 1)
Attack(NPC, Spawn)
end

function onyourway(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, TheHiddenNewHalasian, 3)
PlayFlavor(NPC, "", "Be on your way. My work does not concern you.", "", 1689589577, 4560189, Spawn)
end

function InRange(NPC, Spawn)
PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end




function respawn(NPC)
         spawn(NPC)
end