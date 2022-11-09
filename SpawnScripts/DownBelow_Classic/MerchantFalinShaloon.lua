--[[
    Script Name    : SpawnScripts/DownBelow_Classic/MerchantFalinShaloon.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.09 03:11:20
    Script Purpose : 
                   : 
--]]

local GoodsDownBelow = 5376

function spawn(NPC)
    ProvidesQuest(NPC, GoodsDownBelow)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
    local count = GetQuestCompleteCount(Spawn, GoodsDownBelow) 
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn, GoodsDownBelow) then
	PlayFlavor(NPC, "voiceover/english/merchant_falin_shaloon/qey_catacomb01/merchant_shaloon/merchant_shaloon001.mp3", "", "", 2831988431, 2273687060, Spawn)
	AddConversationOption(conversation, "I'll be on my way. ")
	if GetLevel(Spawn) <= 20 and count <= 5 then
	AddConversationOption(conversation, "How are you able to do business down here?", "Option1")    
	end	
	StartConversation(conversation, NPC, Spawn, "Buy something or be on your way!  I don't have time to chat with the likes of you...")
	elseif GetQuestStep(Spawn, GoodsDownBelow) == 1 or GetQuestStep(Spawn, GoodsDownBelow) == 2 or GetQuestStep(Spawn, GoodsDownBelow) == 3 or GetQuestStep(Spawn, GoodsDownBelow) == 4 then
    AddConversationOption(conversation, "Yeah, I'm on it.")
	StartConversation(conversation, NPC, Spawn, "You're not going back on your word, are you?  I expect you to deliver them goods!")
	elseif GetQuestStep(Spawn, GoodsDownBelow) == 5 then
	SetStepComplete(Spawn, GoodsDownBelow, 5)
	AddConversationOption(conversation, "What do most folks ask you for?", "Option1")
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "It's hard to imagine anyone wanting this stuff, let alone paying for it.  Anyway, you kept up your end of the bargain. Take this for your trouble.")
end
   end




function Option1(NPC, Spawn)
       local count = GetQuestCompleteCount(Spawn, GoodsDownBelow) 
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "")
  if  count <= 5 then
	AddConversationOption(conversation, "I'm interested.", "offer")
	end
		AddConversationOption(conversation, "Not today.")
	StartConversation(conversation, NPC, Spawn, "I get requests for this or that, used for who knows what.  It seems that the majority of my clientele have to get their supplies here, 'cause it just ain't available top side. Say, how would you like to make yourself useful?")
end





function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, GoodsDownBelow)
end




function InRange(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/merchant_falin_shaloon/qey_catacomb01/merchants/qey_catacomb01_dwarf_merchant_aoi_callout_2aa4e27e.mp3", "If I don't have what you want, you don't need it!", "", 1298570469, 653865762, Spawn)
end

function LeaveRange(NPC, Spawn)
end
