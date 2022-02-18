--[[
	Script Name	: SpawnScripts/Baubbleshire/SageXoort.lua
	Script Purpose	: Sage Xoort 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Updated: Dorbin 2021.01.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]



 local EMBERS_FOR_XOOT = 333 -- was 57


function spawn(NPC)
	ProvidesQuest(NPC, EMBERS_FOR_XOOT)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end



function respawn(NPC)
	spawn(NPC)
end

	function InRange(NPC, Spawn)
	    	if math.random(1, 100) <= 75 then
            if not HasCompletedQuest(Spawn, EMBERS_FOR_XOOT) then
               PlayFlavor(NPC, "voiceover/english/sage_xoort/qey_village06/100_sage_xoort_xoort_first_4b109355.mp3", "Oh to Drunder with this! How will I ever be able to get this thing working?", "frustrated", 3733527937, 3267359953, Spawn)
 	    else	   	
		   	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)

        end
    end
 end
 function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sage_xoort/qey_village06/sagexoort000.mp3", "", "hello", 202647880, 3563931951, Spawn)
	
--[[	
	if not HasCompletedQuest(Spawn, EMBERS_FOR_XOOT) then
		Begin(NPC, Spawn, conversation)
	else
		DoneQuests(NPC, Spawn)
	end
end

function Begin(NPC, Spawn, conversation)
    conversation = CreateConversation()]]--

	if not HasQuest(Spawn, EMBERS_FOR_XOOT) and not HasCompletedQuest(Spawn, EMBERS_FOR_XOOT) and GetLevel(Spawn) >= 5 then
		AddConversationOption(conversation, "I was just looking at what you were writing there.", "LookingAtWriting")
	elseif HasQuest(Spawn, EMBERS_FOR_XOOT) and GetQuestStep(Spawn, EMBERS_FOR_XOOT) == 2 then
		AddConversationOption(conversation, "I'm actually the one that's of service here!", "ImOfService")
	end
	
	AddConversationOption(conversation, "I'm just looking around, thanks. ")
	StartConversation(conversation, NPC, Spawn, "Hello there!  How can I be of service?")
end

function LookingAtWriting(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/sage_xoort/qey_village06/sagexoort001.mp3", "", "ponder", 2659791211, 4166741888, Spawn)
	AddConversationOption(conversation, "What's wrong with fire as a power source?", "WhatsWrongWithFire")
	AddConversationOption(conversation, "I don't know. Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Nothing much, just a schematic I'm working on. I can't find a power source for it ... Oh, Solusek's flame! How in the name of Brell can I make this thing work?")
end

function WhatsWrongWithFire(NPC, Spawn) --missing Voiceover key 002
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/sage_xoort/qey_village06/sagexoort002.mp3", "", "no", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll get some.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Fire's no good. It doesn't get hot enough or burn long enough. WAIT! HAH! Oh, you're right! I need a special type of coal. You thought of it, so you can fetch it. I need still-burning embers from the forgotten guardians in the Forest Ruins.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, EMBERS_FOR_XOOT)
end

function ImOfService(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/sage_xoort/qey_village06/sagexoort003.mp3", "", "ponder", 3017924926, 3471986747, Spawn)
	AddConversationOption(conversation, "Here you are. ", "HereYouAre")
	StartConversation(conversation, NPC, Spawn, "So, you return with the coals ... I hope you didn't get burned! Let me take a look...")
end

function HereYouAre(NPC, Spawn)
	SetStepComplete(Spawn, EMBERS_FOR_XOOT, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/sage_xoort/qey_village06/sagexoort004.mp3", "", "agree", 4269195696, 625587041, Spawn)
	AddConversationOption(conversation, "Thanks, it's appreciated.")
	StartConversation(conversation, NPC, Spawn, "Oh yes! These shall work nicely!  Tell you what -- take this money for your work. I planned on buying a spell for creating a power source but because of your smart thinking and hard work, I need no spell!")
end

--[[
function DoneQuests(NPC, Spawn)
	choice = math.random(1, 2)
	if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/sage_xoort/qey_village06/100_sage_xoort_xoort_first_4b109355.mp3", "Oh to Drunder with this! How will I ever be able to get this thing working?", "confused", 3733527937, 3267359953, Spawn)
	else
		Say(NPC, "Oops! Sorry friend! I thought you were someone else. Good day now!")
	end
end
	]]--
