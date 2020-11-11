--[[
    Script Name    : SpawnScripts/VerminSnye/ZaenKalystir.lua
    Script Author  : premierio015
    Script Date    : 2020.05.03 03:05:34
    Script Purpose : Zaen Kalystir Dialog
    Script Notes   : Offer Quests "Ruins of Varsoon Investigation Of The Mausoleum(532)", "Ruins of Varsoon: Revealing the Entrance(532)".
--]]

local roviotm = 532   -- Ruins of Varsoon: Investigation Of The Mausoleum
local rovrte = 534  -- Ruins of Varsoon: Revealing the Entrance

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange", Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaenkalystir000.mp3", "", "", 2139010176, 3598277774, Spawn)
    AddConversationOption(conversation, "I'll get going then if you don't want my help. ")
    if not HasQuest(Spawn, roviotm) and not HasCompletedQuest(Spawn, roviotm) then
    AddConversationOption(conversation, "I just wanted to find out if you needed help down here.", "dlg01")
    elseif GetQuestStep(Spawn, roviotm) == 2 then
    AddConversationOption(conversation, "Yeah, thanks a ton for letting me know about the undead.", "dlg01_03")
    elseif HasCompletedQuest(Spawn, roviotm) and not HasCompletedQuest (Spawn, rovrte) then
    AddConversationOption(conversation, "I'm willing to work for you now.", "dlg01_05")
    elseif GetQuestStep(Spawn, rovrte) == 2  then
    AddConversationOption(conversation, "Even more undead... but I found the area you were looking for.", "dlg02")
    elseif GetQuestStep(Spawn, rovrte) == 4 then
    AddConversationOption(conversation, "The key you requested now hangs from my own neck.", "dlg02_03")
    end
    StartConversation(conversation, NPC, Spawn, "Who are you, and why are you interrupting my work?  As if it's not bad enough in the catacombs, beset by beasts on all sides, I have to listen to your prattle as well?")
    end


function dlg01(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaenkalystir001.mp3", "", "", 4133661300, 3305124382, Spawn)
  AddConversationOption(conversation, "What would you have me do to prove that I am trustworthy, Zaen?", "dlg01_02")
  AddConversationOption(conversation, "No thanks.")
  StartConversation(conversation, NPC, Spawn, "That depends ... I have need of someone, but I do not know if I can trust you ... perhaps if you prove you're trustworthy then I can speak with you of more important events and their significance. I suppose I should actually introduce myself, though. I am Zaen Kalystir, a ... long time ... resident ... of Qeynos.")
end

function dlg01_02(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, roviotm)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaenkalystir002.mp3", "", "", 2969583789, 4109517252, Spawn)
 AddConversationOption(conversation, "Very well, I shall do so.")
 StartConversation(conversation, NPC, Spawn, "There is an ancient crypt just north of Qeynos, which held a once-powerful lich named Varsoon. If you go to this place, it is said the dead will speak with the living about events past and present. Mostly believed to be a rumor, I now think there may be more to this than was previously thought.  Go, and go quickly. Do not forget what is said.")
end


function dlg01_03(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaenkalystir003.mp3", "", "", 206522910, 1176970855, Spawn)
 AddConversationOption(conversation, "They spoke of their master, researching in peace.", "dlg01_04")
 StartConversation(conversation, NPC, Spawn, "So you did... meet them?  I thought I mentioned that to you... I guess I must have left it out. Purely accidental, I assure you.  Now... what did they say?  Out with it, and I'll let you in on what you can do for me if I can trust you.")
end

function dlg01_04(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, roviotm, 2)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaenkalystir004.mp3", "", "", 857926629, 2251167415, Spawn)
 AddConversationOption(conversation, "Yes, I believe we can perhaps help each other here...", "dlg01_05")
 AddConversationOption(conversation, "I think this is a bit too dangerous for me. ")
 StartConversation(conversation, NPC, Spawn, "Excellent... I trust you don't believe any of their misleading information... it would be a shame that the dead convinced you their lich-master was up to no good... The lich we are speaking of is of course Varsoon, one of the greatest enemies of this fair city.  He must not be allowed to rise. Are you willing to work for me?")
 end
 
function dlg01_05(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, rovrte)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaenkalystir005.mp3", "", "", 3727042667, 450556516, Spawn)
 AddConversationOption(conversation, "I'll find it.")
 StartConversation(conversation, NPC, Spawn, "Then go swiftly to the Thundering Steppes.  I believe it is there that you shall find Varsoon's new lair.  A previous stronghold of his, the Keep of Immortality, lays in ruins there.  My... informants... report a much larger number of undead than is usual for the area. You must find the entrance to his new dwelling and return to me with this information.")
 end


function dlg02(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, rovrte, 2)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaenkalystir006.mp3", "", "", 2478413998, 2228458144, Spawn)
 AddConversationOption(conversation, "Here we go again...", "dlg02_02")
 StartConversation(conversation, NPC, Spawn, "You don't disappoint, that's for certain. One last task I have for you now... Certainly it will not be a challenge for you...")
end


function dlg02_02(NPC,Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaenkalystir007.mp3", "", "", 894539318, 4057027116, Spawn)
 AddConversationOption(conversation, "I'm not so sure... but I suppose I don't have a choice.")
 StartConversation(conversation, NPC, Spawn, "In the next level of the catacombs, you'll find the ancient skeletal remains of one of the original druids to imprison Varsoon.  Around its neck, it wears a key to the keep, pulled from the lich-king's body before it was entombed.  Get that key and return to me.  Do not disturb me until you are able to retrieve it.")
end	

function dlg02_03(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, rovrte, 4)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaenkalystir008.mp3", "", "", 81391876, 574533119, Spawn)
 AddConversationOption(conversation, "I'll do what I can.")
 StartConversation(conversation, NPC, Spawn, "Splendid... you have done quite well.  You must interfere with Varsoon's plans. That key you now possess will allow you access to his lair.  Let him know... that Qeynos shall once again prevent his evil from spreading!")
end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/zaen_kalystir/qey_catacomb02/zaen_kalystir_zaen_intro_fd754eff.mp3", "Blasted beetles, snakes, undead, and Bloodsabers!  Now you? Outta here!", "", 3736586527, 92716793, Spawn)
end

function LeaveRange(NPC, Spawn)

end