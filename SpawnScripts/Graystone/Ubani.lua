--[[
	Script Name		: SpawnScripts/GraystoneYard/Ubani.lua
	Script Purpose	: Ubani 
	Script Author	: Dorbin
	Script Date		: 2022.03.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]


local Docks = 5507

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Docks)
end

function InRange(NPC, Spawn) --Quest Callout

    if not HasCompletedQuest (Spawn, Docks) and not HasQuest (Spawn, Docks) --[[and GetLevel(Spawn) >=7--]] then 
    if math.random(1, 100) <= 75 then
            choice = math.random(1,3)
    
        if choice ==1 then
	        PlayFlavor(NPC, "voiceover/english/ubani/qey_village03/100_fisherman_kerra_ubani_callout_75e9ec82.mp3", "Bah! No fish! Where are all the fish? I could use some help finding a better fishing hole.", "", 1389707945, 2897524003, Spawn)
        elseif choice ==2 then
	        PlayFlavor(NPC, "voiceover/english/ubani/qey_village03/100_fisherman_kerra_ubani_multhail3_d0b13e81.mp3", "Purrrfect. I loath the water, but love the fish it brings me.", "", 60679636, 1604621301, Spawn)
        else
	        PlayFlavor(NPC, "voiceover/english/ubani/qey_village03/100_fisherman_kerra_ubani_multhail4_e9f331a1.mp3", "You haven't gone through the catacombs... Hmm - not afraid, are you?", "", 3782262604, 1552106400, Spawn)
        end
    end
    end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        conversation = CreateConversation()
	    PlayFlavor(NPC, "voiceover/english/ubani/qey_village03/ubani.mp3", "", "", 974049381, 1397003220, Spawn)
        if not HasQuest(Spawn, Docks) and not HasCompletedQuest(Spawn, Docks) --[[ and GetLevel (Spawn) >=7--]] then
        AddConversationOption(conversation, "Could it be the location?", "Location")
        end
        if GetQuestStep (Spawn, Docks) == 2 then
        AddConversationOption(conversation, "The Qeynos Harbor has many spots to fish along the pier.", "Delivered")
        end
        AddConversationOption(conversation, "You could be scaring them off. Goodbye.")
        StartConversation(conversation, NPC, Spawn, "Nettleville has no fish, so I come here... but I've been fishing here all day with no luck! I wonder why that is?")
    end

 function Location(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
    PlayFlavor(NPC, "voiceover/english/ubani/qey_village03/ubani000.mp3", "", "no", 361667373, 281110115, Spawn)
    AddConversationOption(conversation, "What do you need?", "Favor")
    AddConversationOption(conversation, "I don't have time. Sorry.")
  StartConversation(conversation, NPC, Spawn, "No, it can't be the location. Brice catches fish here with his beatup pole. Perhaps you're right, though. Ahh. I have the perrrfect idea. Would you do me a favor?")
end   

 function Favor(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn) 
  PlayFlavor(NPC, "voiceover/english/ubani/qey_village03/ubani001.mp3", "", "agree", 2821619396, 975737342, Spawn)
  AddConversationOption(conversation, "I'll go check it out for you.", "QuestBegin")
  AddConversationOption(conversation, "You'll have to slink over yourself.")
  StartConversation(conversation, NPC, Spawn, "Good. I hate the catacombs, but for me its the only way into the city. Go check the pier over at the harbor and see if the fishing is better there than at this lousy fishing hole?")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Docks)
end

 function Delivered(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/ubani/qey_village03/ubani002.mp3", "", "thank", 2566293217, 2582627261, Spawn)
  AddConversationOption(conversation, "Glad I could help.", "Reward")
  StartConversation(conversation, NPC, Spawn, "Hmmm... purrrfect!  It will be a prosperous fishing day, provided the guards don't catch me.  But, the riskier the road the greater the profit. I may loath the water but certainly I love the fish it brings me.  Take this coin. Consider it a finders fee.  I'll be off as soon as I gather my supplies.")
end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Docks, 2)
    end




