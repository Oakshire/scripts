--[[
	Script Name	: SpawnScripts/Baubbleshire/SmithyFindlebop.lua
	Script Purpose	: Smithy Findlebop <Weaponsmith>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]
local MystratTails = 5439

--dofile("SpawnScripts/Generic/GenericWeaponsmithVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
	ProvidesQuest(NPC, MystratTails)
	conversation = CreateConversation()
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if not HasCompletedQuest(Spawn, MystratTails) then
        	if math.random(0, 100) <= 65 then
            PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_findlebop_first_fd0d329e.mp3", "More dirt? How in Brell's name can I get this thing to work if I can't keep it clean?!", "grumble", 1928188613, 3260712092, Spawn)
            end
    else
	if math.random(0, 100) <= 25 then
	local choice = MakeRandomInt(1, 2)
		FaceTarget(NPC, Spawn)
	--	GenericWeaponsmithHail(NPC, Spawn)
        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail1_aa73007b.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy? Go away!", "scream", 3823811804, 70891212, Spawn)
        else
        PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail2_5d0f29cb.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy?", "frustrated", 446470782, 3454872230, Spawn)
    	end
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	if not HasCompletedQuest(Spawn, MystratTails) and GetLevel(Spawn) >=5 then
	    FaceTarget(NPC, Spawn)
        Begin(NPC,Spawn)
	else
	    Callout(NPC,Spawn)
	 end  
end

function Callout(NPC,Spawn)
	    local randomCall2 = MakeRandomInt(1, 2)
	    FaceTarget(NPC, Spawn)
	--	GenericWeaponsmithHail(NPC, Spawn)
         if randomCall2 == 1 then
            PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail1_aa73007b.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy? Go away!", "scream", 3823811804, 70891212, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/100_smithy_findlebop_multhail2_5d0f29cb.mp3", "Now, if I can only figure out how the sprocket will fit in this device, I'll be set! Why are you interrupting my work?  Can't you see I'm busy?", "frustrated", 446470782, 3454872230, Spawn)
    	end
    end



function ImInterested(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Ok, I'm off to find you a mystrat tail.", "OfferQuest1")
	AddConversationOption(conversation, "I'll let you get back to work.")
	
	StartConversation(conversation, NPC, Spawn, "FINE! Sorry to be harsh, but you bother me a critical juncture! If you want to help me, go get me something to scrub this bit of metal. Perhaps the tail of a Mystail rat will do the trick. Yes, yes. That would work. Get one from the Oakmyst Forest! ")
    PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/smithyfindlebop002.mp3","","sigh",3746495978,2876844206, Spawn)
end

function GotAnyWork(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I could look for something to clean that for you.", "ImInterested")
	AddConversationOption(conversation, "Yeesh, sorry I asked.")
	StartConversation(conversation, NPC, Spawn, "No, NO! I'm too busy to give you a task! GET OUT! Get out, before I lose my train of thought! Now where was I? Oh, yes, if only I had something to scrub this bit of metal...")
    PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/smithyfindlebop001.mp3","","no",3069436891,2776154152, Spawn)
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, MystratTails)
end


function Begin(NPC, Spawn)
    conversation = CreateConversation()
	if not HasQuest(Spawn, MystratTails) and not HasCompletedQuest(Spawn, MystratTails) then
		AddConversationOption(conversation, "Have any odd jobs I could do?", "GotAnyWork")
	elseif HasQuest(Spawn, MystratTails) and GetQuestStep(Spawn, MystratTails) == 2 then
		AddConversationOption(conversation, "Here is a nice Mystrat tail for you.", "RatTail_Handin")
	end
		AddConversationOption(conversation, "Sorry. Just passing by.")
        PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/smithyfindlebop000.mp3", "", "frustrated", 1173629486, 2280866988, Spawn)	
        StartConversation(conversation, NPC, Spawn, "Now, if only I could only figure out how this sprocket will fit in this device, it'll be set. Oh! Yes? Why are you interrupting my work? Can't you SEE I'M BUSY?")
   end
    
function RatTail_Handin(NPC, Spawn)
	    SetStepComplete(Spawn, MystratTails, 2)
	    FaceTarget(NPC, Spawn)
	    conversation = CreateConversation()

	    AddConversationOption(conversation, "Thanks, I'll be sure not to step on any of your sprockets on my way out.")
	    StartConversation(conversation, NPC, Spawn, "Yes, YES! This tail will do the trick! Very bristley, indeed. Good job! Perhaps you weren't a bother afterall. Let me pay you for your trouble. It is the least I could do. Sorry for being rude earlier ",Spawn)
        PlayFlavor(NPC, "voiceover/english/smithy_findlebop/qey_village06/smithyfindlebop003.mp3","","thank",4033931152,227104096, Spawn)
    end

end

