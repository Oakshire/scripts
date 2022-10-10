--[[
    Script Name    : SpawnScripts/QeynosHarbor/AlfredIronforge.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.08 03:10:34
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")   
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif GetTradeskillLevel(Spawn)==9 and GetTradeskillClass(Spawn)== 1 then
 	PlayFlavor(NPC, "voiceover/english/alfred_ironforge/qey_harbor/100_trd_alfred_ironforge_callout_b5408196.mp3", "Please form a line to my left if you need to be certified.", "tapfoot", 3630438710, 674962613, Spawn)
end
end
    
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif GetTradeskillLevel(Spawn)<9 and GetTradeskillClass(Spawn)== 1 then
    NotSkilled(NPC,Spawn)
elseif GetTradeskillLevel(Spawn)==9 and GetTradeskillClass(Spawn)== 1 then
  Dialog1(NPC,Spawn)  
elseif GetTradeskillClass(Spawn)>1 then
    AlreadySkilled(NPC,Spawn)
    end
end



function NotSkilled(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello, friend. You're not skilled enough to receive certification in a tradesman specialty. Practice your skills and return to me after you gain more experience.")
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "hello", 0, 0, Spawn)
	Dialog.AddOption("Ok I will do.")
	Dialog.Start()
end

function AlreadySkilled(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're certified already friend.")
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge001.mp3",2173353496, 3693694171)
	Dialog.AddOption("Oh yes I forgot.")
	Dialog.AddOption("Good to see you again, Alfred.")
	Dialog.Start()
end




function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm glad you introduced yourself to The Ironforge Exchange.  My name is Alfred Ironforge, and I can certify you in your chosen trade class. Before I begin your paperwork, I'll need your name and profession.")
	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge003.mp3", 3524215617, 3865129979)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddOption("My name is "..GetName(Spawn)..", a Crafter.", "Crafter")
	Dialog.AddOption("My name is "..GetName(Spawn)..", an Outfitter.", "Outfitter")
	Dialog.AddOption("My name is "..GetName(Spawn)..", a Scholar", "Scholar")
	Dialog.Start()
end

--CRAFTSMAN

function Crafter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A craftsman, eh? We could always use another craftsman in the city.  I want to make sure we are on the same page.  A craftsman makes food, drink, furniture, staves, bows, shields, arrows, and instruments.  You wanna be certified to make these goods, correct?")
	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge005.mp3",2473814327, 4225068215)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "CrafterYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function CrafterYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Crafstman", "Become proficient in the arts of a Craftsman.  You will learn to craft food, drink, furniture, staves, bows, shields, arrows, and instruments in this profession.                                                            [This can not be undone!]", 0, 26, "CrafterYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Artisan.  You will not advance beyond tradeskill level 9.  Return to Alfred Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Craftsman?", "Cancel")
end

function CrafterYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTradeskillClass(Spawn)== 1 then
	SetTradeskillClass(Spawn,2)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Craftsman.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Craftsman.",250,250,200)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
	end
    FinalHail(NPC,Spawn)
end

--OUTFITTER

function Outfitter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("An outfitter, eh?  We could always use another outfitter in the city. I want to make sure we're on the same page. As an outfitter, you delight in making weapons, plate armor, chain armor, cloth armor, and leather armor. You want certification to make these goods, correct?")
	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge004.mp3",1043864057, 3920328023)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "OutfitterYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function OutfitterYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Outfitter", "Become proficient in the arts of an Outfitter.  You will learn to craft weapons and armor for all classes in this profession.                      [This can not be undone!]", 0, 32, "OutfitterYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Artisan.  You will not advance beyond tradeskill level 9.  Return to Alfred Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Outfitter?", "Cancel")
end

function OutfitterYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	if GetTradeskillClass(Spawn)== 1 then
	SetTradeskillClass(Spawn,6)
     SendMessage(Spawn, "Congratulations!  You have chosen the path of the Outfitter.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Outfitter.",250,250,200)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
	end
    FinalHail(NPC,Spawn)
end

--SCHOLAR

function Scholar(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A scholar, eh? We could always use another scholar in the city.  I want to make sure we are on the same page. A scholar makes spell scrolls, combat scrolls, potions, poisons, and jewelry.  You wanna be certified to make these goods, correct?")
	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge006.mp3",2810852405, 855246268)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "ScholarYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function ScholarYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Scholar", "Become proficient in the arts of a Scholar.  You will learn to craft spell scrolls, combat scrolls, potions, poisons, and jewelry in this profession.                                                                                                 [This can not be undone!]", 0, 3807, "ScholarYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Artisan.  You will not advance beyond tradeskill level 9.  Return to Alfred Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Scholar?", "Cancel")
end

function ScholarYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTradeskillClass(Spawn)== 1 then
	SetTradeskillClass(Spawn,10)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Scholar.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Scholar.",250,250,200)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
    end
    FinalHail(NPC,Spawn)
end





function FinalHail(NPC,Spawn)
	Dialog.AddDialog("Okay. You're certified in your chosen tradesman class.  I'm glad I could serve you.  We always need skilled tradesman in the city.")
	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge008.mp3",3289915162, 765479278)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Many thanks, friend.")
	Dialog.Start()
    ApplySpellVisual(Spawn, 324)
end






function respawn(NPC)
	spawn(NPC)
end