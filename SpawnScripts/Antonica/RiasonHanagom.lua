--[[
    Script Name    : SpawnScripts/Antonica/RiasonHanagom.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 08:08:06
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseHuman1.lua")

local LetterToRiason = 5350 -- Letter to Riason quest
local ARediscoveredShrine = 5351 -- A Rediscovered Shrine? quest

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
	if HasQuest(Spawn, LetterToRiason) then
	AddConversationOption(conversation, "I've a letter for you from Trader Cooper.", "Option1")
	elseif HasCompletedQuest(Spawn, LetterToRiason) and not HasQuest(Spawn, ARediscoveredShrine) and not HasCompletedQuest(Spawn, ARediscoveredShrine) then
	AddConversationOption(conversation, "Remember me?  I was nice enough to do your friend a favor.", "Option3") 
	elseif GetQuestStep(Spawn, ARediscoveredShrine) == 2 then
	AddConversationOption(conversation, "I found your little shrine.  It seems a bunch of gnolls have taken it over.  Too bad for you, eh?", "Option5")
	end
	AddConversationOption(conversation, "Nothing, nevermind.")
	StartConversation(conversation, NPC, Spawn, "What brings you here? I'm VERY busy.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Only after I've received payment.", "Option2")
	AddConversationOption(conversation, "You know, I think this was for the OTHER Riason.  Sorry. ")
	StartConversation(conversation, NPC, Spawn, "That worm has been delaying for long enough.  It's about time he did his job. What are you waiting for!? Give it to me!")
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, LetterToRiason, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right already! Here it is.")
	StartConversation(conversation, NPC, Spawn, "Gah!  I could kill you right here and now for defying me.  Here, take this and give me the letter NOW!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What kind of research?  Maybe I can help you out.", "Option4")
	AddConversationOption(conversation, "Fine, I'm going.")
	StartConversation(conversation, NPC, Spawn, "Favor?!  You demanded money for that \"favor\" as I recall.  Besides, that man is no \"friend\" of mine.  He was merely doing a little... research for me.  Now leave me alone!")
end


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "This will be easy money.  I'll take the job.", "offer")
	AddConversationOption(conversation, "Go find your own shrine.  I don't trust your money anyway. ")
	StartConversation(conversation, NPC, Spawn, "Bah!  You are very annoying, you know that?  However, you are persistent and brave... or perhaps just stupid.  In any case, I could make use of you and it would save me some time.  Cooper found out the general location of a recently discovered shrine from a few adventurers.  I was going to check it out myself but I have other... business to attend to.  Go and find it and I'll throw a few coins your way.")
end

function Option5(NPC, Spawn)
    SetStepComplete(Spawn, ARediscoveredShrine, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Bertoxxulous?  You sent me to a shrine of disease?!", "Option6")
	StartConversation(conversation, NPC, Spawn, "Gnolls?  So you did find it!  I must insist that you put distance between yourself and I.  I don't want to get too close to someone who just came back from a shrine of Bertoxxulous.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "If I get sick I know right where to come.")
	StartConversation(conversation, NPC, Spawn, "That's exactly what I did.  Take the pouch of coin and get out of here.  Catch!")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ARediscoveredShrine)
end



function respawn(NPC)
	spawn(NPC)
end