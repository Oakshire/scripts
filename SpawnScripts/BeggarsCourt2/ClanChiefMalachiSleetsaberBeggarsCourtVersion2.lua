--[[
    Script Name    : SpawnScripts/BeggarsCourt2/ClanChiefMalachiSleetsaberBeggarsCourtVersion2.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.03 06:09:17
    Script Purpose : 
                   : 
--]]

QUEST = 579

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "OutRange")
end
  




function InRange(NPC, Spawn) 
hailed(NPC, Spawn) 
if not HasQuest(Spawn, QUEST) or GetQuestStep(Spawn, QUEST) == 8 then
Despawn(NPC)
end
   end

function OutRange(NPC, Spawn)
end


function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  if GetQuestStep(Spawn, QUEST) == 6 then
  local conversation = CreateConversation()
  PlayFlavor(NPC, "clan_chief_malachi_sleetsaber/freeport_combined/quest/racial/barbarian/chief_malachi_sleetsaber_005.mp3", "", "", 3795501104, 75086374, Spawn)
  AddConversationOption(conversation, "I think not, Clan Chief.  Your bluster does not fool me!", "dlg1")
  StartConversation(conversation, NPC, Spawn, "Stand down, little cub, else I'll paint my stoop with yer blood!")
 elseif GetQuestStep(Spawn, QUEST) == 7 then
 PlayFlavor(NPC, "", "Return to the meeting room.  I will do as you wish.", "", 1689589577, 4560189, Spawn)
end
   end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local conversation = CreateConversation()
 PlayFlavor(NPC, "clan_chief_malachi_sleetsaber/freeport_combined/quest/racial/barbarian/chief_malachi_sleetsaber_006.mp3", "", "", 3195621340, 4264838561, Spawn)
 AddConversationOption(conversation, "Yes, and I will be forced to gut you, too, along side your wife, unless you do as I say.", "dlg2")
 StartConversation(conversation, NPC, Spawn, "You... you killed my wolves!")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local conversation = CreateConversation()
 PlayFlavor(NPC, "clan_chief_malachi_sleetsaber/freeport_combined/quest/racial/barbarian/chief_malachi_sleetsaber_007.mp3", "", "scold", 402926634, 867712435, Spawn)
 AddConversationOption(conversation, "You must use your charisma and title to convince our barbarian brethren to stay within Freeport.", "dlg3")
 StartConversation(conversation, NPC, Spawn, "What is this?  What do you demand of me?")
end

function dlg3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 local conversation = CreateConversation()
 PlayFlavor(NPC, "clan_chief_malachi_sleetsaber/freeport_combined/quest/racial/barbarian/chief_malachi_sleetsaber_008.mp3", "", "", 1635002950, 918148220, Spawn)
 AddConversationOption(conversation, "For the good of those you know and love.", "dlg4")
 StartConversation(conversation, NPC, Spawn, "Why should I, aside from saving my own skin?")
end

function dlg4(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, QUEST, 6)
 local conversation = CreateConversation()
 PlayFlavor(NPC, "clan_chief_malachi_sleetsaber/freeport_combined/quest/racial/barbarian/chief_malachi_sleetsaber_009.mp3", "", "", 2982382707, 225924876, Spawn)
 AddConversationOption(conversation, "Wise decision.")
 StartConversation(conversation, NPC, Spawn, "Return to the meeting room.  I will do as you wish.")
end





function respawn(NPC)
         spawn(NPC)
end