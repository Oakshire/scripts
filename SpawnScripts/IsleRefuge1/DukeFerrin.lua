--[[
    Script Name    : SpawnScripts/IsleRefuge1/DukeFerrin.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 03:08:19
    Script Purpose : Just parsed the dialog and placed it here.
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

local Qeynos = 5717
local Freeport = 5758

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, Qeynos)==1 or GetQuestStep(Spawn, Freeport)==1 then
    LeaveDialog1(NPC, Spawn)
    elseif GetQuestStep(Spawn, Qeynos)>1 then
    PlayFlavor(NPC,"voiceover/english/duke_ferrin/tutorial_island02/dukeferrin026.mp3","Very well, you will find the Qeynos dock to the south.  Ring the mariner's bell at the end of the dock, and a ship bound for Qeynos will pick you up.  I'm sure that one of the Qeynos representatives will cover your fee. ","",2656074166,2921193295,Spawn)
   
    elseif GetQuestStep(Spawn, Freeport)>1 then   
    PlayFlavor(NPC,"voiceover/english/duke_ferrin/tutorial_island02/dukeferrin027.mp3","The eastern-most dock is the one that ships bound for Freeport use.  If you ring the mariner's bell at the end of the dock, one of the ships leaving for Freeport will pick you up.  I'll make sure to collect your fee from the Ambassador.","",1132073001,313723949,Spawn)
    else    
    Dialog12(NPC, Spawn)
    end
end

--LEAVING DIALOG --
function LeaveDialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, I see you've managed to do quite well for yourself out here on the island.  I suppose I owe you some measure of gratitude for what you've managed to accomplish during your short stay here.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin023.mp3", 1028484409, 3054994254)
	Dialog.AddOption("Thanks, it's nice to know my efforts are appreciated.", "LeaveDialog2")
	Dialog.Start()
end

function LeaveDialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You seem capable of surviving in whatever city you end up living in, but you're lacking transportation.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin024.mp3", 4155527992, 2524136639)
	Dialog.AddOption("How about one of your boats?", "LeaveDialog3")
	Dialog.Start()
end

function LeaveDialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I suppose I could grant you passage on the next ship out. Which city have you decided on?")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin025.mp3", 422571619, 2531247876)
    if HasQuest(Spawn,5717) then
	Dialog.AddOption("Qeynos", "LeaveDialogQ")
    else
	Dialog.AddOption("Freeport", "LeaveDialogFP")
	end	Dialog.Start()
end




function LeaveDialogQ(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Very well, you will find the Qeynos dock to the south.  Ring the mariner's bell at the end of the dock, and a ship bound for Qeynos will pick you up.  I'm sure that one of the Qeynos representatives will cover your fee.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin026.mp3", 2656074166,2921193295)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Thank you very much.")
	Dialog.Start()
	SetStepComplete(Spawn,Qeynos,1)
end


function LeaveDialogFP(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The eastern-most dock is the one that ships bound for Freeport use.  If you ring the mariner's bell at the end of the dock, one of the ships leaving for Freeport will pick you up.  I'll make sure to collect your fee from the Ambassador.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin027.mp3", 1132073001,313723949)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("I'm sure you will.")
	Dialog.Start()
	SetStepComplete(Spawn,Freeport,1)
end


--REGULAR DIALOG
function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good, I wanted to thank you for saving his ship.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin002.mp3", 2083315863, 147267048)
		PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("You're welcome, sir.", "Dialog18")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("When the pact was first signed, the cities were struggling for power and would outbid each other for refugees. Now the cities are flooded with people and the prices for refugees have dropped considerably.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin017.mp3", 37642125, 3206293164)
	Dialog.AddOption("Makes life hard, I take it.", "Dialog9")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I've got to get back to my business now. Thanks again for your help, and good luck in your training.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin021.mp3", 2517965433, 188869534)
	Dialog.AddOption("Thanks, I think.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, it used to be that anyone with a ship ran refugees. But now only large guilds are able to make a profit, and even we struggle to make ends meet.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin016.mp3", 351897977, 1632338599)
	Dialog.AddOption("Struggle? Why?", "Dialog3")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No, but we are the best.  After all, no other guild has a training yard of this size and a live goblin uprising to boot!  Also, we are the only ones that serve both cities without bias.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin015.mp3", 2563532065, 144430100)
		PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddOption("How many others are there?", "Dialog5")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("When they arrive they find the shelter that they need.  We will get paid for delivering them, and the city will get another productive member of their populace. See? Everybody wins.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin014.mp3", 116354853, 1466552519)
	Dialog.AddOption("Are you the only ones doing this?", "Dialog6")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I really don't know what to believe.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin007.mp3", 3488389837, 1184589061)
		PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	Dialog.AddOption("Any chance they'll come here?", "Dialog16")
	Dialog.AddOption("Ok, thanks for the information.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The requirements of the cities are stricter and they now require us to train the refugees before bringing them to the cities. It eats at our profits and doesn't even guarantee the refugee citizenship.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin018.mp3", 2405207983, 1515901840)
		PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Citizenship?", "Dialog10")
	Dialog.AddOption("Thanks, I need to go now.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Each city handles it differently. You'll have to ask around once you get there. I'm sure that you will be able to figure it out.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin020.mp3", 335556939, 2791399074)
	Dialog.AddOption("Well, I'll take your word on it.", "Dialog4")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I've told you already, this is my island.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin009.mp3", 4082008395, 3368984616)
		PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	Dialog.AddOption("Ah, yes. You did.", "Dialog20")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're the one from Varlos' ship, aren't you? I've heard good things about you.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin001.mp3", 2623589670, 776244048)
	Dialog.AddOption("Yes, I was on the Far Journey.", "Dialog2")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Pact of Tserrin states that any vessel bearing skilled refugees could freely dock in either of the two great cities. We then get paid for each skilled person delivered to the custody of that city.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin012.mp3", 3910089570, 727267809)
	Dialog.AddOption("So you're a slave trader?", "Dialog17")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Some believe it's because of the recent goblin uprising on the island, but the truth is those accursed drakota destroyed our lost ships.  The drakota have been patrolling islands of the Shattered Lands for some time now, but recently, their influence has spread to my normal trade routes.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin004.mp3", 188044389, 1994449944)
		PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
	Dialog.AddOption("Why do they patrol these areas?", "Dialog19")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, some people say that they are mercenaries commanded by the ancient dragons... While others believe that they are just murderous beasts, slaughtering anyone that they see.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin006.mp3", 3074909983, 1367284073)
	Dialog.AddOption("Do you think that's true?", "Dialog8")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thankfully, no. This island has remained safe from Drakota attacks.  Now all we must worry about are those darned goblins.  The size and intensity of their raids is increasing daily.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin008.mp3", 1848258145, 1938603949)
	Dialog.AddOption("What is this place, anyway?", "Dialog11")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Not at all! We help those in need by preparing them for life in the great cities.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin013.mp3", 4090743588, 3726962133)
		PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddOption("Interesting.", "Dialog7")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm Jaestin Ferrin, and this is my island.  I own every ship that sails in or out of this port, although lately that number has been getting smaller.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin003.mp3", 3531893316, 2629206875)
	Dialog.AddOption("Why are the numbers getting smaller?", "Dialog14")
	Dialog.AddOption("I need to go now.")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, at one time we believed they were protecting their territory, but now it appears they are desperately searching for something.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin005.mp3", 3557517229, 3300941767)
	Dialog.AddOption("What are the Drakota?", "Dialog15")
	Dialog.AddOption("Thanks, I will be going now.")
	Dialog.Start()
end

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My organization, the Far Seas Trading Company, uses this island as their base of operations. We train all the refugees that we come across and then deliver them to the cities.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin010.mp3", 380598550, 2340237721)
		PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
	Dialog.AddOption("How did you start?", "Dialog21")
	Dialog.Start()
end

function Dialog21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We used to just run supplies from island to island, but when Qeynos and Freeport made the Pact of Tserrin, we started running refugees too.")
	Dialog.AddVoiceover("voiceover/english/duke_ferrin/tutorial_island02/dukeferrin011.mp3", 2327150283, 3235459245)
	Dialog.AddOption("What is the Pact of Tserrin?", "Dialog13")
	Dialog.Start()
end

