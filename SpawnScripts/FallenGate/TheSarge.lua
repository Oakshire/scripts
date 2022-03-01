--[[
    Script Name    : SpawnScripts/FallenGate/TheSarge.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 08:07:41
    Script Purpose : 
                   : 
--]]

local ChargeOfTheLeatherfootBrigade_Tippytoe = 5308
local ChargeOfTheLeatherfootBrigade_Doopy = 5309 
local ChargeOfTheLeatherfootBrigade_Frambert = 5310
local ChargeOfTheLeatherfootBrigade_TheSarge = 5311

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end


function InRange(NPC, Spawn)
  if not HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) and not  HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) then
  ProvidesQuest(NPC, ChargeOfTheLeatherfootBrigade_Tippytoe)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) then
  ProvidesQuest(NPC, ChargeOfTheLeatherfootBrigade_Doopy)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) then
  ProvidesQuest(NPC, ChargeOfTheLeatherfootBrigade_Frambert)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) then
   ProvidesQuest(NPC, ChargeOfTheLeatherfootBrigade_TheSarge)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)   
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) and not HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) then
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge001.mp3", "", "", 3416054820, 2332283165, Spawn)
	AddConversationOption(conversation, "What on Norrath are you talking about, ghost?", "offer_quest1")
	AddConversationOption(conversation, "I've got better things to do than talk with some crazy old ghost.")
	StartConversation(conversation, NPC, Spawn, "Listen up, men! We gotta remember why we're here, got it!? This ain't a game of smack the brownie! And if I see any more of you cryin' for yer mommas, well ... I'll yell louder, understand! Lumpy Rumblebelly here's gonna do the scoutin'. Whassat? Ugh ... fine! Special Agent Tippytoes gonna do the scoutin' before we do the deed.")
	elseif GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) <= 3 or GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) <= 3 or GetQuestStep(Spawn,  ChargeOfTheLeatherfootBrigade_Frambert) <= 2 or GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) <= 2  then
	QuestProgress(NPC, Spawn)
	elseif GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) == 4 then
	Option1(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) and not HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) then
	Option2(NPC, Spawn)
	elseif GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) == 4  then
	Option3(NPC, Spawn)
	elseif HasCompletedQuest(Spawn,  ChargeOfTheLeatherfootBrigade_Tippytoe) and HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) and not HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Frambert) then
	Option4(NPC, Spawn)
	elseif GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_Frambert) == 3 then
	Option5(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) and HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) and HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Frambert) and not HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) then
	Option6(NPC, Spawn)
	elseif GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) == 3 then
    Option7(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) and HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) and HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Frambert) and HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) then
    QuestFinish(NPC, Spawn)
end
   end

function offer_quest1(NPC, Spawn)
OfferQuest(NPC, Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe)
end

function offer_quest2(NPC, Spawn)
OfferQuest(NPC, Spawn, ChargeOfTheLeatherfootBrigade_Doopy)
end

function offer_quest3(NPC, Spawn)
OfferQuest(NPC, Spawn, ChargeOfTheLeatherfootBrigade_Frambert)    
end   

function offer_quest4(NPC, Spawn)
OfferQuest(NPC, Spawn, ChargeOfTheLeatherfootBrigade_TheSarge)
end

function Option1(NPC, Spawn)
    SetStepComplete(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe, 4)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge003.mp3", "", "", 89231092, 838705811, Spawn)
    AddConversationOption(conversation, "I'm not Doopy!  I'm Tippytoe, remember?  Err... I'm " .. GetName(Spawn) .."!", "Option2")
	AddConversationOption(conversation, "I'm not taking any more orders from a ghost!  Bye!")
	StartConversation(conversation, NPC, Spawn, "Where is that dagnabbin' Lump--Tippytoe? He should've been back hours ago. If his ma finds out we lost him... arrgh... he's better be all right! He's gotta! I guess we gotta move onto Plan B. Listen up, Private Doopy: You're goin' in next! Here! Take this scoutin' emblem so people know you're the new scout.")
end

function Option2(NPC, Spawn)
        local conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge004.mp3", "", "", 2774218544, 2883461267, Spawn)
	AddConversationOption(conversation, "Will you just tell me what's going on here?", "offer_quest2")
		AddConversationOption(conversation, "I'm not taking any more orders from a ghost!  Bye!")
	StartConversation(conversation, NPC, Spawn, "Listen up! We're onto Plan B, so start payin' attention! Doopy here ... ugh... are you sure none of you men want to do this? Anyone? Fine! Doopy here's gonna be the one to sneak us all into the Gate itself. Umm ... the person who does this gets to put the dohickey in place. .. still no one? Won't you do it for your Sarge? FINE! Then Doopy it is!")
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn,  ChargeOfTheLeatherfootBrigade_Doopy, 4)
  local conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge006.mp3", "", "", 1387772538, 1323696724, Spawn)
	AddConversationOption(conversation, "You don't even know I'm here, do you?  I guess I'll listen to some more...", "Option4")
		AddConversationOption(conversation, "I'm not taking any more orders from a ghost!  Bye!")
	StartConversation(conversation, NPC, Spawn, "I knew sending that kid in there was a mistake! How is it POSSIBLE to trip over your own ears?! Ugh ... He'll just have to guard the gizmo until we're ready. That's where you come in, Frambert... you gotta carry out Plan C, you do. Take these... you're gonna need them.")
end

function Option4(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge007.mp3", "", "", 859059056, 357496779, Spawn)
	AddConversationOption(conversation, "What the heck is jum-jum?", "offer_quest3")
	AddConversationOption(conversation, "I'm not taking any more orders from a ghost!  Bye!")
	StartConversation(conversation, NPC, Spawn, "You're our last hope, Frambert. It's taken years of training and planning to get us Leatherfoots to this point. We're not gonna let those dark elves push us around anymore! Do it for Rivervale, kid! Do it for Felwithe, Kelethin, Kaladim, and even Ak'Anon if you have to! Aha! Do it for the Jum-Jum! Now that's more like it, Frambert!")
end


function Option5(NPC, Spawn)
    SetStepComplete(Spawn, ChargeOfTheLeatherfootBrigade_Frambert, 3)
    	local conversation = CreateConversation()
    	PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge009.mp3", "", "", 4134821718, 2521054154, Spawn)
    	AddConversationOption(conversation, "But you're all dead!  Dark Elves AND Halflings!!  YOU ALL DIED, UNDERSTAND!?", "Option6")
    		AddConversationOption(conversation, "I'm not taking any more orders from a ghost!  Bye!")
	StartConversation(conversation, NPC, Spawn, "This is horrible! It's not supposed to happen like this! That stupid kid lit the fuse! He was supposed to guard the gizmo, and he done lit the dagnabbin fuse! We gotta get outta here before it does what it's supposed to do! But I ain't leavin' my men behind, you hear?! Lumpy is still out there... and we gotta get him! You're gonna need this, 'cause you're the only one who can save him!")
end

function Option6(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
       	local conversation = CreateConversation()
       	PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge010.mp3", "", "", 3239757026, 2103887381, Spawn)
	AddConversationOption(conversation, "This is the same Tippytoe who went scouting, right?  Just making sure I got this straight.", "offer_quest4")
			AddConversationOption(conversation, "I'm not taking any more orders from a ghost!  Bye!")
	StartConversation(conversation, NPC, Spawn, "That boy's momma will never forgive me if I come back home and tell her the dark elves got him! She's already lost two of her sons to those elves! Heck, they even took her father, her dog, and twelve bushels of jum-jum, too! You gotta save him before this place crumbles around our head! He's the only one who has the de-active-maker-codes!")
end


function Option7(NPC, Spawn)
    SetStepComplete(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge, 3)
    	FaceTarget(NPC, Spawn)
       	local conversation = CreateConversation()
       	PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge012.mp3", "", "", 3347501993, 118609776, Spawn)
	AddConversationOption(conversation, "Goodbye, Sarge.  No matter what anyone says... you died a brave halfling.")
	StartConversation(conversation, NPC, Spawn, "Well, it's just you and me, doohickey. We were gonna make a difference, weren't we? Gonna help out those poor elves and dwarves... gonna come back as heroes. Well, now you and I are gonna run as far into this blasted city as we can, aren't we? And then you're gonna do your thing ... and we'll still make a difference, won't we? Let's do it!  LEATHERFOOT FOREEEEEVEEEERRRRR!")
end

function QuestFinish(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge_donequest_ecc0e564.mp3", "... Leatherfoot.... foreeeeeveerrrrrrr....", "", 3256430416, 811737211, Spawn)
end


function QuestProgress(NPC, Spawn)
if HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) then
PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge_onquest1_2f41d3d9.mp3", "What're you still doing here, Lumpy?  Get to yer scoutin', or I'll tell your ma you didn't follow orders!", "", 3168706528, 3554672655, Spawn)
elseif HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) then
PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge_onquest2_6ccc65de.mp3", "We don't have all day, Doopy!  Them elves might find us any moment!  Now follow yer orders!!", "", 3719340683, 7854538, Spawn)
elseif HasQuest(Spawn,  ChargeOfTheLeatherfootBrigade_Frambert) then
PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge_onquest3_ac623281.mp3", "Ya gotta find those alarms, Frambert!", "", "", 2825059938, 2570883923, Spawn)
elseif HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) then
PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge_onquest4_be1d04.mp3", "You gotta find him!", "", 1647681125, 1288455302, Spawn)
end
   end


function respawn(NPC)
	spawn(NPC)
end