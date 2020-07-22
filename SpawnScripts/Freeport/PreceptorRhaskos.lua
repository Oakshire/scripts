--[[
    Script Name    : SpawnScripts/Freeport/PreceptorRhaskos.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.21 08:07:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

 end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    
    PlayFlavor(NPC, "preceptor_rhaskos/fprt_south/ranger_lore_dissenter/ranger_lore_dissenter001.mp3", "", "",  2211187070, 1298479856, Spawn)
    AddConversationOption(conversation, "You're speaking of the Red Hoods, I assume?", "dlg1")
    StartConversation(conversation, NPC, Spawn, "Bloody rangers! Their kind 'ave no business 'ere.")
 end


function dlg1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
    
   PlayFlavor(NPC, "preceptor_rhaskos/fprt_south/ranger_lore_dissenter/ranger_lore_dissenter002.mp3", "", "", 1677331553, 2445901578, Spawn)
   AddConversationOption(conversation, "They work for the Overlord?", "dlg2")
   StartConversation(conversation, NPC, Spawn, "Bloody right I am! I 'ear they 'ave eyes 'an ears everywhere! Gods 'elp ya should they 'ear ya speak an ill word 'bout the Overlord.")
 end

function dlg2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
    
   PlayFlavor(NPC, "preceptor_rhaskos/fprt_south/ranger_lore_dissenter/ranger_lore_dissenter003.mp3", "", "",  215011344, 5710075, Spawn)
   AddConversationOption(conversation, "Continue.", "dlg3")
   StartConversation(conversation, NPC, Spawn, "Aye, though not directly. Rumor 'as it that their leader, some bloke named Jackal, came 'ere lookin' to settle a score wit one o' dem nasty Bloodskull orcs. Seems he an 'is mates were causin' a bit of a ruckus out there in the Commonlands, attackin' travelers, orcish or otherwise.")
 end

function dlg3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "preceptor_rhaskos/fprt_south/ranger_lore_dissenter/ranger_lore_dissenter004.mp3", "", "",  1997693224, 466961400, Spawn)
   AddConversationOption(conversation, "What happened to Jackal?", "dlg4")
   StartConversation(conversation, NPC, Spawn, "Well, with all the madness 'appening 'round 'ere after the Overlord's disappearance, the Militia and the Lucanic Knights 'ad their hands full. The Commonlands quickly became a very dangerous place.  Once ol' one-eye returned, however, he wasted little time before sendin' out 'is Knights to apprehend the criminals.")
 end

function dlg4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "preceptor_rhaskos/fprt_south/ranger_lore_dissenter/ranger_lore_dissenter005.mp3", "", "",  3252808070, 94122382, Spawn)
   AddConversationOption(conversation, "Continue.", "dlg5")
   StartConversation(conversation, NPC, Spawn, "The Lucanic Knights did eventually track down Jackal and 'is merry band o' thieves. I don' know what 'appened when they met, but it's obvious the Overlord 'as come to some sorta agreement wit these Red Hoods. Now the same bloody lot who once robbed us is walkin' about plain as day through our city.")
end

function dlg5(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()

  PlayFlavor(NPC, "preceptor_rhaskos/fprt_south/ranger_lore_dissenter/ranger_lore_dissenter006.mp3", "", "",  2582128382, 3484254378, Spawn)
  AddConversationOption(conversation, "Thanks for the information.", "dlg6")
  StartConversation(conversation, NPC, Spawn, "I even seen some 'o them train'n Militia members to become archers. Bloody wonderful that is! Only in Freeport can you be shot in the bloody 'ead by some greenhorn ranger as you walk to the bloody farmer's market.")
 end
 
function dlg6(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "preceptor_rhaskos/fprt_south/ranger_lore_dissenter/ranger_lore_dissenter007.mp3", "", "",  4051704942, 604129542, Spawn)
  AddConversationOption(conversation, "Right.")
  StartConversation(conversation, NPC, Spawn, "Aye. Life in Freeport is a fickle existence. Wear a bloody 'elmet.")
 end


function respawn(NPC)

 end

