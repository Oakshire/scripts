--[[
	Script Name	: SpawnScripts/TheBaubbleshire/TapsterBregun.lua
	Script Purpose	: Tapster Bregun <Bartender>
	Script Author	: Dorbin
	Script Date	: 2022.01.09
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local YolaPicnic = 5442

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
	ProvidesQuest(NPC, YolaPicnic)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if not HasCompletedQuest(Spawn, YolaPicnic) and not HasQuest(Spawn, YolaPicnic) then
    PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_multhail2_ccbdd67e.mp3", "Welcome to the Deepmug Tavern!  I'm Bregun. Talk to me if you wanna lift a pint!  Now, what are ya drinkin'?", "beckon", 2461588719, 573667497, Spawn)
    else
    	PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_bregun_first_1ee27a85.mp3", "Greetings, traveler. Is there something I can get ya today?", "hello", 3137139088, 2537693501, Spawn)
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if not HasCompletedQuest(Spawn, YolaPicnic) and not HasQuest(Spawn, YolaPicnic) then
        PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/tapsterbregun000.mp3", "", "hello", 3026913164, 1235641856, Spawn)
        conversation = CreateConversation()
    AddConversationOption(conversation, "I'm looking for work.", "DoorDash")
    StartConversation(conversation, NPC, Spawn, "Greetings, traveler. Is there something I can get ya today?")

elseif HasQuest(Spawn, YolaPicnic) then
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if GetQuestStep(Spawn, YolaPicnic) == 2 then
    AddConversationOption(conversation, "I've delievered the picnic basket to Yola.", "DoorDashDone")
    end
    AddConversationOption(conversation, "Working on it!")
    StartConversation(conversation, NPC, Spawn, "Did you make that delievery yet?")
    
    
else
	local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "shrug", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "The best part about this job is all the extra coin I get.", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_multhail2_ccbdd67e.mp3", "Welcome to the Deepmug Tavern!  I'm Bregun. Talk to me if you wanna lift a pint!  Now, what are ya drinkin'?", "", 2461588719, 573667497, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/100_tapster_bregun_bregun_first_1ee27a85.mp3", "Greetings, traveler. Is there something I can get ya today?", "hello", 3137139088, 2537693501, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "What can I get for ya?", "nod", 1689589577, 4560189, Spawn)
	end
end

 function DoorDash(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/tapster_bregun/qey_village06/tapsterbregun001.mp3", "", "", 1259014993, 3905164382, Spawn)
  AddConversationOption(conversation, "Delievered where?", "DoorDash2")
  StartConversation(conversation, NPC, Spawn, "Is that so... Well then why don't you do me a favor. Those look like some nimble feet you got. You can deliever a basket of food for me.")
end   

 function DoorDash2(NPC, Spawn)
  conversation = CreateConversation()
      PlayFlavor(NPC,"voiceover/english/tapster_bregun/qey_village06/tapsterbregun002.mp3","","chuckle",895648320,2977770410,Spawn)
  AddConversationOption(conversation, "I can take Yola's order to her.", "DoorDashQuest")
  StartConversation(conversation, NPC, Spawn, "I've prepared a picnic basket for Yola, and I need it delieverd to her at the little lake. You'll find her at the lunch spot. I'll spot you a few coin if you're quick on your toes.")
end   

function DoorDashQuest (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, YolaPicnic)
end

 function DoorDashDone(NPC, Spawn)
  conversation = CreateConversation()
      PlayFlavor(NPC,"voiceover/english/tapster_bregun/qey_village06/tapsterbregun003.mp3","","thank",1121129450,2689540838,Spawn)
  AddConversationOption(conversation, "Thanks, Bregun", "QuestComplete")
  StartConversation(conversation, NPC, Spawn, "Well, so ya have. I hope she enjoys her lunch. I gave her my best breads and cheeses! Ooooh makes me hungry just thinking about it! Ha! Oh, as promised, here's your coin.")
end   

function QuestComplete(NPC, Spawn)
    	SetStepComplete(Spawn, YolaPicnic, 2)
    end
end


