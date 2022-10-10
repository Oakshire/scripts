--[[
    Script Name    : SpawnScripts/WestFreeport/MatthiasZoe.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.09 01:10:32
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn, 12) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif GetTradeskillLevel(Spawn)==19 then
    if GetTradeskillClass(Spawn)== 2 or GetTradeskillClass(Spawn)== 6 or GetTradeskillClass(Spawn)== 10 then
    FaceTarget(NPC,Spawn)
 	PlayFlavor(NPC, "voiceover/english/alfred_ironforge/qey_harbor/100_trd_alfred_ironforge_callout_b5408196.mp3", "Please form a line to my left if you need to be certified.", "tapfoot", 3630438710, 674962613, Spawn)
    end
    end
end

   
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn, 12) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif GetTradeskillLevel(Spawn)<19 then
    if GetTradeskillClass(Spawn)~= 2 or GetTradeskillClass(Spawn)~= 6 or GetTradeskillClass(Spawn)~= 10 or GetTradeskillClass(Spawn)~= 1 then
    NotSkilled(NPC,Spawn)
    end
elseif GetTradeskillLevel(Spawn)==19 and GetTradeskillClass(Spawn)== 2 or GetTradeskillLevel(Spawn)==19 and GetTradeskillClass(Spawn)== 6 or GetTradeskillLevel(Spawn)==19 and GetTradeskillClass(Spawn)== 10 then
    if GetTradeskillClass(Spawn)== 2 then --Craftsman
        Craftsman(NPC,Spawn)
    elseif GetTradeskillClass(Spawn)== 6 then --Outfitter
        Outfitter(NPC,Spawn)
    elseif GetTradeskillClass(Spawn)== 10 then --Scholar
        Scholar(NPC,Spawn)
    end        
elseif GetTradeskillClass(Spawn)~= 2 and GetTradeskillClass(Spawn)~= 1 and GetTradeskillClass(Spawn)~= 6 and GetTradeskillClass(Spawn)~= 10 then
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
	Dialog.Start()
end


--Craftsman

function Craftsman(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm glad that you continued on as an Craftsman and came back to The Coalition of Tradesfolk. My name is Matthias Zoe, and I can certify you in your chosen trade specialty. I need your name and specialty before I can start your paperwork.")
--	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1033.mp3", 0, 0)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1033.mp3", "", "hello", 0, 0, Spawn)
	Dialog.AddOption("My name is "..GetName(Spawn)..", a Provisioner.", "Provisioner")
	Dialog.AddOption("My name is "..GetName(Spawn)..", an Woodworker.", "Woodworker")
	Dialog.AddOption("My name is "..GetName(Spawn)..", a Carpenter", "Carpenter")
	Dialog.Start()
end

--Provisioner

function Provisioner(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A provisioner, eh?  We can always use another provisioner in the city.  I want to make sure we're on the same page: As a provisioner you delight in making food and drink.  These are the goods that you want to become certified to make, correct?")
--	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge005.mp3",2473814327, 4225068215)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "ProvisionerYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function ProvisionerYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Provisioner", "Become proficient in the arts of a Provisioner.  You will specialize in preparing food and drink as your trade.                                                  [This can not be undone!]", 1, 130, "ProvisionerYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Craftsman.  You will not advance beyond tradeskill level 19.  Devona  to Alfred Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Provisioner?", "Cancel")
end

function ProvisionerYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTradeskillClass(Spawn)== 2 then
	SetTradeskillClass(Spawn,3)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Provisioner.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Provisioner.",250,250,200)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
	end
    FinalHail(NPC,Spawn)
end

--Woodworker

function Woodworker(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A woodworker, eh? We can always use another woodworker in the city. I want to make sure we're on the same page: As a Woodworker you delight in making bows, staffs, arrows, shields, and instruments. These are the goods that you want to become certified to make, correct?")
--	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge004.mp3",1043864057, 3920328023)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "WoodworkerYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function WoodworkerYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Woodworker", "Become proficient in the arts of Woodworking.  You will specialize in making bows, staffs, arrows, shields, and instruments.                     [This can not be undone!]", 0, 26, "WoodworkerYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Craftsman.  You will not advance beyond tradeskill level 19.  Return to Devona  Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Woodworker?", "Cancel")
end

function WoodworkerYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	if GetTradeskillClass(Spawn)== 2 then
	SetTradeskillClass(Spawn,4)
     SendMessage(Spawn, "Congratulations!  You have chosen the path of the Woodworker.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Woodworker.",250,250,200)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
	end
    FinalHail(NPC,Spawn)
end

--Carpenter

function Carpenter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A carpenter, eh? We can always use another carpenter. I want to make sure we're on the same page: As a Carpenter you delight in making furniture. These are the goods that you want to become certified to make, correct?")
--	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge006.mp3",2810852405, 855246268)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "CarpenterYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function CarpenterYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Carpenter", "Become proficient in the arts of a Carpenter.  You will specialize in making all sorts of furniture and repair kits.                                         [This can not be undone!]", 0, 560, "CarpenterYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Craftsman.  You will not advance beyond tradeskill level 19.  Return to Devona  Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Carpenter?", "Cancel")
end

function CarpenterYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTradeskillClass(Spawn)== 2 then
	SetTradeskillClass(Spawn,5)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Carpenter.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Carpenter.",250,250,200)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
    end
    FinalHail(NPC,Spawn)
end



--Outfitter

function Outfitter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm glad that you continued on as an Outfitter and came back to The Coalition of Tradesfolk. My name is Matthias Zoe, and I can certify you in your chosen trade specialty. I need your name and specialty before I can start your paperwork.")
--	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1033.mp3", 0, 0)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1031.mp3", "", "hello", 0, 0, Spawn)
	Dialog.AddOption("My name is "..GetName(Spawn)..", a Weaponsmith.", "Weaponsmith")
	Dialog.AddOption("My name is "..GetName(Spawn)..", an Armorer.", "Armorer")
	Dialog.AddOption("My name is "..GetName(Spawn)..", a Tailor", "Tailor")
	Dialog.Start()
end

--Weaponsmith

function Weaponsmith(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A weaponsmith, eh?  We can always use another weaponsmith in the city.  I want to make sure we're on the same page: As a Weaponsmith you delight in making weapons.  This is what you want to become certified to make, correct?")
	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge005.mp3",2473814327, 4225068215)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "WeaponsmithYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function WeaponsmithYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Weaponsmith", "Become proficient in the arts of a Weaponsmith.  You will learn to forge metal-based weaponry, such as swords, daggers, and axes.                                                            [This can not be undone!]", 1, 427, "WeaponsmithYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Outfitter.  You will not advance beyond tradeskill level 19.  Devona  to Alfred Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Weaponsmith?", "Cancel")
end

function WeaponsmithYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTradeskillClass(Spawn)== 6 then
	SetTradeskillClass(Spawn,7)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Craftsman.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Craftsman.",250,250,200)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
	end
    FinalHail(NPC,Spawn)
end

--Armorer

function Armorer(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("An armorer, eh? We can always use another armorer in the city. I want to make sure we're on the same page: As an Armorer you delight in making plate and chain mail armor. These are the goods that you want to become certified to make, correct?")
--	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge004.mp3",1043864057, 3920328023)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "ArmorerYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function ArmorerYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Armorer", "Become proficient in the arts of Armorer Smithing.  You will learn to forge making plate and chain mail armor.                                 [This can not be undone!]", 2, 411, "ArmorerYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Outfitter.  You will not advance beyond tradeskill level 19.  Return to Devona  Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Armorer?", "Cancel")
end

function ArmorerYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	if GetTradeskillClass(Spawn)== 6 then
	SetTradeskillClass(Spawn,8)
     SendMessage(Spawn, "Congratulations!  You have chosen the path of the Armorer.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Armorer.",250,250,200)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
	end
    FinalHail(NPC,Spawn)
end

--Tailor

function Tailor(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A tailor, eh?  We can always use another tailor in the city.  I want to make sure we're on the same page:  As a tailor you delight in making leather and cloth armor.  These are the goods that you want to become certified to make, correct?")
--	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge006.mp3",2810852405, 855246268)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "TailorYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function TailorYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Tailor", "Become proficient in the arts of a Tailoring.  You will specialize in sewing and weaving leather and cloth armor for protection.                                                                                                 [This can not be undone!]", 1, 417, "TailorYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Outfitter.  You will not advance beyond tradeskill level 19.  Return to Devona  Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Tailor?", "Cancel")
end

function TailorYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTradeskillClass(Spawn)== 6 then
	SetTradeskillClass(Spawn,9)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Tailor.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Tailor.",250,250,200)
    end
    FinalHail(NPC,Spawn)
end




--Scholar

function Scholar(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm glad that you continued on as an Scholar and came back to The Coalition of Tradesfolk. My name is Matthias Zoe, and I can certify you in your chosen trade specialty. I need your name and specialty before I can start your paperwork.")
--	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1033.mp3", 0, 0)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1033.mp3", "", "hello", 0, 0, Spawn)
	Dialog.AddOption("My name is "..GetName(Spawn)..", a Jeweler.", "Jeweler")
	Dialog.AddOption("My name is "..GetName(Spawn)..", an Sage.", "Sage")
	Dialog.AddOption("My name is "..GetName(Spawn)..", a Alchemist", "Alchemist")
	Dialog.Start()
end

--Jeweler

function Jeweler(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A jeweler, eh? We can always use another jeweler in the city. I want to make sure we're on the same page: As a jeweler you enjoy making scout abilities, earrings, necklaces, rings, bracelets, and belts. You want to be certified to make these goods, correct?")
--	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge005.mp3",2473814327, 4225068215)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "JewelerYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function JewelerYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Jeweler", "Become proficient in the arts of a Jeweler.  You will specialize in making scout abilities, earrings, necklaces, rings, bracelets, and belts.                                                          [This can not be undone!]", 1, 421, "JewelerYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Scholar.  You will not advance beyond tradeskill level 19.  Devona  to Alfred Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Jeweler?", "Cancel")
end

function JewelerYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTradeskillClass(Spawn)== 10 then
	SetTradeskillClass(Spawn,11)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Jeweler.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Jeweler.",250,250,200)
	end
    FinalHail(NPC,Spawn)
end

--Sage

function Sage(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A sage, eh? We can always use another sage in the city. I want to make sure we're on the same page: As a sage you delight in making mage and priest spell scrolls. These are the goods that you want to become certified to make, correct?")
--	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge004.mp3",1043864057, 3920328023)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "SageYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function SageYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become a Sage", "Become proficient in the arts of a Sage.  You will specialize in making mage and priest spell scrolls.                                              [This can not be undone!]", 1, 396, "SageYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Scholar.  You will not advance beyond tradeskill level 19.  Return to Devona  Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become a Sage?", "Cancel")
end

function SageYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	if GetTradeskillClass(Spawn)== 10 then
	SetTradeskillClass(Spawn,12)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Sage.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Sage.",250,250,200)
	end
    FinalHail(NPC,Spawn)
end

--Alchemist

function Alchemist(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("An alchemist, eh? We could always use another alchemist in the city. I want to make sure we're on the same page: As an alchemist you enjoy making fighter abilities, potions, poisons, and common components. These are the goods that you want to become certified to make, correct?")
--	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge006.mp3",2810852405, 855246268)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "AlchemistYes1")
	Dialog.AddOption("On second thought, let me get back to you.")
	Dialog.Start()
end

function AlchemistYes1(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Become an Alchemist", "Become proficient in the arts of Alchemy.  You will specialize in making making fighter abilities, potions, poisons, and common components.                                         [This can not be undone!]", 1, 402, "AlchemistYes2")
	AddOptionWindowOption(window, " Reconsider", "Stay an Scholar.  You will not advance beyond tradeskill level 19.  Return to Devona  Ironforge when you've made your decission.", 2, 13, "Cancel")
	SendOptionWindow(window, Spawn, "Are you sure you wish to become an Alchemist?", "Cancel")
end

function AlchemistYes2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTradeskillClass(Spawn)== 10 then
	SetTradeskillClass(Spawn,13)
    PlaySound(Spawn, "sounds/test/endquest.wav", GetX(Spawn), GetY(Spawn), GetZ(Spawn), Spawn)
    SendMessage(Spawn, "Congratulations!  You have chosen the path of the Alchemist.","yellow")
    SendPopUpMessage(Spawn, "Congratulations!  You have chosen the path of the Alchemist.",250,250,200)
    end
    FinalHail(NPC,Spawn)
end





function FinalHail(NPC,Spawn)
	Dialog.AddDialog("Okay. Now you're certified in your chosen tradesman specialty. I'm glad I could serve you. We always need skilled tradesman in the city.")
	Dialog.AddVoiceover("voiceover/english/alfred_ironforge/qey_harbor/alfred_ironforge008.mp3",3289915162, 765479278)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Many thanks, friend.")
	Dialog.Start()
    ApplySpellVisual(Spawn, 323)
end






function respawn(NPC)
	spawn(NPC)
end
