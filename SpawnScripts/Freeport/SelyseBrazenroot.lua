--[[
    Script Name    : SpawnScripts/Freeport/SelyseBrazenroot.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:04
    Script Purpose : 
                   : 
--]]
local QUEST1 = 577
local QUEST2 = 578
local QUEST3 = 579


function spawn(NPC)
 ProvidesQuest(NPC, QUEST1)
 ProvidesQuest(NPC, QUEST2)
 ProvidesQuest(NPC, QUEST3)
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
    elseif HasCompletedQuest(Spawn, QUEST1) and not HasQuest(Spawn, QUEST2) and not HasCompletedQuest(Spawn, QUEST2) then
    dlg08(NPC, Spawn)
    elseif HasQuest(Spawn, QUEST2) and GetQuestStep(Spawn, QUEST2) < 5 then
    PlayFlavor(NPC, "", "Be sure to speak with each and every one of those suspects.  We have to find out who is preaching this message of defection to New Halas.", "", 1689589577, 4560189, Spawn)
    elseif HasQuest(Spawn, QUEST2) and GetQuestStep(Spawn, QUEST2) == 5 then
    dlg13(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, QUEST2) and not HasQuest(Spawn, QUEST3) and not HasCompletedQuest(Spawn, QUEST3) then
    dlg14(NPC, Spawn)
    elseif GetQuestStep(Spawn, QUEST3) == 8 then
    dlg18(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, QUEST1) and HasCompletedQuest(Spawn, QUEST2) and HasCompletedQuest(Spawn, QUEST3) then
    PlayFlavor(NPC, "", "You make our ancestors proud, "..GetName(Spawn).."!  Go forth; bare your teeth and cull the weak, my friend!", "",  1689589577, 4560189, Spawn)
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
AddConversationOption(conversation, "It was invigorating!", "complete1")
AddConversationOption(conversation, "I wouldn't call it a mauling.", "dlg07")
StartConversation(conversation, NPC, Spawn, "You've honored your heritage by retrieving the Halasian heirlooms from Scale Yard, "..GetName(Spawn).."  How did it feel mauling those greedy guards?")
end

function dlg07(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST1, 3)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_010.mp3", "", "", 2533066692, 351799116, Spawn)
AddConversationOption(conversation, "Speaking of Halas, why don't you move there?", "dlg08")
StartConversation(conversation, NPC, Spawn, "You can call it what ya like.  This Halasian likes that they're dead!")
end


function dlg08(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_012.mp3", "", "", 3597618993, 2154374839, Spawn)
AddConversationOption(conversation, "A little too goodie-goody, huh?", "dlg09")
StartConversation(conversation, NPC, Spawn, "Let it be known that there is a frozen sea of difference between New Halas and Halas.  Don't ya be fooled!  Many of those that moved to New Halas came lumbering back, cursing Marr to the Ethernere for having established the city and making it a beacon for Truth and Love.")
end



function complete1(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST1, 3)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_011.mp3", "", "", 592397197, 4111904685, Spawn)
AddConversationOption(conversation, "Speaking of Halas, why don't you move there?", "dlg08")
StartConversation(conversation, NPC, Spawn, "Ha!  A Halasian after me own frigid heart!")
end

function dlg09(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_013.mp3", "", "", 4148197515, 1288700917, Spawn)
AddConversationOption(conversation, "Supply and demand.", "dlg10")
StartConversation(conversation, NPC, Spawn, "Exactly.  Halas was a barbarian city free to follow Rallos Zek, The Tribunal, Mithaniel or Erollisi.  It should not be founded on melting concepts of good or evil.  I have heard of some Northmen living there, providing less reputable services to the citizens, for a hefty coin.")
end

function dlg10(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_014.mp3", "", "", 148258916, 4065934826, Spawn)
AddConversationOption(conversation, "So, the Northmen are split on this issue?", "dlg11")
StartConversation(conversation, NPC, Spawn, "That may even explain why some fools continue to preach that we should move there.")
end

function dlg11(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_015.mp3", "", "", 2910936644, 1886456939, Spawn)
AddConversationOption(conversation, "You bet your kilt!", "dlg12")
AddConversationOption(conversation, "Tell me more about it.", "dlg12")
AddConversationOption(conversation, "No, not this time.")
StartConversation(conversation, NPC, Spawn, "Like a gobbo's skull cleaved by my axe!  Just as we be on many things.  The difference being, preaching this message of defection is bound to land ya, and all of them ya hold dear, in a shallow grave... or worse.  I don't know who's behind it, but I have my suspicions.  Ya feel up to the task?")
end


function dlg12(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_016.mp3")
AddConversationOption(conversation, "I'll do it.", "offer2")
AddConversationOption(conversation, "You can find another barbarian to chat them up.")
StartConversation(conversation, NPC, Spawn, "There's four Northmen who I suspect may be the ones encouraging the move to New Halas.  I need someone that they don't know to speak with them on the topics of New Halas and religion.  I bet they'll reveal themselves with that bait, "..GetName(Spawn)..".")
end

function dlg13(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_017.mp3", "", "", 326365756, 1910070032, Spawn)
AddConversationOption(conversation, "Yes. Gerhild Maclennan admitted her faith in Love.  But I dealt with her.", "complete2")
StartConversation(conversation, NPC, Spawn, "Glad to see ya've returned, "..GetName(Spawn)..".  Did any of them take the bait?")
end

function complete2(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST2, 5)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_019.mp3", "", "", 2898618356, 835984458, Spawn)
AddConversationOption(conversation, "I didn't?!", "dlg14")
StartConversation(conversation, NPC, Spawn, "You may have dealt with someone with an inclination toward New Halas, but you did not sever the head from this beast.")
end


function dlg14(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_020.mp3", "", "", 1474636537, 2379671147, Spawn)
AddConversationOption(conversation, "And how are you to ''deal with it''?", "dlg15")
AddConversationOption(conversation, "The Overlord?  You have your orders then.  Goodbye!")
StartConversation(conversation, NPC, Spawn, "There has been more talk amongst our Northmen brothers and sisters.  It has been growing ever since we were forced from Scale yard and into Beggar's Court.  The Overlord is aware of the rising popularity in barbarian relocation to New Halas.  He has commanded The Militia to deal with it.")
end


function dlg15(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_021.mp3", "", "", 1714203856, 3757134511, Spawn)
AddConversationOption(conversation, "That makes sense.", "dlg16")
AddConversationOption(conversation, "Killing them would be fun though.", "dlg17")
StartConversation(conversation, NPC, Spawn, "I suggested we coerce them into changing their minds!  It's more effective than watching the offenders bleed out upon the cobbled streets.  Killing the traitors would only persuade more to consider their message, and there is no guarantee that all of them would be slain, anyway.")
end

function dlg16(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_022.mp3", "", "", 3870033274, 1910681182, Spawn)
AddConversationOption(conversation, "How should I coerce them?", "dlg17")
AddConversationOption(conversation, "Good luck with that!")
StartConversation(conversation, NPC, Spawn, "I know damned well that the situation in Beggar's Court is not the best, but I'm convinced that it is better than it was in Scale Yard.  You'll have better luck identifying the true leader of this movement within Beggar's Court.")
end

function dlg17(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_023.mp3", "", "", 3880259447, 4087733008, Spawn)
AddConversationOption(conversation, "I will succeed.", "offer3")
AddConversationOption(conversation, "I can't be a part of this.")
StartConversation(conversation, NPC, Spawn, "I don't care what ya do; threaten their family, burn down their house.  Do what you must to force them into being a happy citizen of Freeport!")
end

function dlg18(NPC, Spawn)
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_024.mp3", "", "",  596545421, 406094570, Spawn)
AddConversationOption(conversation, "I was.  Clan Chief Sleetsaber gave a convincing speech to all.", "complete3")
StartConversation(conversation, NPC, Spawn, "You look quite pleased, "..GetName(Spawn)..".  Tell me, were you able to cleave some sense into the would-be betrayer?")
end

function complete3(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, QUEST3, 8)
local conversation = CreateConversation()
PlayFlavor(NPC, "selyse_brazenroot/freeport_combined/quest/racial/barbarian/selyse_brazenroot_025.mp3", "", "", 1770656376, 337080574, Spawn)
AddConversationOption(conversation, "I plan on it!")
StartConversation(conversation, NPC, Spawn, "That is good news!  You have made our ancestors proud this day!  Go forth; bare your teeth and cull the weak, my friend!")
end


function offer(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        OfferQuest(NPC, Spawn, QUEST1)
end

  function offer2(NPC, Spawn)
        FaceTarget(NPC, Spawn)
        OfferQuest(NPC, Spawn, QUEST2)
end

function offer3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   OfferQuest(NPC, Spawn, QUEST3)
end


function respawn(NPC)
         spawn(NPC)
end

