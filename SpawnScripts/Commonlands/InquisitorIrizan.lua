--[[
    Script Name    : SpawnScripts/Commonlands/InquisitorIrizan.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.02 08:01:27
    Script Purpose : 
                   : 
--]]

local DoOrDieSaysIrizian = 5226


function spawn(NPC)
ProvidesQuest(NPC, DoOrDieSaysIrizian)
SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, DoOrDieSaysIrizian) and not HasCompletedQuest(Spawn, DoOrDieSaysIrizian) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "But I'm not nervous.", "Option1")
	AddConversationOption(conversation, "I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "I don't believe we've met. I am the Overlord's chief inquisitor. Oh, don't be nervous--that is, unless you have something to be nervous about.  ")
    PlayFlavor(NPC, "voiceover/english/inquisitor_irizan/commonlands/quests/inquisitor_irizan/inquisitor_irizan001.mp3", "", "", 112205821, 1768556125, Spawn)
    elseif GetQuestStep(Spawn,  DoOrDieSaysIrizian) == 1 or  GetQuestStep(Spawn,  DoOrDieSaysIrizian) == 2 or  GetQuestStep(Spawn,  DoOrDieSaysIrizian) == 3 or  GetQuestStep(Spawn,  DoOrDieSaysIrizian) == 4 then
    QuestProgress(NPC, Spawn)
    elseif GetQuestStep(Spawn, DoOrDieSaysIrizian) == 5 then
    Option3(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, DoOrDieSaysIrizian) then
    PlayAnimation(NPC, 11649)
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What's going on here?  What do you want?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Sure you're not and everyone in Freeport is a perfect angel, downright model citizens they are.  I have ways of finding out what I want.  Whether it's fact or fiction, that's what I get paid to decide.")
	PlayFlavor(NPC, "voiceover/english/inquisitor_irizan/commonlands/quests/inquisitor_irizan/inquisitor_irizan002.mp3", "", "", 2721115178, 3847523392, Spawn)
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yeah, I understand.  What is it you want me to do?", "offer")
	StartConversation(conversation, NPC, Spawn, "Yes!  Indeed. What do I want?  You're a quick one. You'll serve me well, and if you don't I'll mark you as traitor to Freeport and our Overlord.  Is that understood?")
	PlayFlavor(NPC, "voiceover/english/inquisitor_irizan/commonlands/quests/inquisitor_irizan/inquisitor_irizan003.mp3", "", "", 1083516611, 4267948589, Spawn)
end

function Option3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "Just this ledger from Edmond.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Well, well, well, look who we have here.  I take it you have something for me?")
	PlayFlavor(NPC, "voiceover/english/inquisitor_irizan/commonlands/quests/inquisitor_irizan/inquisitor_irizan006.mp3", "", "", 2430022477, 361265912, Spawn)
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What?  That's it?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Fine, just fine, consider your assignment complete.  You served Freeport well.")
	PlayFlavor(NPC, "voiceover/english/inquisitor_irizan/commonlands/quests/inquisitor_irizan/inquisitor_irizan007.mp3", "", "", 2613359347, 1903605908, Spawn)
end

function Option5(NPC, Spawn)
    SetStepComplete(Spawn, DoOrDieSaysIrizian, 5)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yeah, I don't like the sound of that.")
	StartConversation(conversation, NPC, Spawn, "Here, I confiscated these items from a traitor. This should more than suffice as payment for services rendered.  You've done well. We shall continue to keep an eye on you.")
	PlayFlavor(NPC, "voiceover/english/inquisitor_irizan/commonlands/quests/inquisitor_irizan/inquisitor_irizan008.mp3", "", "", 3813370346, 1005179913, Spawn)
end




function QuestProgress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes Inquisitor.")
	StartConversation(conversation, NPC, Spawn, "If you wish to incur the wrath of Freeport's might, by all means, don't do what you're told.  Complete these demands or bear the consequences.")
	PlayFlavor(NPC, "voiceover/english/inquisitor_irizan/commonlands/quests/inquisitor_irizan/inquisitor_irizan005.mp3", "", "", 972708175, 505118953, Spawn)
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, DoOrDieSaysIrizian)
end


function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
 	if not HasCompletedQuest(Spawn, DoOrDieSaysIrizian) then
	PlayFlavor(NPC, "voiceover/english/inquisitor_irizan/commonlands/guard/025_inquisitor_irizan_callout_c2c3956c.mp3", "Stop! Get over here, now!", "", 15134358, 3354118545, Spawn)  
end
	end

function LeaveRange(NPC, Spawn)

end