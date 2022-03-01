--[[
    Script Name    : SpawnScripts/Freeport/ClanChiefMalachiSleetsaber.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 06:08:43
    Script Purpose : 
                   : 
--]]
local TheHiddenNewHalasian = 578


function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetQuestStep(Spawn, TheHiddenNewHalasian) == 2  then
    conversation = CreateConversation()
    PlayFlavor(NPC, "clan_chief_malachi_sleetsaber/freeport_combined/quest/racial/barbarian/chief_malachi_sleetsaber_001.mp3", "", "hello", 1526248790, 2883383247, Spawn)
    AddConversationOption(conversation, "A little of both.", "dlg1")
    AddConversationOption(conversation, "Looking for it!", "dlg1")
    AddConversationOption(conversation, "Betting it will find me.", "dlg1")
    StartConversation(conversation, NPC, Spawn, "Hello there, little cub!  You lookin' for trouble, or waiting for it to find you?")
    else
    PlayFlavor(NPC, "", "Watch what troubles ya find, or find you in this great city.  A back is a fine place to sheathe an axe!", "", 1689589577, 4560189, Spawn)
end
   end

function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "clan_chief_malachi_sleetsaber/freeport_combined/quest/racial/barbarian/chief_malachi_sleetsaber_002.mp3", "", "laugh", 3224838411, 1376325030, Spawn)
AddConversationOption(conversation, "If you don't like the rules or the ruler, you could move to New Halas.", "dlg2")
StartConversation(conversation, NPC, Spawn, "Ha!  I like yer style.  Just keep an eye out for the guards.  Ya don't want that brand o' trouble.  Trust me.")
end




function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "clan_chief_malachi_sleetsaber/freeport_combined/quest/racial/barbarian/chief_malachi_sleetsaber_003.mp3", "", "", 1528743312, 919033802, Spawn)
AddConversationOption(conversation, "Oh, wow!", "dlg3")
StartConversation(conversation, NPC, Spawn, "That I could!  And don't be thinking I didn't have the same thought some time ago.  When I was a wee cub, Halas was all me gram fed me!  I lived off tales of ancient adventure in Frosteye Valley, slaughtering gobos in Freezeblood Village, or exorcising ghosts in Greyvax's Caves.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, TheHiddenNewHalasian, 2)
conversation = CreateConversation()
PlayFlavor(NPC, "clan_chief_malachi_sleetsaber/freeport_combined/quest/racial/barbarian/chief_malachi_sleetsaber_004.mp3", "", "nod", 3850348152, 3020820417, Spawn)
AddConversationOption(conversation, "Yeah, too bad it doesn't live up to its namesake.")
StartConversation(conversation, NPC, Spawn, "And for years, here in Freeport, I dreamed of a time when we might make Halas anew.  But that town on Erollis is not Halas, it is not a city for Northmen.  There are others that feel this way, too.")
end



function respawn(NPC)

end
