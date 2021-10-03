local WorkingTheDownBelow = 5365

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    if not HasQuest(Spawn, WorkingTheDownBelow) then
    PlayFlavor(NPC, "voiceover/english/merchant_adair_barnes/qey_catacomb01/merchant_barnes/merchant_barnes001.mp3", "", "", 1654451675, 1398785579, Spawn)
	AddConversationOption(conversation, "What are you doing down here?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Are you looking for anything in particular?")    
    elseif GetQuestStep(Spawn, WorkingTheDownBelow) == 2 or GetQuestStep(Spawn, WorkingTheDownBelow) == 3 or  GetQuestStep(Spawn, WorkingTheDownBelow) == 1 then
    Quest_Progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, WorkingTheDownBelow) == 4 then
    SetStepComplete(Spawn, WorkingTheDownBelow, 4)
    PlayFlavor(NPC, "voiceover/english/merchant_adair_barnes/qey_catacomb01/merchant_barnes/merchant_barnes005.mp3", "", "", 1632932876, 2455444862, Spawn)
    AddConversationOption(conversation, "I still don't see why you're down here.", "Option1")
    AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "I see that you got everything. Good. Keep in mind that I always need help retrieving goods. If you're ever looking for something to do that'll pass the time, think of me!")
    end
end

function Option1(NPC, Spawn)
    local count = GetQuestCompleteCount(Spawn, WorkingTheDownBelow) 
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_adair_barnes/qey_catacomb01/merchant_barnes/merchant_barnes002.mp3", "", "", 1226253735, 3601518165, Spawn)
     if not HasQuest(Spawn, WorkingTheDownBelow) and count <= 5 then
	AddConversationOption(conversation, "Yeah, I'll help.", "offer")
	AddConversationOption(conversation, "Not now.")
	StartConversation(conversation, NPC, Spawn, "Aren't you a curious bugger! I'll tell you why, it fills my pockets with coin. You'd be surprised by the folks who come down here to buy this or that.  Say, why don't you help me fill some orders? There's coin in it for you.")
end
   end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, WorkingTheDownBelow)
end




function Quest_Progress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_adair_barnes/qey_catacomb01/merchant_barnes/merchant_barnes004.mp3", "", "", 1486605195, 3427920459, Spawn)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "No time for dawdling! Hurry up and fill those orders.")
end

function spawn(NPC)
    ProvidesQuest(NPC, WorkingTheDownBelow)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
spawn(NPC)
end

function InRange(NPC, Spawn)
    if not HasQuest(Spawn, WorkingTheDownBelow) then
    PlayFlavor(NPC, "voiceover/english/merchant_adair_barnes/qey_catacomb01/merchants/qey_catacombs01_merchants_adair_barnes_aoi_callout_4830e9a5.mp3", "Ahhh... bringing yourself down into the muck, eh? Gets mighty dark down these parts. Interest you in a fine torch?", "", 3184947609, 3872372210, Spawn)
end
   end

