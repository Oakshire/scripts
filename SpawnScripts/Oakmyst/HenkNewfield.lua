--[[
    Script Name    : SpawnScripts/Oakmyst/HenkNewfield.lua
    Script Author  : Ememjr
    Script Date    : 2020.05.08 03:05:20
    Script Purpose : 
                   : 
--]]

local HarvestTutorial = 11

local HadAHammer = 525

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, HadAHammer)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    if HasCompletedQuest(Spawn, HarvestTutorial) and HasQuest(Spawn, HadAHammer) == false and HasCompletedQuest(Spawn, HadAHammer) == false then
	    Quest1Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, HadAHammer) == 1 or GetQuestStep(Spawn, HadAHammer) == 2 then
	   	PlayFlavor(NPC, "", "The recipe's right there in front of me there, don't forget to read it once you pick it up. The coal's on the ground there.  And make sure you have a tin cluster and a lead cluster in your bags, they'll be no use to you in the bank!", "nod", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, HadAHammer) == 3 then
	    AddConversationOption(conversation, "I'll try.")
		StartConversation(conversation, NPC, Spawn, "Having any trouble? You might have noticed that at the bottom of the crafting window you see six tradeskill arts you can use. Three will improve the durability, and three the progress of your craft. Try using those as much as you need while crafting.")
	elseif GetQuestStep(Spawn, HadAHammer) == 4 then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", "", "", 0, 0, Spawn)
	    AddConversationOption(conversation, "I made a lucky wolf paw charm!", "Quest1Chat_3")
	    StartConversation(conversation, NPC, Spawn, "How did you make out?  Was my recipe simple enough?")
	elseif GetQuestStep(Spawn, HadAHammer) == 5 or HasCompletedQuest(Spawn, HadAHammer) then
	    Quest1Chat_1(NPC, Spawn)
	else
	    PlayFlavor(NPC, "", "At peace or at war, my work must go on.", "nod", 1689589577, 4560189, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
    PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Sure, why not?  Is it hard?", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Greetings!  I noticed you harvesting out there.  Are you interested in trying your hand at making something out of them?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Okay, what do I do?", "OfferHadAHammer")
	StartConversation(conversation, NPC, Spawn, "Nay, not hard at all once you wrap your head around it.  But I'm not one to keep talking all day.  Why don't you just jump in and try it?")
end

function Quest1Chat_3(NPC, Spawn)
    SetStepComplete(Spawn, HadAHammer, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thanks, I might do that.")
	StartConversation(conversation, NPC, Spawn, "Congratulations!  You seem to have a right knack for crafting things, if I do say so.  If you're interested in learning more about crafting, you should look up a professional tradeskill tutor who can tell you all the details.")
end


function OfferHadAHammer(NPC, Spawn)
    if HasCompletedQuest(Spawn, HadAHammer) == false and HasQuest(Spawn, HadAHammer) == false then
        OfferQuest(NPC, Spawn, HadAHammer)
	end
end

