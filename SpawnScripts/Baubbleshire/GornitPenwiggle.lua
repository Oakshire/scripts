--[[
    Script Name    : SpawnScripts/Baubbleshire/GornitPenwiggle.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 04:10:05
    Script Purpose : 
                   : 
--]]

local AnIntriguingEye = 5366
local TheMotleyMerchantManifest = 5368

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1024.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", "", "", 0, 0, Spawn)  
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1024.mp3", "", "", 0, 0, Spawn)  
	end
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, 	AnIntriguingEye) == 3 then
	AddConversationOption(conversation, "I seek a coin with an eye on it.", "Option2")
	elseif GetQuestStep(Spawn, 	AnIntriguingEye) == 6 then
	AddConversationOption(conversation, "Here are your items.  ", "Option4")
	elseif GetQuestStep(Spawn, TheMotleyMerchantManifest) == 3 then
	AddConversationOption(conversation, "I believe you need to sign this manifest. ", "Option7")    
	end
	AddConversationOption(conversation, "Gornit? That's an odd name. ", "Option1")
	AddConversationOption(conversation, "I won't bother you. Bye.")
	StartConversation(conversation, NPC, Spawn, "Can't you see I'm busy doing something you can't even begin to fathom?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/gornit_penwiggle/qey_village06/penwiggle006.mp3", "", "", 503328722, 1485980472, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "I agree! But what's a stout to do? My grandparents granted me this atrocious name. They say it was the name of a ferocious giant, a pirate even! Saw it on a journey once, they say. Even spoke to him! Tall tales I say.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/gornit_penwiggle/qey_village06/penwiggle001.mp3", "", "", 3479279281, 1205875453, Spawn)
	AddConversationOption(conversation, "Spare me. How much to trade? ", "Option3")
	AddConversationOption(conversation, "Forget I asked. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Looking for my coin? I earned that coin in a grand battle. I was taking on ten of the fiercest and nastiest rats, armed only with me trusty pen and no place to run so I...")
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, AnIntriguingEye, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/gornit_penwiggle/qey_village06/penwiggle002.mp3", "", "", 1597412316, 861955169, Spawn)
	AddConversationOption(conversation, "I will be back.")
	StartConversation(conversation, NPC, Spawn, "Trade, eh? I guess that coin can be passed on for a price, right? I didn't go down into the dark of the Down Below for a coin. Here's a list of items I need from there. Fill my list and the coin is yours. ")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/gornit_penwiggle/qey_village06/penwiggle003.mp3", "", "", 2188422, 1685073961, Spawn)
	AddConversationOption(conversation, "Where is it?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Grand! Thanks a bunch, but I have some bad news 'bout your coin. ")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/gornit_penwiggle/qey_village06/penwiggle004.mp3", "", "", 1571183030, 1917018223, Spawn)
	AddConversationOption(conversation, "Who is this fellow collector? ", "Option6")
	StartConversation(conversation, NPC, Spawn, "Well, now...I was sitting here shining the little trinket, when a fellow collector snatched it from me. Said he knew the rightful owners and that I oughta' forget all 'bout it.")
end

function Option6(NPC, Spawn)
    SetStepComplete(Spawn, AnIntriguingEye, 6)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks for the tip. ")
	StartConversation(conversation, NPC, Spawn, "Sorry, mate. Trade is my life, and if I off and told you his name, I'd never be able to do business at the Collector's Trove again. Wait ... forget I said Collector's Trove will ya? ")
end




function Option7(NPC, Spawn)
    SetStepComplete(Spawn, TheMotleyMerchantManifest, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Ah! Yes, of course ... I need to sign for that quill delivery. Yep! That's all it is. Simple ... legal ... quills. ")
end






function respawn(NPC)
	spawn(NPC)
end