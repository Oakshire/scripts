--[[
    Script Name    : SpawnScripts/Antonica/LordQuinnClothspinner.lua
    Script Author  : Dorbin
    Script Date    : 05/11/2023
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local Sayer = 5812

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to the Keep of the Ardent Needle. You may rest here until I see fit to send you on your way. ")
	Dialog.AddVoiceover("voiceover/english/lord_quinn_clothspinner/antonica/lordquinn000.mp3", 396621608, 1119860372)
    PlayFlavor(NPC,"","","sniff",0,0,Spawn)
    if  GetQuestStep(Spawn, Sayer) == 2 then 
	Dialog.AddOption("Delivery from Sayer's Outfitters. ", "Option1")
	elseif GetQuestStep(Spawn, Sayer) == 4 then 
	Dialog.AddOption("Here is your sewing kit. ", "Needles")
    end
	Dialog.AddOption("I will not rest with such inhospitality. ")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("By the Words of Aeris! You evaded any bandits and brought me my goods. You are one brave serf, I must say.")
	Dialog.AddVoiceover("voiceover/english/lord_quinn_clothspinner/antonica/lordquinn001.mp3", 1307588418, 2989824409)
    PlayFlavor(NPC,"","","boggle",0,0,Spawn)
	Dialog.AddOption("I believe Sayer expects payment. ", "Option2")
	Dialog.Start()
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Listen here, courier! I am a member of the Qeynos House of Lords. I shall pay when I see fit. If you want Sayer's coins, you must first serve me.")
	Dialog.AddVoiceover("voiceover/english/lord_quinn_clothspinner/antonica/lordquinn002.mp3", 2647012448, 593979738)
    PlayFlavor(NPC,"","","scold",0,0,Spawn)
	Dialog.AddOption("Just send your watchmen.", "Option3")
	Dialog.AddOption("No one speaks to me like that. Farewell.")
	Dialog.Start()
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I am the esteemed landowner here, and you are the serf. I give the orders!")
	Dialog.AddVoiceover("voiceover/english/lord_quinn_clothspinner/antonica/lordquinn003.mp3", 28178075, 1928072571)
    PlayFlavor(NPC,"","","stare",0,0,Spawn)
	Dialog.AddOption("All right! For Mr. Sayer I'll do it.", "Option4")
	Dialog.AddOption("I guess Mr. Sayer isn't getting paid.  ")
	Dialog.Start()
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, Sayer, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Seek out the ruins of Caltorsis Keep. Take this strongbox key and in the crumbling keep are my precious Needles of Nerissa, the reason we Clothspinners went from lackey to lords. ")
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/lord_quinn_clothspinner/antonica/lordquinn004.mp3", 1822607335, 2633932794)
	Dialog.AddOption("I'll return. You have that coin ready.")
	Dialog.Start()
end




function Needles(NPC, Spawn)
    SetStepComplete(Spawn, Sayer, 4)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My dear sewing kit! It's been in my family for generations. What would I have done without it! The Clothspinner luck would have run dry. No one will ever force me to give up these gems again.   ")
	Dialog.AddVoiceover("voiceover/english/lord_quinn_clothspinner/antonica/lordquinn005.mp3", 3375752901, 1571967218)
    PlayFlavor(NPC,"","","heartattack",0,0,Spawn)
	Dialog.AddOption("It's just a sewing kit!")
	Dialog.AddOption("Alright then... I'll just be going now.")
	Dialog.Start()
end



