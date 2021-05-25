--[[
    Script Name    : SpawnScripts/Commonlands/VtalNarin.lua
    Script Author  : neatz09
    Script Date    : 2019.08.28 09:08:17
    Script Purpose : 
                   : 
--]]

local DoOrDieSaysIrizian = 5226
local NarinHeirloom = 5227

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/v_tal_narin/commonlands/service/questgiver/020_vtal_narin_multhail1_733f89e7.mp3", "Get away from me! I know you're like the others! You heard me! Go away!", "", 1398229495, 3359813491, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    if GetQuestStep(Spawn, DoOrDieSaysIrizian) == 2 then
	AddConversationOption(conversation, "I'm here as a favor to someone else.", "Option1")
	elseif GetQuestStep(Spawn, NarinHeirloom) == 2 then
	AddConversationOption(conversation, "I'll tell you what I found once you have paid me.", "Option4")
	end
	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "You ridicule my loss as well!")
	PlayFlavor(NPC, "voiceover/english/v_tal_narin/commonlands/quests/vtalnarin/vtalnarin000.mp3", "", "", 2801900582, 1265268365, Spawn)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No, I haven't.", "Option2")
	AddConversationOption(conversation, "No, and I don't care.")
	StartConversation(conversation, NPC, Spawn, "You haven't heard about my brother's failed expedition into Fallen Gate?")
	PlayFlavor(NPC, "voiceover/english/v_tal_narin/commonlands/quests/vtalnarin/vtalnarin001.mp3", "", "", 2495431857, 2586565982, Spawn)
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What would you be willing to give someone to look for it?", "Option3")
	AddConversationOption(conversation, "I could look for it for you.", "Option3")
	AddConversationOption(conversation, "Well I'm certainly not going to help you.")
	StartConversation(conversation, NPC, Spawn, "Three months ago, my brother left on an expedition to look for an old family heirloom in Fallen Gate. About two weeks ago he stopped writing me, and I'm afraid he lost the heirloom. I would look for it but I must take care of important matters here.")
	PlayFlavor(NPC, "voiceover/english/v_tal_narin/commonlands/quests/vtalnarin/vtalnarin002.mp3", "", "", 1992307355, 4176727239, Spawn)
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright, I'll do it.", "offer")
	AddConversationOption(conversation, "I'm sorry, but I don't have time to help you.")
	StartConversation(conversation, NPC, Spawn, "If you find the heirloom, I will pay for your services. If you can, find out what happened to my worthless brother.")
	PlayFlavor(NPC, "voiceover/english/v_tal_narin/commonlands/quests/vtalnarin/vtalnarin003.mp3", "", "", 4023042612, 929244024, Spawn)
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, NarinHeirloom, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You work for Qeynos?  I need to go now...", "spawnaccess")
	StartConversation(conversation, NPC, Spawn, "Enjoy your payment.  The city of Qeynos and the Concordium thank you.")
	PlayFlavor(NPC, "voiceover/english/v_tal_narin/commonlands/quests/vtalnarin/vtalnarin009.mp3", "", "", 1418505695, 2579481018, Spawn)
end


function transform(NPC, Spawn)
RemoveSpawnAccess(NPC, Spawn)
AddTimer(NPC, 5000, "transform2", 1, Spawn)
end

function transform2(NPC, Spawn)
  local zone = GetZone(Spawn)  
  local X = GetX(NPC)
  local Y = GetY(NPC)
  local Z = GetZ(NPC)
  local Transformation = SpawnMob(zone, 331139, true, X, Y, Z, 140)
  AddTimer(NPC, 900000, "SpawnAccess", 1, Spawn)
end

function SpawnAccess(NPC, Spawn)
AddSpawnAccess(NPC, Spawn)
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, NarinHeirloom)
end


function respawn(NPC)
spawn(NPC)
end

