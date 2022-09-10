--[[
    Script Name    : SpawnScripts/IsleRefuge1/GarvenTralk.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.05 05:09:08
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local IsleIntro = 5725

local FighterGI = 5726
local PriestGI = 5727
local MageGI = 5728
local ScoutGI = 5729

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
ProvidesQuest(NPC,FighterGI)
ProvidesQuest(NPC,PriestGI)
ProvidesQuest(NPC,MageGI)
ProvidesQuest(NPC,ScoutGI)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if HasQuest(Spawn,IsleIntro) and not HasCompletedQuest(Spawn,IsleIntro) then
    Dialog1(NPC,Spawn)--CLASS SELECTION
elseif not HasQuest(Spawn, FighterGI) and not HasCompletedQuest(Spawn, FighterGI) 
    or not HasQuest(Spawn, PriestGI) and not HasCompletedQuest(Spawn, PriestGI) 
    or not HasQuest(Spawn, MageGI) and not HasCompletedQuest(Spawn, MageGI) 
    or not HasQuest(Spawn, ScoutGI) and not HasCompletedQuest(Spawn, ScoutGI) then
    Dialog2(NPC,Spawn)--START OF GRUTTOOTH INVASION (DIALOG1 LEADS TO THIS ALSO)

elseif GetQuestStep(Spawn, FighterGI)~=3 and  HasCompletedQuest(Spawn,IsleIntro)
    or GetQuestStep(Spawn, PriestGI)~=3 and HasCompletedQuest(Spawn,IsleIntro) 
    or GetQuestStep(Spawn, MageGI)~=3  and HasCompletedQuest(Spawn,IsleIntro) 
    or GetQuestStep(Spawn, ScoutGI)~=3 and  HasCompletedQuest(Spawn,IsleIntro) then
	PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02/garventralk001.mp3", "If we don't get refugees with some degree of skill soon we'll have to pull out of here.", "tantrum", 1755275352, 190331174, Spawn, 0)

--elseif GetQuestStep(Spawn, FighterGI)==3 then
--    Dialog3F(NPC,Spawn)
--elseif GetQuestStep(Spawn, PriestGI)==3 then
--    Dialog3P(NPC,Spawn)
--elseif GetQuestStep(Spawn, MageGI)==3 then
--    Dialog3M(NPC,Spawn)
--elseif GetQuestStep(Spawn, ScoutGI)==3 then
--    Dialog3S(NPC,Spawn)
    

else    
	PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02/garventralk001.mp3", "If we don't get refugees with some degree of skill soon we'll have to pull out of here.", "nod", 1755275352, 190331174, Spawn, 0)
end
end

function InRange(NPC,Spawn)
    if HasQuest(Spawn,IsleIntro) then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02_fvo_onaoienter.mp3", "You there! Stop standing around like a drunken sailor and get over here!", "beckon", 4010256509, 3318344012, Spawn, 0)
end    
end

function respawn(NPC)
	spawn(NPC)
end



function Dialog1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'll make this quick because we have no time for pleasantries.  Welcome to the Isle of Refuge.  Name and profession please?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk002.mp3", 1422110417, 3383506524)
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Fighter.", "Fighter")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Priest.", "Priest")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Mage.", "Mage")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Scout.", "Scout")
	Dialog.Start()
end

function Scout(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A scout, eh?  Good. We can use someone with a cool head and a keen eye with all the goblins causing trouble around here.  As a scout, you'll use your stealth and speed to sneak up on opponents and take them out quickly.  Watch yourself though, because if you're not quick enough, a good strong blow will certainly take its toll on you.  You think you can handle that?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk006.mp3",3084961366, 1162504968)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "YesS")
	Dialog.AddOption("No, I don't think I'm a scout after all. ", "No")
	Dialog.Start()
end

function YesS(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn,IsleIntro,1)
	SetAdventureClass(Spawn,31)
    SendMessage(Spawn, "Congradulations!  You have chosen the path of the Scout.")
    OfferQuest(NPC,Spawn,ScoutGI)
	if GetLevel(Spawn)<3 then
	SetPlayerLevel(Spawn,3)
	end
end


function Priest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A priest, eh?  Well, I'm not a religious man myself, but it can't hurt to have a little divine wrath on our side with all these goblins about.  As a priest, your first duty should be healing and blessing your comrades using divine power.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk005.mp3",3178428692, 3357533426)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "PContinue")
	Dialog.AddOption("No, I don't think I'm a priest after all. ", "No")
	Dialog.Start()
end


function PContinue(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Though, most priests I've seen are no strangers to combat, and you should be able to take a pretty good beating and walk away.  You think you can handle that?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk016.mp3",1887135280, 3302385767)
	Dialog.AddOption("Yes.", "YesP")
	Dialog.AddOption("No, I don't think I'm a priest after all. ", "No")
	Dialog.Start()
end

function YesP(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetAdventureClass(Spawn,11)
 	SetStepComplete(Spawn,IsleIntro,1)
    SendMessage(Player, "Congradulations!  You have chosen the path of the Priest.")
	OfferQuest(NPC,Spawn,PriestGI)
    SetStepComplete()
	if GetLevel(Spawn)<3 then
	SetPlayerLevel(Spawn,3)
	end
end


function PContinue2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	SetStepComplete(Spawn,IsleIntro,1)
	SetAdventureClass(Spawn,11)
	Dialog.AddDialog("I know you may think this is none of your affair, but trust me, if you want to get off this island alive and well you have no choice. Come back to me after you've defeated at least one Gruttooth invader and maybe I can help you out.")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk009.mp3",3552772782, 395294110)
	PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	Dialog.AddOption("Very well.", "VeryWellP")
	Dialog.Start()
end

function Mage(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A mage, eh?  Well, I suppose we can use another finger wiggler to blast those goblins.  As a mage, you'll want to keep out of harm's way, casting spells at your opponents from afar while using your skills to bolster the strengths of your comrades.  You think you can handle that?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk004.mp3",4064296698, 2344383493)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "YesM")
	Dialog.AddOption("No, I don't think I'm a mage after all. ", "No")
	Dialog.Start()
end

function YesM(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn,IsleIntro,1)
    SendMessage(Spawn, "Congradulations!  You have chosen the path of the Mage.")
	SetAdventureClass(Spawn,21)
    OfferQuest(NPC,Spawn,MageGI)
	if GetLevel(Spawn)<3 then
	SetPlayerLevel(Spawn,3)
	end
end


function Fighter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A fighter, eh?  Good. We could always use another blade to stick it to them goblins.  As a fighter, you'll be in the thick of battle most of the time protecting your comrades from harm and relying on your equipment and combat skills to see you through it.  Are you sure you can handle that?")
	Dialog.AddVoiceover("voiceover/english/garven_tralk/tutorial_island02/garventralk003.mp3",2483812804, 239361223)
	PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddOption("Yes.", "YesF")
	Dialog.AddOption("No, I don't think I'm a fighter after all. ", "No")
	Dialog.Start()
end

function YesF(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn,IsleIntro,1)
	SetAdventureClass(Spawn,1)
    SendMessage(Spawn, "Congradulations!  You have chosen the path of the Fighter.")
    OfferQuest(NPC,Spawn,FighterGI)
	if GetLevel(Spawn)<3 then
	SetPlayerLevel(Spawn,3)
	end
end


function No(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("Yes, I didn't think you looked the type.  So what is your profession?")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Fighter.", "Fighter")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Priest.", "Priest")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Mage.", "Mage")
	Dialog.AddOption("My name is "..GetName(Spawn)..".  I am a Scout.", "Scout")
	Dialog.Start()

end

function Dialog2(NPC,Spawn)
--	if HasCompletedQuest(Spawn, IsleIntro) then
			if GetClass(Spawn) == 1 then
				OfferQuest(NPC, Spawn,FighterGI)
			elseif GetClass(Spawn) == 31 then
				OfferQuest(NPC, Spawn,ScoutGI)
			elseif GetClass(Spawn) == 21 then
				OfferQuest(NPC, Spawn,MageGI)
			elseif GetClass(Spawn) == 11 then
				OfferQuest(NPC, Player,PriestGI)
			end
end
--end

--[[function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "InRange10", "LeaveRange")
	
	ProvidesQuest(NPC,15002)
end

function InRange10(NPC)
	PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02_fvo_onaoienter.mp3", "You there! Stop standing around like a drunken sailor and get over here!", "", 4010256509, 3318344012, Player)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Player)



	if HasQuest(Player, 15000) == true then
	    Say(Player, "I have quest 15000")
	    
	    if  (HasCompletedQuest(Player, 15000) == false) then
		    Say(Player, "I have not completed quest 15000")
    	    if GetClass(Player) == 0 then
			    getarch(NPC,Player)
		    else
		        VeryWell(NPC,Player)
		    end
		end
    end
    if  (HasCompletedQuest(Player, 15000) == true) then
	        Say(Player, "I have completed quest 15000a")
	end


	if HasQuest(Player, 15001) or HasQuest(Player, 15023) then
	    
		Say(Player, "I have quest 15001 with step 1 complete" )
		conversation = CreateConversation()
		if GetClass(Player) == 11 then
		    PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02/garventralk013.mp3", "", "", 2629138790, 804939192, Player)
			AddConversationOption(conversation, "Thanks.", "thanksP")
			StartConversation(conversation, NPC, Player, "Well done, you might make it off this island after all.  I'll tell you what.  Take this pair of gloves for your help, you're sure to need all the protection you can get for the duration of your stay here.  Now if you actually want to get off this island and see one of the big cities one day, I suggest you talk to Nathinia Sparklebright.  She's in charge of all the new priests and can usually be found meditating by the fountain in town.  Good luck to you.")
		end
		if GetClass(Player) == 21 then
		    PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02/garventralk012.mp3", "", "", 1248305011, 3683529392, Player)
			AddConversationOption(conversation, "Thanks.", "thanksM")
			StartConversation(conversation, NPC, Player, "Well done, you might make it off this island after all.  I'll tell you what.  Take this pair of gloves for your help, you're sure to need all the protection you can get for the duration of your stay here.  Now if you actually want to get off this island and see one of the big cities one day, I suggest you talk to Mizan Vaeoulin.  He's in charge of all the new mages and can be found inside the wizard tower in town.  Good luck to you.")
		end
		if GetClass(Player) == 1 then
		    PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02/garventralk011.mp3", "", "", 2701236419, 2048899466, Player)
			AddConversationOption(conversation, "Thanks.", "thanksF")
			StartConversation(conversation, NPC, Player, "Well done, you might make it off this island after all.  I'll tell you what.  Take this pair of gloves for your help, you're sure to need all the protection you can get for the duration of your stay here.  Now if you actually want to get off this island and see one of the big cities one day, I suggest you talk to Braksan Steelforge.  He's in charge of all the new fighters and can be found at the forge in town.  Good luck to you.")
		end
		if GetClass(Player) == 31 then
		    PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02/garventralk014.mp3", "", "", 3569991620, 129801619, Player)
			AddConversationOption(conversation, "Thanks.", "thanksS")
			StartConversation(conversation, NPC, Player, "Well done, you might make it off this island after all.  I'll tell you what.  Take this pair of gloves for your help, you're sure to need all the protection you can get for the duration of your stay here.  Now if you actually want to get off this island and see one of the big cities one day, I suggest you talk to Vladiminn.  That wily ratonga is in charge of all the new scouts and can usually be found at the archery range in town.  Good luck to you.")
		end
	end
	Say(Player, "checking now for quest 15002" )
	if  HasQuest(Player,15002) == false and  HasCompletedQuest(Player, 15001) ==true then
			if GetClass(Player) == 1 then
				OfferQuest(NPC, Player,15002)
			elseif GetClass(Player) == 31 then
				OfferQuest(NPC, Player,15005)
			elseif GetClass(Player) == 21 then
				OfferQuest(NPC, Player,15003)
			elseif GetClass(Player) == 11 then
				OfferQuest(NPC, Player,15004)
			end
	end



end
function thanksF(NPC,Player)
    alignment = GetDeity(Player)
	if alignment == 0 then
	    SetStepComplete(Player, 15023, 3)
	    GiveQuestReward(Quest, Player)
	    OfferQuest(NPC, Player,15002)
	else
		SetStepComplete(Player, 15001, 3)
		GiveQuestReward(Quest, Player)
	    OfferQuest(NPC, Player,15002)
	end
end
function thanksM(NPC,Player)
    alignment = GetDeity(Player)
	if alignment == 0 then
	    SetStepComplete(Player, 15023, 3)
	    GiveQuestReward(Quest, Player)
	    OfferQuest(NPC, Player,15003)
	else
		SetStepComplete(Player, 15001, 3)
		GiveQuestReward(Quest, Player)
	    OfferQuest(NPC, Player,15003)
	end
end
function thanksP(NPC,Player)
    alignment = GetDeity(Player)
	if alignment == 0 then
	    SetStepComplete(Player, 15023, 3)
	    GiveQuestReward(Quest, Player)
	    OfferQuest(NPC, Player,15003)
	else
		SetStepComplete(Player, 15001, 3)
		GiveQuestReward(Quest, Player)
	    OfferQuest(NPC, Player,15003)
	end
end
function thanksS(NPC,Player)
    alignment = GetDeity(Player)
	if alignment == 0 then
	    SetStepComplete(Player, 15023, 3)
	    GiveQuestReward(Quest, Player)
	    OfferQuest(NPC, Player,15005)
	else
		SetStepComplete(Player, 15001, 3)
		GiveQuestReward(Quest, Player)
	    OfferQuest(NPC, Player,15005)
	end
end





function VeryWell(NPC, Player)
        SetStepComplete(Player, 15000, 1)
		alignment = GetDeity(Player)
		if alignment == 0 then
			OfferQuest(NPC, Player, 15023) -- evil rewards
		else
			OfferQuest(NPC, Player, 15001) -- good rewards
		end
		

end]]--