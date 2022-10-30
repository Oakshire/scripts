--[[
    Script Name    : SpawnScripts/Baubbleshire/GornitPenwiggle.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 04:10:05
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local AnIntriguingEye = 5366
local TheMotleyMerchantManifest = 5368

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Can't you see I'm busy? I'm the kegkeeper of the tavern, and as you can see, these lot drink a lot ... Ha! ... Made a funny!")
	Dialog.AddVoiceover("voiceover/english/gornit_penwiggle/qey_village06/penwiggle000.mp3", 2844059086, 1628915067)
	if GetQuestStep(Spawn, 	AnIntriguingEye) == 3 then
	Dialog.AddOption("I seek a coin with an eye on it.", "Option2")
	elseif GetQuestStep(Spawn, 	AnIntriguingEye) == 6 then
	Dialog.AddOption("Here are your items.  ", "Option4")
	elseif GetQuestStep(Spawn, TheMotleyMerchantManifest) == 3 then
	Dialog.AddOption("I believe you need to sign this manifest. ", "Option7")    
	end
	Dialog.AddOption("Gornit? That's an odd name. ","Option1")
	Dialog.AddOption("I won't bother you. Bye.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I agree! But what's a stout to do? My grandparents granted me this atrocious name. They say it was the name of a ferocious giant, a pirate even! Saw it on a journey once, they say. Even spoke to him! Tall tales I say.")
	Dialog.AddVoiceover("voiceover/english/gornit_penwiggle/qey_village06/penwiggle006.mp3", 503328722, 1485980472)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Thank you.")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Looking for my coin? I earned that coin in a grand battle. I was taking on ten of the fiercest and nastiest rats, armed only with me trusty pen and no place to run so I...")
	Dialog.AddVoiceover("voiceover/english/gornit_penwiggle/qey_village06/penwiggle001.mp3", 3479279281, 1205875453)
    PlayFlavor(NPC, "", "", "scold", 0, 0, Spawn)
	Dialog.AddOption("Spare me. How much to trade? ", "Option3")
	Dialog.AddOption("Forget I asked. Farewell.")
	Dialog.Start()
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, AnIntriguingEye, 3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Trade, eh? I guess that coin can be passed on for a price, right? I didn't go down into the dark of the Down Below for a coin. Here's a list of items I need from there. Fill my list and the coin is yours. ")
	Dialog.AddVoiceover("voiceover/english/gornit_penwiggle/qey_village06/penwiggle002.mp3", 1597412316, 861955169)
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	Dialog.AddOption("I will be back.")
	Dialog.Start()
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Grand! Thanks a bunch, but I have some bad news 'bout your coin.")
	Dialog.AddVoiceover("voiceover/english/gornit_penwiggle/qey_village06/penwiggle003.mp3", 2188422, 1685073961)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddOption("Where is it?", "Option5")
	Dialog.Start()
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, now...I was sitting here shining the little trinket, when a fellow collector snatched it from me. Said he knew the rightful owners and that I oughta' forget all 'bout it.")
	Dialog.AddVoiceover("voiceover/english/gornit_penwiggle/qey_village06/penwiggle004.mp3", 1571183030, 1917018223)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Who is this fellow collector? ", "Option6")
	Dialog.Start()
end

function Option6(NPC, Spawn)
    SetStepComplete(Spawn, AnIntriguingEye, 6)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sorry, mate. Trade is my life, and if I off and told you his name, I'd never be able to do business at the Collector's Trove again. Wait ... forget I said Collector's Trove will ya?")
	Dialog.AddVoiceover("voiceover/english/gornit_penwiggle/qey_village06/penwiggle004.mp3", 1571183030, 1917018223)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddOption("Thanks for the tip. ")
	Dialog.Start()
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
