--[[
    Script Name    : SpawnScripts/Blackburrow/GeologistFribden.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.12 08:07:46
    Script Purpose : 
                   : 
--]]
local RareRocksLost = 5640

function spawn(NPC)
ProvidesQuest(NPC, RareRocksLost)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, RareRocksLost) and not HasCompletedQuest(Spawn, RareRocksLost) then
	    Option0(NPC, Spawn)
	    elseif GetQuestStep(Spawn, RareRocksLost) == 1 or GetQuestStep(Spawn, RareRocksLost) == 2 or GetQuestStep(Spawn, RareRocksLost) == 3 or  GetQuestStep(Spawn, RareRocksLost) == 4 then
	   Progress(NPC, Spawn)
	   elseif GetQuestStep(Spawn, RareRocksLost) == 5 then
	   Option3(NPC, Spawn)
	   elseif HasCompletedQuest(Spawn, RareRocksLost) then
	   Finished(NPC, Spawn)
	  end
end

function Progress(NPC, Spawn)
    	local conversation = CreateConversation()
    	PlayFlavor(NPC, "voiceover/english/geologist_fribden/blackburrow/geologist_fribden008.mp3", "", "", 3978965868, 3637464686, Spawn)
 	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Well then. You recovered the rock samples I lost?")   
end

function Option0(NPC, Spawn)
		local conversation = CreateConversation()
      PlayFlavor(NPC, "voiceover/english/geologist_fribden/blackburrow/geologist_fribden001.mp3", "", "", 2146454780, 3217102942, Spawn)
	AddConversationOption(conversation, "What are you doing down here?", "Option1")
	AddConversationOption(conversation, "I'll keep an eye out.")
	StartConversation(conversation, NPC, Spawn, "I've found such amazing rock formation in these caves. They're dangerous, indeed, but the sights are worth the treacherous journey.")    
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/geologist_fribden/blackburrow/geologist_fribden005.mp3", "", "", 4214643568, 2530978770, Spawn)
	AddConversationOption(conversation, "[continue]", "Option2")
	StartConversation(conversation, NPC, Spawn, "Why, isn't it obvious? Wilabus and I are studying the structure and mineral constitution of Antonica ... Perhaps it's not so obvious, you appear to be one of those adventuring types, am I right?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
      PlayFlavor(NPC, "voiceover/english/geologist_fribden/blackburrow/geologist_fribden006.mp3", "", "", 2444720403, 3772890138, Spawn)
	AddConversationOption(conversation, "I can for a price.", "offer")
		AddConversationOption(conversation, "No can do. ")
	StartConversation(conversation, NPC, Spawn, "Why, yes, of course you are.  Say!  I need someone with your unique credentials.  While in the upper mines, I lost some rather rare samples that I had been collecting.  Would you venture to the mines and recover them for me?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/geologist_fribden/blackburrow/geologist_fribden010.mp3", "", "", 2842935841, 2634256248, Spawn)
	AddConversationOption(conversation, "Pay me and we'll be square. ", "Option4")
	StartConversation(conversation, NPC, Spawn, "Good to see you again, my adventurous friend.  I see you've recovered my samples. It would have taken me weeks to replace them.  I'm truly in your debt.")
end


function Option4(NPC, Spawn)
    SetStepComplete(Spawn, RareRocksLost, 5)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/geologist_fribden/blackburrow/geologist_fribden011.mp3", "", "", 3464640416, 2538518646, Spawn)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Of course, accept these gems as compensation for your efforts.  It has been an honor to make your acquaintance.  May whatever faith guide you, shine evermore brightly.")
end


function Finished(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	local conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/geologist_fribden/blackburrow/geologist_fribden012.mp3", "", "", 293315046, 2022548794, Spawn)
 	AddConversationOption(conversation, "You don't say.")
	StartConversation(conversation, NPC, Spawn, "These gnolls are quite adept at mining.  I would even venture to say their mining skills surpass those of the dwarves.")   
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, RareRockskLost)
end





function respawn(NPC)
	spawn(NPC)
end