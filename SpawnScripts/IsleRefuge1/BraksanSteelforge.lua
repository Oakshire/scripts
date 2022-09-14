--[[
    Script Name    : SpawnScripts/IsleRefuge1/BraksanSteelforge.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 02:09:38
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local Fighter2 = 5731
local Fighter3 = 5735
local Fighter4 = 5739
local Fighter5 = 5743

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 14, "InRange", "LeaveRange")
    ProvidesQuest(NPC, Fighter3)
    ProvidesQuest(NPC, Fighter4)
    end

function InRange(NPC,Spawn)
if GetClass(Spawn)== 0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","You there! You look like a fighter, but I can't be helping someone who isn't properly registered with Garven.  Go back to the beach, find him, and register at once.","no",0,0, Spawn)
else
    if HasQuest(Spawn,Fighter2)then	
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/braksan_steelforge/tutorial_island02_fvo_fighterintro.mp3","You there!  You look like someone who can destroy those little green monsters.  I need your help.","hello",3168609453,3358176897, Spawn)
    elseif not HasQuest(Spawn, Fighter4) and HasCompletedQuest(Spawn,Fighter3) and not HasCompletedQuest(Spawn,Fighter4) then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/braksan_steelforge/tutorial_island02_fvo_fighterq2.mp3","Ahh, there you are!  I can use your help.","beckon",2456679786,1937248917, Spawn)
    end
end
end

function hailed(NPC, Spawn)
    if  HasQuest(Spawn, Fighter2) or not HasQuest(Spawn, Fighter3) and not HasCompletedQuest(Spawn, Fighter3) and HasCompletedQuest(Spawn,Fighter2) then
    Dialog2(NPC,Spawn) 

    else    
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I wish I could chit-chat but I must work.  The goblins don't care how many times I fix these things, they just keep breaking them.")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge001.mp3", 3328433629, 3720216759)
    if GetQuestStep(Spawn,Fighter3)==2 then
	Dialog.AddOption("There are four less goblins to worry about.","Quest3Turnin")
	end
    if not HasQuest(Spawn, Fighter4) and HasCompletedQuest(Spawn,Fighter3) and not HasCompletedQuest(Spawn,Fighter4) then	
	Dialog.AddOption("I am interested in helping out.  Do you have any work for me?","Quest4Start")
    end
    if not HasQuest(Spawn, Fighter5) and HasCompletedQuest(Spawn,Fighter4) and not HasCompletedQuest(Spawn,Fighter5) then	
	Dialog.AddOption("What other work did you want to talk about?","Quest5Start")
    end
    if GetQuestStep(Spawn,Fighter4)==2 then
	Dialog.AddOption("I killed five of the goblin aggressors.","Quest4Turnin")
	end    
    if GetQuestStep(Spawn,Fighter5)==2 then
	Dialog.AddOption("I have four flint head spears for you.","Quest5Turnin")
	end    
    Dialog.AddOption("I will leave you to your work.")


	Dialog.Start()
end
end

function respawn(NPC)
	spawn(NPC)
end


--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
--------------------------------------------------------------------------------------------------------------------------------


function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I heard you smacked around a few goblins at the gate.  Good work!  Those nasty critters need a whooping to knock some sense into their thick skulls.  If you are lookin for work, I could use some help.  Are you interested?")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge002.mp3", 1509886457, 290634781)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    Dialog.AddOption("I am interested.  What is it?","Interested")	
    Dialog.AddOption("Not right now.")	
	Dialog.Start()
    if HasQuest(Spawn, Fighter2) then
        SetStepComplete(Spawn,Fighter2,1)
    end
end



function Interested(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("The duke has charged me with rounding up a few brave warriors and you fit the bill.  Goblins are staging attacks from a forward supply camp in the west.  We've charged a few finger wagglin' mages to destroy the supplies, but in their fancy robes they're not much use.  We need help with the supply runners guarding the camp.  Would you help us, adventurer?")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge003.mp3", 3096036841, 3817796616)
    Dialog.AddOption("It'd be my pleasure to bust a few more goblin skulls.","Quest3Start")	
	Dialog.Start()
end

function Quest3Start(NPC,Player)
    OfferQuest(NPC,Player,Fighter3)
    FaceTarget(NPC, Spawn)
end

function Quest3Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Nice job!  I knew you'd do well.  As payment I placed a fine pair of boots in your bank.  Talk to Banker Vertbridge and he'll get the boots for you.")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge005.mp3", 856327109, 3223978873)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("I will go check the bank.")	
	Dialog.Start()
    SetStepComplete(Spawn,Fighter3,2)
end


--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 4
--------------------------------------------------------------------------------------------------------------------------------


function Quest4Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I must organize a search party for some refugees who wandered into the wilderness.  Unfortunately, because our guards are watching over the barricades, I've been unable to organize a party.  I'm afraid those goblin buggers are holding the refugees in an alcove west of here.  Will you be willing to crack a few goblin skulls for us?")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge006.mp3", 2676048621, 3798941591)
    Dialog.AddOption("I can handle a few goblins.","Quest4Offer")	
    Dialog.AddOption("No, thanks.  I'm busy.")	
	Dialog.Start()
end

function Quest4Offer(NPC,Player)
    OfferQuest(NPC,Player,Fighter4)
    FaceTarget(NPC, Spawn)
end

function Quest4Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Excellent work adventurer!  The refugees are safe.  Hopefully now they will know better than to wander off into the woods.  As promised here is your reward.  These leggings will protect you, and trust me, you'll need them.  I have another job for you.  The scouts discovered more useful information.  Curious to know what they found?")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge008.mp3", 2823482933, 2765578198)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    Dialog.AddOption("Perhaps, what is it?","Quest5Start")	
	Dialog.Start()
    SetStepComplete(Spawn,Fighter4,2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 5
--------------------------------------------------------------------------------------------------------------------------------

function Quest5Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I knew you'd help!  It's time for those green beasties to get what's coming to them!  Our scouts located the goblins' main encampment in the northwest!  Other adventurers are setting out to give those goblins a good arse kicking!  They'll need your help.  No one serves up a whoopin' like a fighter.  Am I right?")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge009.mp3", 3901042740, 207303651)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Of course you are!","Quest5Offer")	
    Dialog.AddOption("Actually, I have some other buisness to attend to.")	
	Dialog.Start()
    SetStepComplete(Spawn,Fighter4,2)
end

function Quest5Offer(NPC,Player)
    OfferQuest(NPC,Player,Fighter5)
    FaceTarget(NPC, Spawn)
end

function Quest5Turnin(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Ah, yes.  The spears will do just fine.  Thank you for your hard work, friend. I knew you were a brave fighter.  Please accept this hand-made tunic for your hard work in the outpost.  Now I hate to ask you, knowing how much fighting you have already done, but I thought you might be curious about what's causing the goblin attacks.")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge011.mp3", 2911283846, 1300227614)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    Dialog.AddOption("I am interested in helping out.  Do you have any work for me? [WORK IN PROGRESS]","")	
    Dialog.AddOption("No, I want to get off this island.")	
	Dialog.Start()
    SetStepComplete(Spawn,Fighter5,2)
end

--[[
(1120758857)[Thu Jul 07 13:54:17 2005] Your quest journal has been updated.
(1120758857)[Thu Jul 07 13:54:17 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"Excellent work adventurer!  The refugees are safe.  Hopefully now they will know better than to wander off into the woods.  As promised here is your reward.  These leggings will protect you, and trust me, you'll need them.  I have another job for you.  The scouts discovered more useful information.  Curious to know what they found?"
(1120758877)[Thu Jul 07 13:54:37 2005] You say to Braksan Steelforge,"Perhaps, what is it?  "
(1120758877)[Thu Jul 07 13:54:37 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"I knew you'd help!  It's time for those green beasties to get what's coming to them!  Our scouts located the goblins' main encampment in the northwest!  Other adventurers are setting out to give those goblins a good arse kicking!  They'll need your help.  No one serves up a whoopin' like a fighter.  Am I right?"
(1120758900)[Thu Jul 07 13:55:00 2005] You say to Braksan Steelforge,"Of course you are!"
(1120758904)[Thu Jul 07 13:55:04 2005] Your quest journal has been updated.
(1120758904)[Thu Jul 07 13:55:04 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"The others will rely on you to handle most of the fighting but I know you can handle it.  You're a brave fighter after all!  Go, meet with the others in the village and give those goblins what they deserve!  While you are at it friend, fetch me some flint head spears that the goblins carry.  I figure it's the least those buggers owe me, considering all of my gear they've stole or broke in the past few weeks.  Quickly now!  Time is a wasting!"
(1120758910)[Thu Jul 07 13:55:10 2005] You say to Braksan Steelforge,"I'll head out right away."

(1120760719)[Thu Jul 07 14:25:19 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"I wish I could chit-chat but I must work.  The goblins don't care how many times I fix these things, they just keep breaking them."
(1120760722)[Thu Jul 07 14:25:22 2005] You say to Braksan Steelforge,"I have four flint head spears for you."
(1120760722)[Thu Jul 07 14:25:22 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"Ah, yes.  The spears will do just fine.  Thank you for your hard work, friend. I knew you were a brave fighter.  Please accept this hand-made tunic for your hard work in the outpost.  Now I hate to ask you, knowing how much fighting you have already done, but I thought you might be curious about what's causing the goblin attacks."
(1121037222)[Sun Jul 10 19:13:42 2005] You say to Braksan Steelforge,"No, I want to get off this island.  "
(1120760731)[Thu Jul 07 14:25:31 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"I wish I could chit-chat but I must work.  The goblins don't care how many times I fix these things, they just keep breaking them."
(1120760732)[Thu Jul 07 14:25:32 2005] You say to Braksan Steelforge,"I am interested in helping out.  Do you have any work for me?"
(1120760732)[Thu Jul 07 14:25:32 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"An orc was spotted in the northeast part of the island.  Rumor is that it's the infamous Grimgash the Black, a fearsome orc pirate.  If this is true, it explains why the goblins are attacking our outpost.  Grimgash may have taken control of the local goblin tribe and turned them into his private army."
(1120760755)[Thu Jul 07 14:25:55 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"I wish I could chit-chat but I must work.  The goblins don't care how many times I fix these things, they just keep breaking them."
(1120760757)[Thu Jul 07 14:25:57 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says,"Nice to see you're still alive and well!"
(1120760764)[Thu Jul 07 14:26:04 2005] You say to Braksan Steelforge,"I am interested in helping out.  Do you have any work for me?"
(1120760764)[Thu Jul 07 14:26:04 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"An orc was spotted in the northeast part of the island.  Rumor is that it's the infamous Grimgash the Black, a fearsome orc pirate.  If this is true, it explains why the goblins are attacking our outpost.  Grimgash may have taken control of the local goblin tribe and turned them into his private army."
(1120760765)[Thu Jul 07 14:26:05 2005] \aPC 80761 Liifia:Liifia\/a says to the group,"sprint"
(1120760777)[Thu Jul 07 14:26:17 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"I wish I could chit-chat but I must work.  The goblins don't care how many times I fix these things, they just keep breaking them."
(1120760809)[Thu Jul 07 14:26:49 2005] \aPC 80761 Liifia:Liifia\/a says to the group,"lets kill"
(1120760820)[Thu Jul 07 14:27:00 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"I wish I could chit-chat but I must work.  The goblins don't care how many times I fix these things, they just keep breaking them."
(1120760822)[Thu Jul 07 14:27:02 2005] You say to Braksan Steelforge,"I am interested in helping out.  Do you have any work for me?"
(1120760822)[Thu Jul 07 14:27:02 2005] \aNPC 11743 Braksan Steelforge:Braksan Steelforge\/a says to you,"An orc was spotted in the northeast part of the island.  Rumor is that it's the infamous Grimgash the Black, a fearsome orc pirate.  If this is true, it explains why the goblins are attacking our outpost.  Grimgash may have taken control of the local goblin tribe and turned them into his private army."
(1120760824)[Thu Jul 07 14:27:04 2005] You say to Braksan Steelforge,"No, thanks.  I'm busy.  "]]--