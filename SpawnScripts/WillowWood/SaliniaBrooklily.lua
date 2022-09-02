--[[
    Script Name    : SpawnScripts/WillowWood/SaliniaBrooklily.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.15 06:02:39
    Script Purpose : Quest Scavenging Rats w/ Woodelf language check
                   : 
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

local Rats = 5478

function spawn(NPC)
ProvidesQuest(NPC,Rats)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if math.random(1, 100) <= 75 then
   if not HasLanguage(Spawn, 16) then
            Garbled(NPC,Spawn)
    	end
	elseif not HasCompletedQuest (Spawn, Rats) and not HasQuest (Spawn, Rats) then 
            if math.random(1, 100) <= 60 then
            PlayFlavor(NPC, "", "The balance of nature is delecate, but all these newcomers...", "ponder", 0, 0, Spawn, 16)
            elseif HasCompletedQuest (Spawn, Rats) and math.random(1, 100) <= 30 then
            FaceTarget(NPC,Spawn)
            PlayFlavor(NPC, "voiceover/english/salinia_brooklily/qey_village05/100_salinia_brooklily_callout_b524f5d0.mp3", "Hello friend! Please, take your time and browse at your leisure.", "hello", 996096760, 49604074, Spawn, 16)
             end
    end
end


function hailed(NPC, Spawn)
         if not HasLanguage(Spawn, 16) then
            Garbled(NPC,Spawn)
	    else
	    FaceTarget(NPC, Spawn)
	    PlayFlavor(NPC,  "voiceover/english/salinia_brooklily/qey_village05/saliniabrooklily_x000.mp3", "","hello", 1124223156, 142078310, Spawn)
	    conversation = CreateConversation()   
	    if not HasQuest(Spawn, Rats) and not HasCompletedQuest(Spawn,Rats) then
	    AddConversationOption(conversation, "I am interested in the power of nature.", "WhatRats")
	    end
	    if GetQuestStep(Spawn, Rats)==2 then
	    conversation = CreateConversation()   
	    AddConversationOption(conversation, "I've reduced the number of scavengers like you asked.", "DoneRats")
	    end
	    AddConversationOption(conversation, "Just browsing. Thank you.")
	    StartConversation(conversation, NPC, Spawn, "Welcome to my little scribe shop, adventurer.  Are you interested in the wondrous magic of nature per chance?  I may have something here that would be of use to you.")
	 end
end

function WhatRats(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What problems do you mean?", "WhatMean")
    AddConversationOption(conversation, "Well, people have to go somewhere. I don't have time for this.")
    StartConversation(conversation, NPC, Spawn, "The amazing thing about nature is its ability to balance life with no assistance.  Unfortunately, the influx of people to this city is disrupting this balance.")
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
end

function WhatMean(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I suppose I could help you with this.", "Helpping")
    AddConversationOption(conversation, "Well, people have to go somewhere. I don't have time for this.")
    StartConversation(conversation, NPC, Spawn, "Take those scavenger rats in the Peat Bog; those vermin overpower the other creatures that live there.  Normally, hawks or cats would prey on the rats, but they shy away from the ever-growing city. I know it may take time, but would you slay some rats and help restore the balance of nature?")
 	PlayFlavor(NPC, "", "", "nod", 0,0 , Spawn)
end

function Helpping(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Rats)
end


function DoneRats(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'm glad I could help.", "QuestDone")
    StartConversation(conversation, NPC, Spawn, "Your actions, even though small, carry great weight in helping restore the balance of nature in our beloved city. Thank you for your help.")
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
end

function QuestDone(NPC, Spawn)
    SetStepComplete(Spawn, Rats, 2)
   end