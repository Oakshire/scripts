--[[
    Script Name    : SpawnScripts/Freeport/Boomba.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 07:08:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/boomba/fprt_west/mer_boomba.mp3", "", "", 3778038268, 407693409, Spawn)
    AddConversationOption(conversation, "Fine. I'll take a look at your pickles, I guess.")  
    AddConversationOption(conversation, "What's an Ogre selling pickles for? Shouldn't you be destroying something?", "dlg1")
    StartConversation(conversation, NPC, Spawn, "I am Boomba, and I sell pickles.  If you want to talk, find a Teir'Dal.")
end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/boomba/fprt_west/quests/boomba/boomba_flavor.mp3", "", "", 542505696, 1791956842, Spawn)
 AddConversationOption(conversation, "Then I'll use this chance to get out of here.")
 AddConversationOption(conversation, "I meant no offense, Boomba. I was just curious. How long have you been selling pickles?", "dlg2")
 StartConversation(conversation, NPC, Spawn, "You dare insult me? Thank your gods a guard is over there. Once he stops looking at us, I plan on cleaving your skull in two.")
end 

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/boomba/fprt_west/quests/boomba/boomba_flavor2.mp3", "", "", 2578978332, 1737212586, Spawn)
 AddConversationOption(conversation, "I think I'll take a look!")
 StartConversation(conversation, NPC, Spawn, "I'm from a proud line of Boombas. My greatest grand-sire sold pickles at this spot more than five hundreds years ago. Every generation of Boomba has given their firstborn the name of Boomba to honor our greatest ancestor. When I die, my daughter, Boomba, will take my place. I'm tired of talking. Purchase a pickle or leave!")
end

function respawn(NPC)

end

