--[[
    Script Name    : SpawnScripts/Blackburrow/AssistantWilabus.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.12 04:07:29
    Script Purpose : 
                   : 
--]]

local GnollBrew = 5638

function spawn(NPC)
    ProvidesQuest(NPC, GnollBrew)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
    if not HasQuest(Spawn, GnollBrew) and not HasCompletedQuest(Spawn, GnollBrew) then
 	PlayFlavor(NPC, "voiceover/english/assistant_wilabus/blackburrow/021_assistant_wilabus_g1_aoi_unfamiliar_15f241f5.mp3", "Looks like another one of those adventurous types, doesn't it Fribden?  I wonder if they fell down the waterfall again.", "", 179082550, 1176156900, Spawn)
 	elseif HasCompletedQuest(Spawn, GnollBrew) then
 	PlayFlavor(NPC, "voiceover/english/assistant_wilabus/blackburrow/021_assistant_wilabus_g1_aoi_qst_complete_2138130b.mp3", "Cheers, mate!", "", 2066944300, 865360987, Spawn)
end
   end




function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, GnollBrew) and not HasCompletedQuest(Spawn, GnollBrew) then
	Option0(NPC, Spawn)    
	elseif GetQuestStep(Spawn, GnollBrew) == 1 then
     Progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, GnollBrew) == 2 then
     Option2(NPC, Spawn)
     elseif HasCompletedQuest(Spawn, GnollBrew) then
      Completed(NPC, Spawn)
	end
end


function Option0(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/assistant_wilabus/blackburrow/assistant_wilabus001.mp3", "", "", 2482291365, 4056630983, Spawn)    
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What are you talking about?", "Option1")
	AddConversationOption(conversation, "I must be on my way.")
	StartConversation(conversation, NPC, Spawn, "Traveling with Master Fribden has opened my eyes to the world.  It has also shown me the devastation inflicted upon Norrath.  It's also left me very thirsty... What I wouldn't give for some more of that gnoll brew.")
end

function Progress(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/assistant_wilabus/blackburrow/assistant_wilabus002.mp3", "", "", 1467650489, 3734789281, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be back when I've got the brew.")
	StartConversation(conversation, NPC, Spawn, "What! No jug?  Ah, just as well.  I'm a bit busy cataloging these rock formations.")
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/assistant_wilabus/blackburrow/assistant_wilabus004.mp3", "", "", 2034660216, 316945089, Spawn)
	AddConversationOption(conversation, "Yeah I'll get the brew.", "offer")
	AddConversationOption(conversation, "Not right now. ")
	StartConversation(conversation, NPC, Spawn, "I've done a bit of exploring down here myself and found a brewery.  Yeah, no fooling! But watch out for the gnolls there, they're far more unpleasant than the others.  Say ... I'll make it worth your while if you fetch me a jug of their brew.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	  PlayFlavor(NPC, "voiceover/english/assistant_wilabus/blackburrow/assistant_wilabus003.mp3", "", "", 2300388685, 1085966704, Spawn)
     	AddConversationOption(conversation, "Right, and my compensation?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Ooh!  Is that what I think it is?  And it's filled to the top, woo hoo!  This will surely make the time click on by. ")
end


function Option3(NPC, Spawn)
    SetStepComplete(Spawn, GnollBrew, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/assistant_wilabus/blackburrow/assistant_wilabus006.mp3", "", "", 2599326032, 753804023, Spawn)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Oh my, yes.  Of course, I don't have any coin on me. What good would coin do me down here? What I do have, on the other hand, are these stones.  They're in the rough, but I'm sure you can fetch a grand price for them.")
end

function Completed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/assistant_wilabus/blackburrow/assistant_wilabus007.mp3", "", "", 3156701985, 3555511002, Spawn)
	AddConversationOption(conversation, "Enjoy. ")
	StartConversation(conversation, NPC, Spawn, "Thanks again, chum!  Aside from the occasional gnoll hair, it's not too bad.  It's got a wicked bite to it.")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, GnollBrew)
end


function respawn(NPC)
	spawn(NPC)
end