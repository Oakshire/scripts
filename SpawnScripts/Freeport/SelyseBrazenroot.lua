--[[
    Script Name    : SpawnScripts/Freeport/SelyseBrazenroot.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:04
    Script Purpose : 
                   : 
--]]
local QUEST1 = 577

function spawn(NPC)
 ProvidesQuest(NPC, QUEST1)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if GetRace(Spawn) == 0 then
    if not HasQuest(Spawn, QUEST1) and not HasCompletedQuest(Spawn, QUEST1) then
    PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_001.mp3", "", "", 1119188187, 48635974, Spawn)
    AddConversationOption(conversation, "Wait.  What do you mean?", "dlg01")
    AddConversationOption(conversation, "I'm not following.", "dlg01")
    AddConversationOption(conversation, "Yes, horrible.  Goodbye!")
    StartConversation(conversation, NPC, Spawn, "I tell ya, I'm glad to be out of that damned slum, but to see our clan thrown out like week-old wolf meat?  Terrible!")
    elseif HasQuest(Spawn, QUEST1) and not GetQuestStep(Spawn, QUEST1, 3) then
    PlayFlavor(NPC, "", "Honor your heritage by retrieving the Halasian heirlooms and killing the greedy guards in Scale Yard.", "", 1689589577, 4560189, Spawn)
    elseif HasQuest(Spawn, QUEST1) and GetQuestStep(Spawn, QUEST1, 3) then
    dlg06(NPC, Spawn)
    end
    else
    PlayFlavor(NPC, "", "Glory to The Overlord.", "", 1689589577, 4560189, Spawn)
end
   end

function dlg01(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_002.mp3", "", "", 2780352113, 2800215288, Spawn)
AddConversationOption(conversation, "What was so wrong with it?", "dlg02")
AddConversationOption(conversation, "I know what you mean.", "dlg03")
StartConversation(conversation, NPC, Spawn, "Y'know... Scale Yard.  All of us Northmen were given home in that Freeport ???hood when we arrived from the Outpost of the Overlord.  It was a loathsome place.")
end

function dlg02(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_003.mp3", "", "", 3445608770, 386353370, Spawn)
AddConversationOption(conversation, "Oh, that is bad.", "dlg03")
AddConversationOption(conversation, "I had not realized that.", "dlg03")
StartConversation(conversation, NPC, Spawn, "Aside from its general state of disrepair and filth?  The fact that it had been a detention camp for the iksar before we arrived!")
end

function dlg03(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_004.mp3", "", "", 1494608776, 3430426492, Spawn)
AddConversationOption(conversation, "That's unfortunate.", "dlg04")
AddConversationOption(conversation, "I guess you should have obeyed the orders.", "dlg03_1")
AddConversationOption(conversation, "You can handle it.")
StartConversation(conversation, NPC, Spawn, "So, now ya see why I don't miss hanging me blood-stained kilt there any longer.  But we were forced out of there with little warning when it was decided to turn it back into a prison.  Those that didn't follow the orders to move out in a timely fashion were kicked to the streets with nothing but the shirts on their backs.")
end

function dlg03_1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_006.mp3", "", "", 4026139026, 1883313878, Spawn)
AddConversationOption(conversation, "You should go in there and reclaim them", "dlg05")
StartConversation(conversation, NPC, Spawn, "Oh, I did.  As a member of the Militia I knew better.  But others did not, and it resulted in the loss of many antique and heirloom Halasian objects.  We were promised that the items would be sent along afterward, but we've seen no such shipments.")
end


function dlg04(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_005.mp3", "", "", 1409150471, 1981001632, Spawn)
AddConversationOption(conversation, "You should go in there and reclaim them.", "dlg05")
StartConversation(conversation, NPC, Spawn, "Especially, when it means the loss of many antique and heirloom Halasian objects.  We were promised that the items would be sent along afterward, but we've seen no such shipments.")
end



function dlg05(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_008.mp3", "", "", 141225016, 3926164437, Spawn)
	AddConversationOption(conversation, "I'll take both the items and their lives!", "offer")
        AddConversationOption(conversation, "I'm not going to mess with those guards.")
	StartConversation(conversation, NPC, Spawn, "I agree!  And show them how a Halasian fights, first hand!  But they know me too well, considering my position here.  I could never get away with it.  You, on the other hand, can!  Go in there, get us back our Halasian heirlooms, and kill the greedy guards that are hoarding them.")
end

function dlg06(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_009.mp3", "", "", 3247274285, 200045010, Spawn)
AddConversationOption(conversation, "It was invigorating!", "complete")
AddConversationOption(conversation, "I wouldn't call it a mauling.", "dlg07")
StartConversation(conversation, NPC, Spawn, "You've honored your heritage by retrieving the Halasian heirlooms from Scale Yard, "..GetName(Spawn).."  How did it feel mauling those greedy guards?")
end

function dlg07(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_010.mp3", "", "", 2533066692, 351799116, Spawn)
AddConversationOption(conversation, "Speaking of Halas, why don't you move there?")
StartConversation(conversation, NPC, Spawn, "You can call it what ya like.  This Halasian likes that they're dead!")
end




function complete(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST1, 3)
end



function offer(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        OfferQuest(NPC, Spawn, QUEST1)
end

function respawn(NPC)
         spawn(NPC)
end

