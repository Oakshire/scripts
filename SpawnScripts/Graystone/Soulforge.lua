--[[
	Script Name	: SpawnScripts/Graystone/Steelforge.lua
	Script Purpose	: Steelforge <Weaponsmith>
	Script Author	: Dorbin
	Script Date	: 2022.03.07
	Script Notes	: 
--]]


local Delivery = 5502

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end

function InRange(NPC, Spawn) --Quest Callout
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) and GetLevel(Spawn) >=6 then 
    if math.random(1, 100) <= 70 then
    FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/weaponsmith_soulforge/qey_village03/100_weaponsmith_barbarian_soulfoge_callout_f8f8f127.mp3", "I sure could use some more materials. Oh! Why, hello! Are you interested in weapons? Or perhaps some work?", "hello", 190942341, 2950153557, Spawn)
    end
    else
    if math.random(1, 100) <= 70 then
  	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
    end
    end
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
	    PlayFlavor(NPC, "voiceover/english/weaponsmith_soulforge/qey_village03/weaponsmithsoulforge000.mp3", "", "hello", 549167891, 890595853, Spawn)
        if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) and GetLevel(Spawn) >=6 then  
        AddConversationOption(conversation, "Can I assist you with anything around the shop?", "Snakes")
        end
        if GetQuestStep(Spawn, Delivery)==2 then  
        AddConversationOption(conversation, "I'm back! I've got the skins you requested!", "SnakesFinish")
        end
        AddConversationOption(conversation, "I'm just looking around.")
        StartConversation(conversation, NPC, Spawn, "If steel is what you seek traveler, then look no further!")
end

 function Snakes(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/weaponsmith_soulforge/qey_village03/weaponsmithsoulforge001.mp3", "", "", 1346634645, 774618868, Spawn)
    AddConversationOption(conversation, "Of course I am, sir.", "Snakes2")
    AddConversationOption(conversation, "I don't have time. Sorry.")
  StartConversation(conversation, NPC, Spawn, "To tell the truth, I need someone to fetch these skins for my handles. Do you think you're up to the task, young one?")
end   

 function Snakes2(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/weaponsmith_soulforge/qey_village03/weaponsmithsoulforge002.mp3", "", "nod", 2117434498, 740221965, Spawn)
    AddConversationOption(conversation, "I'll return with the skins soon.", "QuestBegin")   
    AddConversationOption(conversation, "Snakes!?  I hate snakes!", "Snakes3")
    AddConversationOption(conversation, "Err.. I'm not interested in going to the Caves. Good day.")
  StartConversation(conversation, NPC, Spawn, "Humor me then. Go skin some cave snakes in the caves north of the Baubbleshire.  Bring me back the skins and I'll what I can do about paying you.")
end   

 function Snakes3(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/weaponsmith_soulforge/qey_village03/weaponsmithsoulforge004.mp3", "", "frustrated", 3067377267, 3322501955, Spawn)
    AddConversationOption(conversation, "I'll return with the skins soon.", "QuestBegin")
    AddConversationOption(conversation, "You'll have to find someone else. Sorry.")
  StartConversation(conversation, NPC, Spawn, "Oh all right!  I don't have time to deal with youngling drama.  Just bring me back as many as you see fit.")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end

 function SnakesFinish(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/weaponsmith_soulforge/qey_village03/weaponsmithsoulforge005.mp3", "", "ponder", 3067377267, 3322501955, Spawn) --DOESN'T WORK (Wrong key)
    FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Ok, well, I'll have to make due with that.", "Reward")
  StartConversation(conversation, NPC, Spawn, "Let's have a look, shall we?  Hmm ... These skins are damaged. I can't pay you as much as I'd like.  This will have to do.")
end   




function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end




