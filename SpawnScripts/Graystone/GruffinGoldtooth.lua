--[[
	Script Name	: SpawnScripts/Graystone/GruffinGoldtooth.lua
	Script Purpose	: Gruffin Goldtooth 
	Script Author	: John Adams
	Script Date	: 2008.09.21 -  Created file and added first hail
	Script Notes	: Added entire DustyBlueStone Dialogue 2022.3.12 - Dorbin
--]]

local BlueStone = 5509

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if not HasQuest(Spawn, BlueStone) or GetQuestStep(Spawn, BlueStone)==1 then 
	PlayFlavor(NPC, "voiceover/english/gruffin_goldtooth/qey_village03/gruffingoldtooth001.mp3", "", "hello", 997482113, 2338709603, Spawn)
	if GetQuestStep(Spawn, BlueStone)==1 then
	AddConversationOption(conversation, "If you don't mind, could you look over a stone I have here?","RockFound")
	end
	AddConversationOption(conversation, "I'll leave you to your work.")
	StartConversation(conversation, NPC, Spawn, "Hey there, young 'in.  Don't mind ole' Gruffin.  I'm just inspecting these here mineral veins.  This bedrock is going to be especially useful for building new homes for refugees and citizens alike.")
    

    elseif GetQuestStep(Spawn, BlueStone)==2 or GetQuestStep(Spawn, BlueStone)==3 then
	PlayFlavor(NPC, "", "", "hello", 997482113, 2338709603, Spawn)
	if GetQuestStep(Spawn, BlueStone)==3 then
	AddConversationOption(conversation, "Yes, I have them right here.","SamplesFound")
	end
	AddConversationOption(conversation, "Still working on it.")
	StartConversation(conversation, NPC, Spawn, "Hail there!  Were you able to get the stone samples yet?")
    end
end

function RockFound(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I can come by later and ask you what you found out.","ComeBack")
	StartConversation(conversation, NPC, Spawn, "Sure, sure.  I'm always happy to help out a fellow rock hound.  Hmm... I don't recognize this type of stone... and believe me I know my rocks.  It could be described in the books I have back home.  If you would be willing to let me hold on to this for a bit I'll see what I can find out for you.")
end

function ComeBack(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
		AddConversationOption(conversation, "I suppose I could do that to help you out.","ComeBack2")
	StartConversation(conversation, NPC, Spawn, "Great. I'll go check it out right after finishing up work here.  Oh!  I have to collect those rock samples out in the Thundering Steppes!  I forgot all about that!  Could you do me a favor and collect those samples for me while I study this stone of yours?  I'll even pay you some coin for the extra work.")
end

function ComeBack2(NPC, Spawn)
    	SetStepComplete(Spawn, BlueStone, 1)
    end
    
    
    
function SamplesFound(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
		AddConversationOption(conversation, "What did you find out about the blue stone?","Stone1")
	StartConversation(conversation, NPC, Spawn, "Perfect!  These will help greatly in finding new places to mine.  Qeynos is going to need strong buildings and walls to accommodate all the new people arriving.")
end

function Stone1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
		AddConversationOption(conversation, "So what should I do with it? ","Stone2")
	StartConversation(conversation, NPC, Spawn, "I looked through all my books and I couldn't find one entry that matched its description.  I even asked all my mining buddies hanging out at the tavern and none of them knew what it is either.  The strange thing is you can't even scratch it with Bopper's diamond point pick!")
end

function Stone2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thanks for the help, Gruffin.","Stone3")
	StartConversation(conversation, NPC, Spawn, "My advice is to take it to a mage.  My hunch is this may be an enchanted stone of some kind.  My only conclusion I can draw is that your stone isn't naturally from any parts we know of.  I'm sorry I couldn't tell you more.  Good luck with your search!")
end

function Stone3(NPC, Spawn)
    	SetStepComplete(Spawn, BlueStone, 3)
    end