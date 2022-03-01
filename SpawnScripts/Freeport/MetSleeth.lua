--[[
    Script Name    : SpawnScripts/Freeport/MetSleeth.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.15 08:09:41
    Script Purpose : 
                   : 
--]]

QUEST = 581

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasQuest(Spawn, QUEST)  then
    conversation = CreateConversation()
    PlayFlavor(NPC, "met_sleeth/freeport_combined/quest/met_sleeth/met_sleeth_001.mp3", "", "", 2855352907, 2371946115, Spawn)
    AddConversationOption(conversation, "I'm not here to shop.  I'm interested in the names of those who buy your fine goods.", "dlg1")
    AddConversationOption(conversation, "I was just browsing.  Goodbye.")
    StartConversation(conversation, NPC, Spawn, "Feel free to peruse my fine goods.")
end
   end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "met_sleeth/freeport_combined/quest/met_sleeth/met_sleeth_002.mp3", "", "hello", 3577021639, 1266525773, Spawn)
 AddConversationOption(conversation, "That may be true.  Just let me see your ledger.", "dlg2")
 AddConversationOption(conversation, "You can prove them wrong by letting me borrow your ledger.", "dlg2")
 AddConversationOption(conversation, "In that case, I'll let you get back to work.  Goodbye.")
 StartConversation(conversation, NPC, Spawn, "Why, no one but the upstanding citizens of Freeport, of course!  I pride myself on honesty and a fair deal.  Anyone who claims otherwise is supporting my competition.  You know how cutthroat business can be, I'm sure.") 
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "met_sleeth/freeport_combined/quest/met_sleeth/met_sleeth_003.mp3", "", "", 293177656, 3918575835, Spawn)
 AddConversationOption(conversation, "I'll be the judge of that.", "dlg3")
 AddConversationOption(conversation, "I'll take you back into an alley and beat the truth out of you.", "dlg5")
 AddConversationOption(conversation, "Of course you do.  Goodbye.")
  StartConversation(conversation, NPC, Spawn, "I can see that you're an honest fellow as well.  You can take me at my word, friend.  The Overlord's will is my own, and I serve Freeport as loyally as a man can.")
end

function dlg3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "met_sleeth/freeport_combined/quest/met_sleeth/met_sleeth_004.mp3", "", "", 3638049348, 3578215535, Spawn)
 AddConversationOption(conversation, "Stop stalling and give me the damned ledger.", "dlg5")
 AddConversationOption(conversation, "A gift, you say?  I'm interested.", "dlg6")
 AddConversationOption(conversation, "I'm not comfortable with this bribe.  Goodbye.")
 StartConversation(conversation, NPC, Spawn, "Well, how about this?  In honor of your hard work and dedication to Freeport, allow me to offer you a complimentary gift.  It's only fair that someone as brave as you is rewarded for your efforts.")
end


function dlg6(NPC, Spawn)
FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "met_sleeth/freeport_combined/quest/met_sleeth/met_sleeth_006.mp3", "", "", 927858891, 4259739021, Spawn)
 AddConversationOption(conversation, "Unity in Freeport, Sleeth.")
 AddConversationOption(conversation, "Consider yourself lucky.")
 StartConversation(conversation, NPC, Spawn, "Of course!  Here you are, friend.  Continue your selfless vigil and protect our city.  Unity in Lucan!")
end





function dlg5(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "met_sleeth/freeport_combined/quest/met_sleeth/met_sleeth_005.mp3", "", "", 3577894168, 3323242970, Spawn)
 AddConversationOption(conversation, "If everything was in order, you wouldn't have held out on me.  Goodbye.")
 StartConversation(conversation, NPC, Spawn, "Fine.  I see there is no reasoning with you.  Take the damned ledger.  I'm sure you'll find that everything is in order.")
end





function respawn(NPC)

end

