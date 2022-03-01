--[[
    Script Name    : SpawnScripts/CrowsTomb/FippyDarkpawthe4th.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.04 06:10:59
    Script Purpose : 
                   : 
--]]

local TheMotleyMerchantManifest = 5368

function spawn(NPC)
ProvidesQuest(NPC, TheMotleyMerchantManifest)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw000.mp3", "", "", 266182336, 423238250, Spawn)
	AddConversationOption(conversation, "I refuse to speak to gnolls!")
	if not HasQuest(Spawn, TheMotleyMerchantManifest) and not HasCompletedQuest(Spawn, TheMotleyMerchantManifest) then
	AddConversationOption(conversation, "You're a gnoll! ", "Option1")
	elseif GetQuestStep(Spawn, TheMotleyMerchantManifest) == 8 then
	AddConversationOption(conversation, "I've returned with your completed manifest.", "Option6")
	end
    StartConversation(conversation, NPC, Spawn, "What took you so long? You nearly lost me some coin.")
end

function task(NPC, Spawn)
if GetQuestStep(Spawn, TheMotleyMerchantManifest) == 1 then
SetStepComplete(Spawn, TheMotleyMerchantManifest, 1)  
end
FaceTarget(NPC, Spawn)
local conversation = CreateConversation()   
PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw007.mp3", "", "", 72606259, 3405108525, Spawn)
AddConversationOption(conversation, "I will be back.")
StartConversation(conversation, NPC, Spawn , "Take this manifest. Our Qeynosian clients must sign it! The manifest contains all the information you need to complete your task. Return it to me when you're done. Now off with ya!")
end






function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw001.mp3", "", "", 1658104426, 2860881286, Spawn)
    AddConversationOption(conversation, "Was my appearance the basis of a bit of gambling?", "Option2")
    AddConversationOption(conversation, "I have had enough. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Dear me ... you're right! Did you hear that Rollus ... I'm a gnoll! Call the guard at once! Please! You allow frogs and felines to wander about without a second glance, and you get all jumpy at the sight of me?")
end

function Option2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw002.mp3", "", "", 3510062047, 2917440094, Spawn)
	AddConversationOption(conversation, "No more of your games. Farewell.")
    AddConversationOption(conversation, "What? You were watching me?", "Option3")
	StartConversation(conversation, NPC, Spawn, "You just won me heavy coin. I knew you would find us, especially after seeing you tear through those Bloodsabers in the Down Below.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw003.mp3", "", "", 3818912516, 1083791413, Spawn)
	AddConversationOption(conversation, "I am not your amusement. Farewell.")
	AddConversationOption(conversation, "I found my own way here.", "Option4")
    StartConversation(conversation, NPC, Spawn, "Of course I was watching, watching from the dark. You're lucky I saw good coin in you, or you never would've made it here.")
end 


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw004.mp3", "", "", 2031659896, 3886377422, Spawn)
		AddConversationOption(conversation, "Our talk is over. Farewell.")
			AddConversationOption(conversation, "Where am I?", "Option5")
    StartConversation(conversation, NPC, Spawn, "No. I spread the crumbs out for you to follow. The only thing you can lay claim to is disposing of my lackeys, worthless as they were.")
end 

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw005.mp3", "", "", 4269286558, 2875212435, Spawn )
	AddConversationOption(conversation, "I do not need your trust. Farewell.")
	AddConversationOption(conversation, "Is there any way to get some answers around here.", "offer")
	StartConversation(conversation, NPC, Spawn, "Please! Don't make me laugh. You may have earned my respect, but you haven't earned my trust. ")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw008.mp3", "", "", 3397253887, 1119158845, Spawn)
	AddConversationOption(conversation, "What's to keep me from reporting you to the Qeynos Guard?", "Option7")
	StartConversation(conversation, NPC, Spawn, "Good work. Maybe someday you'll earn coin but not today. Now run along ... back to the safety of the city streets.")
end

function Option7(NPC, Spawn)
    SetStepComplete(Spawn, TheMotleyMerchantManifest, 8)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw009.mp3", "", "", 3745634529, 3662683774, Spawn)
	AddConversationOption(conversation, "I get the picture.")
	StartConversation(conversation, NPC, Spawn, "Oh! I forgot to mention ... we took the liberty of forging your signature on the merchant manifest. Many a day in the dungeons for you, should they ever find it. ")
end




function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheMotleyMerchantManifest)
end


function respawn(NPC)
	spawn(NPC)
end