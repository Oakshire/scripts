--[[
	Script Name	: SpawnScripts/WillowWood/Baynor.lua
	Script Purpose	: Baynor <Armorsmith>
	Script Author	: Dorbin
	Script Date	: 2022.19.2022
	Script Notes	: 
--]]

--dofile("SpawnScripts/Generic/GenericArmorsmithVoiceOvers.lua")

local Delivery = 5482

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end

function InRange(NPC, Spawn) --Quest Callout
if GetLevel (Spawn) <=5 then
   if math.random(1, 100) <= 60 then
     FaceTarget(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/blacksmith_baynor/qey_village05/100_blacksmith_baynor_multhail2_9300848f.mp3", "Be careful, friend. There are many things in here that are sharp, heavy, and scalding hot wares in my shop. Now, what is it you need?", "", 4126996742, 4172113169, Spawn)
    end
elseif not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) and GetLevel(Spawn) >=6 then 
    if math.random(1, 100) <= 60 then
    FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/blacksmith_baynor/qey_village05/100_blacksmith_baynor_callout_580dcbd9.mp3", "Ugh! Bent the tongs again! I must have Ironmallet fix them. Greetings adventurer. What do you need?","frustrated", 3453022457, 3858112584, Spawn)
    end
else  
    if math.random(1, 100) <= 50 then
    choice = math.random(1,2)
    if choice ==1 then
	    PlayFlavor(NPC, "voiceover/english/blacksmith_baynor/qey_village05/100_blacksmith_baynor_multhail2_9300848f.mp3", "Be careful, friend. There are many things in here that are sharp, heavy, and scalding hot wares in my shop. Now, what is it you need?", "", 4126996742, 4172113169, Spawn)
         else
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
         end
    end
    end
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetLevel (Spawn) <=5 then
	    PlayFlavor(NPC, "voiceover/english/blacksmith_baynor/qey_village05/100_blacksmith_baynor_multhail2_9300848f.mp3", "Be careful, friend. There are many things in here that are sharp, heavy, and scalding hot wares in my shop. Now, what is it you need?", "", 4126996742, 4172113169, Spawn)
	else
        conversation = CreateConversation()
	    PlayFlavor(NPC, "voiceover/english/blacksmith_baynor/qey_village05/blacksmithbaynor000.mp3", "", "scold", 2763232852, 1393139984, Spawn)
        if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then  
        AddConversationOption(conversation, "Got any work?", "Tongs")
        end
        if GetQuestStep(Spawn, Delivery)==2 then  
        AddConversationOption(conversation, "Here are your repaired tongs.", "TongsFinish")
        end
        AddConversationOption(conversation, "I'll be careful. Thanks.")
        StartConversation(conversation, NPC, Spawn, "Be careful there, friend. There are many things in here that are sharp, heavy, and scalding hot.")
end

 function Tongs(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/blacksmith_baynor/qey_village05/blacksmithbaynor001.mp3", "", "", 3121819439, 2362304035, Spawn)
    AddConversationOption(conversation, "Why not fix them yourself?", "Tongs2")
    AddConversationOption(conversation, "I don't have time. Sorry.")
  StartConversation(conversation, NPC, Spawn, "A helpful one, you are! You can run an errand for me if you're not too busy. I would go, but I'm swampped. You see, I was finishing up an order of blades, and in my haste I smashed my favorite tongs. I must say, my hammer did quite a job on them! Could you take them to Graystone Yard to have them fixed?")
end   

 function Tongs2(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/blacksmith_baynor/qey_village05/blacksmithbaynor002.mp3", "", "", 4282883595, 1382929018, Spawn)
    AddConversationOption(conversation, "I'll take them for you", "QuestBegin")
    AddConversationOption(conversation, "I don't have time. Sorry.")
  StartConversation(conversation, NPC, Spawn, "Hmm, good question. I guess I'm supersticious. A long time ago, Ironmallet made these tongs for me. When they break, I have him fix them. I've tried fixing them, they never have the same grip! Please run these tongs to Ironmallet. I'll pay you for your troubles.")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end

 function TongsFinish(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/blacksmith_baynor/qey_village05/blacksmithbaynor003.mp3", "", "thank", 4052925746, 2525148033, Spawn)
    FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Thanks, and be careful with those tongs.", "Reward")
  StartConversation(conversation, NPC, Spawn, "Thank you, friend! Ah, yes. These tongs work as well as the day Ironmallet gave them to me! Please, take a bit of coin for your trouble. Farewell.")
end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end

end


