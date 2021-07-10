--[[
    Script Name    : SpawnScripts/FallenGate/TheSarge.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 08:07:41
    Script Purpose : 
                   : 
--]]

local ChargeOfTheLeatherfootBrigade_Tippytoe = 5308
local ChargeOfTheLeatherfootBrigade_Doopy = 5309 

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) and not HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) then
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge001.mp3", "", "", 3416054820, 2332283165, Spawn)
	AddConversationOption(conversation, "What on Norrath are you talking about, ghost?", "offer_quest1")
	AddConversationOption(conversation, "I've got better things to do than talk with some crazy old ghost.")
	StartConversation(conversation, NPC, Spawn, "Listen up, men! We gotta remember why we're here, got it!? This ain't a game of smack the brownie! And if I see any more of you cryin' for yer mommas, well ... I'll yell louder, understand! Lumpy Rumblebelly here's gonna do the scoutin'. Whassat? Ugh ... fine! Special Agent Tippytoes gonna do the scoutin' before we do the deed.")
	elseif GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) <= 3 then
	QuestProgress(NPC, Spawn)
	elseif GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) == 4 then
	Option1(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) and not HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) then
	Option2(NPC, Spawn)
	elseif GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) <= 3 then
	QuestProgress(NPC, Spawn)
end
   end

function offer_quest1(NPC, Spawn)
OfferQuest(NPC, Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe)
end

function offer_quest2(NPC, Spawn)
OfferQuest(NPC, Spawn, ChargeOfTheLeatherfootBrigade_Doopy)
end

function Option1(NPC, Spawn)
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




function QuestProgress(NPC, Spawn)
if HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Tippytoe) then
PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge_onquest1_2f41d3d9.mp3", "What're you still doing here, Lumpy?  Get to yer scoutin', or I'll tell your ma you didn't follow orders!", "", 3168706528, 3554672655, Spawn)
elseif HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_Doopy) then
PlayFlavor(NPC, "voiceover/english/the_sarge/fallengate/qst_the_sarge_onquest2_6ccc65de.mp3", "We don't have all day, Doopy!  Them elves might find us any moment!  Now follow yer orders!!", "", 3719340683, 7854538, Spawn)
end
   end


function respawn(NPC)
	spawn(NPC)
end