--[[
    Script Name    : SpawnScripts/IsleRefuge1/NathiniaSparklebright.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:26
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local Priest2 = 5732
local Priest3 = 5734
local Priest4 = 5738

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 16, "InRange", "LeaveRange")
    ProvidesQuest(NPC, Priest3)
    ProvidesQuest(NPC, Priest4)
end

function InRange(NPC,Spawn)
    if HasQuest(Spawn,Priest2)then	
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02_fvo_priestcallout.mp3","If you are one that follows the ways of the priest, then I need your help.","",2406483258,3086152442, Spawn)
    elseif not HasQuest(Spawn, Priest4) and HasCompletedQuest(Spawn,Priest3) and not HasCompletedQuest(Spawn,Priest4) then
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02_fvo_priestq2.mp3","I hope all is going well for you.","I hope all is going well for you.",3851336954,3648952364, Spawn)
        
    end
end

function hailed(NPC, Spawn)
if GetClass(Spawn)==0 then
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3","I can sense a deep spirituality inside you, but I can't teach you until you register with Garven.","no",0,0, Spawn)
elseif HasQuest(Spawn, Priest2) or not HasQuest(Spawn, Priest3) and not HasCompletedQuest(Spawn, Priest3) and HasCompletedQuest(Spawn,Priest2) then
    Dialog2(NPC,Spawn) 
elseif not HasQuest(Spawn, Priest4) and HasCompletedQuest(Spawn,Priest3) and not HasCompletedQuest(Spawn,Priest4) then
    Dialog3(NPC,Spawn) 
else
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Spiritual enlightenment is as important to being as air to breathe or food to eat.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright001.mp3", 3193576979, 57142690)
    if GetQuestStep(Spawn, Priest3)==2 then
	Dialog.AddOption("The statues have been cleansed.","Priest3Turnin")
    end    
    if GetQuestStep(Spawn, Priest4)==2 then
	Dialog.AddOption("I have five giant spider venom sacs for you.","Priest4Turnin")
    end
	Dialog.AddOption("Thank you for that bit of wisdom.")
	Dialog.Start()

end
end

function respawn(NPC)
	spawn(NPC)
end


--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------------


function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Word has spread about you defending our outpost from the goblin assaults.  Your effort is greatly appreciated.  However, I have another task, if you are interested.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright002.mp3", 514500382, 260398895)
    PlayFlavor(NPC, "", "", "curtsey", 0, 0, Spawn)
    Dialog.AddOption("I am interested.  What is it?","Interested")	
    Dialog.AddOption("Not right now.")	
	Dialog.Start()
    if HasQuest(Spawn, Priest2) then
        SetStepComplete(Spawn,Priest2,1)
    end
end

function Interested(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("The Gruttooth invaders you fought off at the barricades are but fodder compared to the goblins trying to push us from this outpost.  Among the more dangerous members of their makeshift army you'll find the Gruttooth mystics.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright003.mp3", 3378158003,1090901335)
    Dialog.AddOption("How are these mystics different?","Mystics")	
	Dialog.Start()
end

function Mystics(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("While physically the same as the other goblins, the mystics rely on depraved priestly powers gained from the idols they worship to perform their foul magic.  I've come to learn that the source of this power may have to do with the goblin idol statues found on this island.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright018.mp3", 2424446864,2926608065)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("And so you want me to destroy these statues.","YouWantMe")	
	Dialog.Start()
end

function YouWantMe(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Exactly.  It is only one of our professions that can perform such a task, for I've heard the idols are impossible to destroy without divine power.  Will you aid us in destroying the heart of these goblins' foul powers?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright019.mp3", 110104558,1387202040)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("I will.","Iwill")	
    Dialog.AddOption("Perhaps another time.")	
	Dialog.Start()
end

function Iwill(NPC,Player)
    OfferQuest(NPC,Player,Priest3)
    FaceTarget(NPC, Spawn)
end

function Priest3Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well done brave friend.  With the mystics weakened, the goblins will have a harder time with their siege plans.  I have taken the liberty of placing a reward in your bank.  Seek out Banker Vertbridge and he will help you receive it.  Wear them well, you will need the protection.  Are you able to assist us with another task?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright004.mp3", 1831865050,2426267765)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("Thank you. I will seek out the banker.","SeeBanker")	
	Dialog.Start()
    SetStepComplete(Spawn,Priest3,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function Dialog3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Thus far we've done well defending our outpost against the goblin forces, but now many goblins are tipping their spears with a form of poison.  Goblin shaman create the poison by using giant spider venom sacs.  We need you to collect a few of these sacs so I can produce an antidote.  Would you do us this favor, friend?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright006.mp3", 1039316566,2813655652)
    Dialog.AddOption("I will collect the venom sacs for you.","IwillCollect")	
    Dialog.AddOption("That does sound like a problem, but I am busy at the momment.")	
	Dialog.Start()
end

function IwillCollect(NPC,Player)
    OfferQuest(NPC,Player,Priest4)
    FaceTarget(NPC, Spawn)
end

function Priest4Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Excellent job!  You proved your value, adventurer.  I will start on this antidote immediately.  For a job well done, here are some leggings.  I know it is asking a lot, but may I ask you another favor?")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright008.mp3", 1685520077,3945672786)
    PlayFlavor(NPC, "", "", "curtsey", 0, 0, Spawn)
    Dialog.AddOption("I'll do what I can. [WORK IN PROGRESS]","Dialog4")	
	Dialog.Start()
    SetStepComplete(Spawn,Priest4,2)
end



--[[
    Script Name    : SpawnScripts/IsleRefuge1/NathiniaSparklebright.lua
    Script Author  : Ememjr
    Script Date    : 2022.03.06 11:03:22
    Script Purpose : 
                   : 



    local QUEST_FROM_Garven = 15004
    local QUEST_1 = 15012
    local QUEST_2 = 15008
    local QUEST_3 = 15024
    local QUEST_4 = 15016
   
    
    
function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "InRange10", "LeaveRange")
	
	
	
	ProvidesQuest(QUEST_1)
	ProvidesQuest(QUEST_2)
	ProvidesQuest(QUEST_3)
	ProvidesQuest(QUEST_4)
	
end

function InRange10(NPC)

    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02_fvo_priestcallout.mp3","","",2406483258,3086152442, Player)

end



function hailed(NPC, Player)
    if HasQuest(Player,15004) then
        SetStepComplete(Player, 15004, 1)
		GiveQuestReward(Quest, Player)
		OfferQuest1(NPC, Player)
	end
    if HasCompletedQuest(Player, QUEST_1) then
        Say (Player,"Completely HasCompletedQuest Quest_1")
		if HasCompletedQuest(Player, QUEST_2) then
		     Say (Player,"Completely HasCompletedQuest Quest_2")
			if HasCompletedQuest(Player, QUEST_3) then
			    Say (Player,"Completely HasCompletedQuest Quest_3")
				if HasCompletedQuest(Player, QUEST_4) then
				     Say (Player,"Completely HasCompletedQuest Quest_4")
                elseif HasQuest(Player, QUEST_4) then
					OnQuest4(NPC, Player, conversation)
				else
					OnQuest3(NPC, Player, conversation)
				end
			elseif HasQuest(Player, QUEST_3) then
				OnQuest3(NPC, Player, conversation)
			else
				OnQuest2(NPC, Player, conversation)
			end
		elseif HasQuest(Player, QUEST_2) then
			OnQuest2(NPC, Player, conversation)
		else
			OnQuest1(NPC, Player, conversation)
		end
    elseif HasQuest(Player, QUEST_1) then
        Say (Player,"HasQuest Quest_1")
		OnQuest1(NPC, Player, conversation)
	else
		OfferQuest1(NPC, Player)
    end
    
    
    
    
    
    if HasQuest(Player,15004) then
        SetStepComplete(Player, 15004, 1)
		GiveQuestReward(Quest, Player)
		OfferQuest1(NPC, Player)
	elseif HasQuest(Player,15004) == false and  HasQuest(Player,15012) == false and HasCompletedQuest(Player,15004) and HasCompletedQuest(Player,15012) == false then
	    OfferQuest1(NPC, Player)
	
	end
end
--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------------

function OfferQuest1(NPC, Player)
        conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright002.mp3", "", "", 514500382, 260398895, Player)
        AddConversationOption(conversation,"I am interested.  What is it?","Iinterested")
        StartConversation(conversation, NPC, Player,"Word has spread about you defending our outpost from the goblin assaults.  Your effort is greatly appreciated.  However, I have another task, if you are interested.")
end

function OnQuest1 (NPC, Player)
    Say(Player,"OnQuest1")
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright001.mp3","","",3193576979,57142690, Player)
    if HasQuest(Player,QUEST_1) then
        if QuestStepIsComplete(Player, 15012, 1) == true and QuestStepIsComplete(Player, 15012, 2) == false then
	        Say(Player,"Has 15012 and step 1 complete")
	        AddConversationOption(conversation,"The statues have been cleansed.","Cleansed")
	    else 
	        AddConversationOption(conversation,"Thank you for that bit of wisdom.  ")
        end
        StartConversation(conversation, NPC, Player,"Spiritual enlightenment is as important to being as air to breathe or food to eat.")
    else 
        Say(Player," offer quest 2 here")
        OfferQuest2(NPC,Player)
    end
end

function Cleansed (NPC,Player)
    SummonItem(Player,130119,1,"bank")
    SetStepComplete(Player, 15012, 2)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright005.mp3","","",1831865050,2426267765, Player)
    AddConversationOption(conversation,"Thank you. I will seek out the banker.","SeeBanker")
    StartConversation(conversation, NPC, Player,"Well done brave friend.  With the mystics weakened, the goblins will have a harder time with their siege plans.  I have taken the liberty of placing a reward in your bank.  Seek out Banker Vertbridge and he will help you receive it.  Wear them well, you will need the protection.  Are you able to assist us with another task?")
end
function SeeBanker (NPC,Player)
     
end
function Iinterested(NPC, Player)
    if HasQuest(Player,15004) == false and HasCompletedQuest(Player,15004) then
        conversation = CreateConversation()
        PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright003.mp3","","",3378158003,1090901335, Player)
        AddConversationOption(conversation,"How are these mystics different?","different")
        StartConversation(conversation, NPC, Player,"The Gruttooth invaders you fought off at the barricades are but fodder compared to the goblins trying to push us from this outpost.  Among the more dangerous members of their makeshift army you'll find the Gruttooth mystics.")
    end
end
function different(NPC, Player)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright018.mp3","","",2424446864,2926608065, Player)
    AddConversationOption(conversation,"And so you want me to destroy these statues.","YouWantMe")
    StartConversation(conversation, NPC, Player,"While physically the same as the other goblins, the mystics rely on depraved priestly powers gained from the idols they worship to perform their foul magic.  I've come to learn that the source of this power may have to do with the goblin idol statues found on this island.")
end

function YouWantMe(NPC, Player)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright019.mp3","","",110104558,1387202040, Player)
    AddConversationOption(conversation,"I will.","Iwill")
    StartConversation(conversation, NPC, Player,"Exactly.  It is only one of our professions that can perform such a task, for I've heard the idols are impossible to destroy without divine power.  Will you aid us in destroying the heart of these goblins' foul powers?")
end

function Iwill(NPC, Player)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright004.mp3","","",3851336954,3648952364, Player)
    AddConversationOption(conversation,"Thank you.","ThankYou")
    StartConversation(conversation, NPC, Player,"Thank you.  Be wary of the mystics who guard the idols.  Even without the idols they could prove to be deadly enemies.  May the gods protect you and guide your hand in this task.")
end
function ThankYou(NPC,Player)
    OfferQuest(NPC,Player,15012)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function OfferQuest2(NPC,Player)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright006.mp3","","",1039316566,2813655652, Player)
    AddConversationOption(conversation,"I hope all is going well for you.","")
    AddConversationOption(conversation,"I will collect the venom sacs for you.","IwillCollect")
    StartConversation(conversation, NPC, Player,"Thus far we've done well defending our outpost against the goblin forces, but now many goblins are tipping their spears with a form of poison.  Goblin shaman create the poison by using giant spider venom sacs.  We need you to collect a few of these sacs so I can produce an antidote.  Would you do us this favor, friend? ")
    
end
    
end
function IwillCollect(NPC,Player)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright007.mp3","","",2105546738,492895253, Player)
    AddConversationOption(conversation,"I will return shortly.","")
    StartConversation(conversation, NPC, Player,"Thank you.  I need enough venom sacs to create an antidote for the poisonous goblin spears.  Good luck.  Please be cautious.")
    OfferQuest(NPC,Player,QUEST_2)
    
end


function notme(NPC,Player)
    conversation = CreateConversation()
    Say(Player,"notme")
    
    SetStepComplete(Player, QUEST_2, 2)
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright008.mp3","","",1685520077,3945672786, Player)
	GiveQuestReward(Quest, Player)
    AddConversationOption(conversation,"I'll do what I can. ","dowhatican")
    StartConversation(conversation, NPC, Player,"Excellent job!  You proved your value, adventurer.  I will start on this antidote immediately.  For a job well done, here are some leggings.  I know it is asking a lot, but may I ask you another favor?")
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
--------------------------------------------------------------------------------------------------------------------------------
function OfferQuest3(NPC,Player)
    Say(Player," OfferQuest3 function start")
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright009.mp3","","",1871132929,3238860300, Player)
    AddConversationOption(conversation,"I hope all is going well for you.","")
    AddConversationOption(conversation,"I'll assist with the assault.","iWillAssist")
    StartConversation(conversation, NPC, Player,"Our scouts have found the location of the goblins' main encampment.  Adventurers are organizing now to attack the village.  I don't know if this will defeat the goblins or just scatter them for a time, but either way, it is a necessary action.  The warriors fighting there will undoubtedly need of your healing talents and blessings.  Could you join the assault on the goblin village and, perhaps, collect something for me in the process?")
end
function iWillAssist(NPC,Player)
Say(Player," OfferQuest3 i will assist")
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright010.mp3","","",2848196169,4101313986, Player)
    AddConversationOption(conversation,"I will gather the totems for you.","iWillGather")
    StartConversation(conversation, NPC, Player,"I believe the goblin shaman may be stirring up their people into an aggressive frenzy using the power of their vile totems.  Go with the other adventurers.  If you see some of these totems fall from the defeated goblins' hands, please collect them and bring them to me.  I would like to learn what is causing these goblins to be so hostile.")
   

end
function iWillGather(NPC,Player)
Say(Player," OfferQuest3 i will gather")
    OfferQuest(NPC,Player,QUEST_3)

end
function OnQuest3(NPC,Player)
    conversation = CreateConversation()
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright001.mp3","","",3193576979,57142690, Player)
    if HasQuest(Player,QUEST_3) then
        Say(Player,"On Quest 3")
        if QuestStepIsComplete(Player, QUEST_3, 1) == true and QuestStepIsComplete(Player, QUEST_3, 2) == false then
	        Say(Player,"Has quest 3 and step 1 complete")
	        AddConversationOption(conversation,"Thank you for that bit of wisdom.  ","")
            AddConversationOption(conversation,"I have returned with four totems for you.","FourTotems")
	    else 
	        AddConversationOption(conversation,"Thank you for that bit of wisdom.  ")
        end
        StartConversation(conversation, NPC, Player,"Spiritual enlightenment is as important to being as air to breathe or food to eat.")
    else 
        Say(Player," offer quest 4 here not has quest 4")
        OfferQuest4(NPC,Player)
    end    
end
function FourTotems(NPC,Player)
    conversation = CreateConversation()
    Say(Player,"FourTotems")
    
    SetStepComplete(Player, QUEST_3, 2)
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright011.mp3","","",744531264,1982225584, Player)
	GiveQuestReward(Quest, Player)
    AddConversationOption(conversation,"I will help with this task.","OfferQuest4")
    StartConversation(conversation, NPC, Player,"Excellent job!  You proved your value, adventurer.  I will start on this antidote immediately.  For a job well done, here are some leggings.  I know it is asking a lot, but may I ask you another favor?")



end


--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 4
--------------------------------------------------------------------------------------------------------------------------------
function OfferQuest4(NPC,Player)
    Say(Player," OfferQuest4 function start")
    iWillHelp(NPC, Player)
    end
function iWillHelp(NPC, Player)
    conversation = CreateConversation()
    Say(Player,"FourTotems")
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright012.mp3","","",4086085032,2441283948, Player)
    AddConversationOption(conversation,"I will help remove this orc from power.","RemoveThisOrc")
    StartConversation(conversation, NPC, Player,"We know the force behind the goblin attacks.  Some time ago a renowned orc pirate capsized on the island and took control of the goblin tribes.  Now he rules over the goblins and uses them for his private army.  We must put an end to his treachery.  We need your help.  Are you ready for the task, adventurer?")
end
function RemoveThisOrc(NPC, Player)
    conversation = CreateConversation()
    Say(Player,"RemoveThisOrc")
    PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright013.mp3","","",969428761,2830927430, Player)
    AddConversationOption(conversation,"I will return to you after slaying this beast.","IwillReturn")
    StartConversation(conversation, NPC, Player,"Good.  Others are planning an attack on the creature.  Go now and aid them with your healing and blessing powers.  They depend on you to keep them alive and well.  Be safe, young priest.  The orc hides in a cave at the far northeast side of the isle.  Find the cave and destroy the beast.")

    
end
function IwillReturn(NPC, Player)
    Say(Player," OfferQuest4 i will return")
    OfferQuest(NPC,Player,QUEST_4)
end







function nope(NPC, Player)


StartConversation(conversation, NPC, Player,spiritail )
AddConversationOption(conversation,"The orc has been removed from power.","")


PlayFlavor(NPC,"voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright014.mp3","",1479847046,137812808, Player)
StartConversation(conversation, NPC, Player,"Now that the orc is defeated the goblin attacks should cease.  We thank you for your hard work.  In appreciation, on behalf of our people, I offer you a sceptre.  May the gods look upon you favorably, friend.")
AddConversationOption(conversation,"Thank you for the gift.  ","")

end


















function respawn(NPC)
	spawn(NPC)
end]]--