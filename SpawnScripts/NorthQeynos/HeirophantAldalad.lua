--[[
    Script Name    : SpawnScripts/NorthQeynos/HeirophantAldalad.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.27 05:10:49
    Script Purpose : Hierophant Aldalad- Prima listed him as Heirophant Aldalad (typo?)
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Quest1 = 5772
local Quest2 = 5773
local Cleric = 5774
local Druid = 5775
local Shaman = 5776

function spawn(NPC)
    ProvidesQuest(NPC, Quest1)
    ProvidesQuest(NPC, Quest2)
    ProvidesQuest(NPC, Cleric)
    ProvidesQuest(NPC, Druid)
    ProvidesQuest(NPC, Shaman)
end

function hailed(NPC, Spawn)
    if GetLevel(Spawn) ==9 and HasCompletedQuest(Spawn,Quest2) and GetClass(Spawn)==11 and not HasQuest(Spawn, Cleric) and not HasQuest(Spawn, Druid) and not HasQuest(Spawn, Shaman) then
    FinalClassTest(NPC,Spawn)
    else
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad000.mp3", 1851949262, 3385195061)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
    if GetClass(Spawn)== 11 and GetLevel(Spawn)>=7 and not HasQuest(Spawn,Quest1) and not HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("Your faith seems to buoy you, Hierophant.  I wish to be as filled as you!","Dialog1")	
    end
    if GetClass(Spawn)== 11 and GetLevel(Spawn)==7 and HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("I am still reflecting on what you've taught me. I'll return later once I've made more progress.")	
    end
    if GetClass(Spawn)== 11 and GetLevel(Spawn)==8 and HasCompletedQuest(Spawn,Quest2) then
    Dialog.AddOption("I am still reflecting on what you've taught me. I'll return later once I've made more progress.")	
    end
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)==3 then 
    Dialog.AddOption("I have cured them both. One was stubborn; the other was a bit stupid ... and disgusting.","Dialog2")	
    end
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)==5 then 
    Dialog.AddOption("I've dispatched the Oakmyst Spirits.  They will bother people no longer.","Dialog3")	
    end 
    if GetClass(Spawn)== 11 and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Quest2) and not HasCompletedQuest(Spawn,Quest2) and HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("I believe I am ready to learn more.  Tell me of your own beliefs, Hierophant.","Dialog4")	
    end  
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)==2 then 
    Dialog.AddOption("I've whittled the Carnivorous Slug population down a bit.","Dialog5")	
    end  
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)==6 then 
    Dialog.AddOption("I healed those three soldiers, but ... I regret I couldn't save the rest.","Dialog6")	
    end  
    if HasQuest(Spawn,Cleric) and GetQuestStep(Spawn,Cleric)==2 then
    Dialog.AddOption("Sadly, I was not successful, Aldalad.","ClericFail")
    end
    if HasCompletedQuest(Spawn,Cleric) or HasCompletedQuest(Spawn,Druid) or HasCompletedQuest(Spawn,Shaman) then
    Dialog.AddOption("May your blessings continue to provide, Aldalad. It is good to see you again.")	
    end
    Dialog.AddOption("Thank you for your blessing.  I wish you a good day as well, Hierophant")
	Dialog.Start()
end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("It warms my heart to hear you say that.  Norrath has seen so much tragedy, but here in Qeynos, our spirits have never been shattered. I believe it is our faith that preserves us.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad001.mp3", 498751224, 1226875703)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    Dialog.AddOption("I wish you would teach me more about such faith.","Dialog1a")	
    Dialog.AddOption("Wise insight. Thank you, and good day!")	
	Dialog.Start()
end

function Dialog1a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("The lessons of faith are often hidden at first, and the path obscured.  A priest such as myself may give direction, but you are the one who must make the journey.  And even the longest journey begins with a single first step.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad002.mp3", 3849793338, 2792721451)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("This is true, but what journey would you have me make?","Dialog1b")	
    Dialog.AddOption("Well, if I had the time I would take that first step.")	
	Dialog.Start()
end

function Dialog1b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("A journey to bring comfort and reassurance to these troubled times.There is much despair in this world, for many believe the gods have turned their backs to us.  Certain clerics tell us that we are merely being tested in this age, or that we are paying for transgressions in our collective past.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad003.mp3", 2581238696, 821414596)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("There is some disagreement about spiritual matters.  But what of clerical magic?  From where do we draw our healing abilities, if not from the gods?","Dialog1c")	
	Dialog.Start()
end

function Dialog1c(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Aye, healing abilities come from the gods.  You may believe that, my child.  And when you have faith, you can heal even the most grievous of injuries and illnesses.  It is my hope that you will seek out those in need of healing, and use your gifts to restore them.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad004.mp3", 576044661, 2436380839)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Is that the journey you would have me make?","OfferQuest1")	
	Dialog.Start()
end

function OfferQuest1(NPC,Spawn)
    OfferQuest(NPC,Spawn,Quest1)
    FaceTarget(NPC,Spawn)
end

function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Do not be so quick to criticize.  We must be compassionate and caring toward others.  This is how we strengthen faith in Qeynos – by bearing witness and healing. ")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad006.mp3", 2653080394, 679982418)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("A heavy mace upside the head is also pretty effective.","Dialog2a")	
	Dialog.Start()
end

function Dialog2a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Goodness, child!  Where did you learn such talk?  I see you will need much more spiritual instruction.  You are not yet ready to touch the Gray Fields.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad007.mp3", 3123928085, 2751213248)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
    Dialog.AddOption("The Gray Fields?  What's that?","Dialog2b")	
	Dialog.Start()
end

function Dialog2b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("You have many gifts, but they are undeveloped.  Are you familiar with our shamanic traditions?  A shaman communes with spirits to touch the Gray Fields -- the land between mortality and eternity.  Spirits act as guides.  But a shaman must beware, for not all spirits are good.  There are dark entities who prey upon the living.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad008.mp3", 859073595, 4091023392)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("This sounds interesting!  How may I learn more?","Dialog2c")	
	Dialog.Start()
end

function Dialog2c(NPC,Spawn)
    QuestStepIsComplete(Spawn,Quest1,3)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Travel to the Oakmyst Forest, and you will see some of these errant spirits.  But do not try to communicate with them!  Dispatch five of them, and send them back to the dark realms from whence they came.  Then return to me.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad009.mp3", 2641653074, 4170087056)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("That sounds clear enough.  I'll enjoy ridding Norrath of a few evil spirits.")	
	Dialog.Start()
end

function Dialog3(NPC,Spawn)
    QuestStepIsComplete(Spawn,Quest1,5)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("So you have!  For a time, at least.  But the druids understand that, no matter what is accomplished by mortal hands, Nature will have her final say.  You must learn to respect her, and she will reward you with increased powers.  Now, go apply what you have learned to your own life.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad010.mp3", 1188368287, 4134144195)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    Dialog.AddOption("I shall.")	
	Dialog.Start()
end

--QUEST 2
function Dialog4(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("My beliefs are orthodox, but my spirit is inspired by many things: the forces of nature, the miracle of life, the mystery of death.  Through all my long existence, not a day has passed when I have not been amazed by the things of nature.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad012.mp3", 3270003865, 3440354773)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("Why, you almost sound like a Druid!","Dialog4a")	
	Dialog.Start()
end

function Dialog4a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Ah, the druids.  Their spiritual path is often misunderstood.  They once worshipped the forces of nature as embodied by Tunare and Karana.  And some say there are no real druids today, but the druids themselves disagree.  They will tell you that, if you watch the plants and trees around you, Tunare's face will appear.  And in the skies you will see Karana's breath.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad013.mp3", 324086451, 1587586978)
    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
    Dialog.AddOption("But if Nature is sacred, then how do you explain the Shattering?","Dialog4b")	
	Dialog.Start()
end

function Dialog4b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Because Nature does not exist merely to serve us, and because Nature always seeks a balance.  It is neither good nor evil.  It just is.  A druid could explain it to you.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad014.mp3", 2859399241, 1801474661)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("So what exactly is the Druid's role in Nature's grand scheme?","OfferQuest2")	
	Dialog.Start()
end

function OfferQuest2(NPC,Spawn)
    OfferQuest(NPC,Spawn,Quest2)
    FaceTarget(NPC,Spawn)
end

function Dialog5(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("For now you have, but only time will tell.  The druid understands that no matter what is done by mortal hands, nature has the final say.  Learn to respect the world and the world will offer back that same respect in the way of granted powers.  Now it is time for you to take what you have learned and apply it to your own life.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad016.mp3", 3124149580, 1197890726)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("What do you mean by that?","Dialog5a")	
	Dialog.Start()
end

function Dialog5a(NPC,Spawn)
    QuestStepIsComplete(Spawn,Quest2,2)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I want you to go out to into the world and let your heart guide you.  Some of those who help defend Qeynos from danger have found themselves in some of their own.  Use the faith within you to help them prevail today.  I will write in your journal where you can find these brave men and women.  Come back when they are safe.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad017.mp3", 2729819197, 1238324646)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("Believe in your heart that it will be done.")	
	Dialog.Start()
end


function Dialog6(NPC,Spawn)
    QuestStepIsComplete(Spawn,Quest2,6)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("It is enough, my child.  You were brave and true, and risked your own life to save others.  I am proud of you.  Your faith has made you strong.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad018.mp3", 1015192558, 567006981)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    if GetLevel(Spawn)>=9 then
    Dialog.AddOption("I want to learn even more!  What is my next lesson?","FinalClassTest")	
    else 
    Dialog.AddOption("You've given me much to think about. Once I've reflected on this experience I will return to you.")	
    end
	Dialog.Start()
end

--CLASS QUESTS 
 function FinalClassTest(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("That is up to you.  I have taught you all I can for now.  You must continue on the path without me, at least for a while.  Look in your heart, for it holds many answers.  Where do you feel your faith leads you in this world?")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad019.mp3", 3131761726, 4109382879)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("My faith is more important than anything to me.  I ... I will be a cleric!","Cleric1")	
    Dialog.AddOption("I feel the forces of nature surrounding me. I believe I am a druid.","Druid1")	
    Dialog.AddOption("I hear the call of the spirits. I believe I am a shaman.","Shaman1")	
	Dialog.Start()
end

--CLERIC
function Cleric1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Faith in the divine is what empowers a cleric.  You shall heal wounds both corporeal and spiritual.  And you shall be bound to serve, even in the face of mortal danger.  Will you accept such a yoke?")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad020.mp3", 4011008360, 2488359907) 
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("With the help of the gods, I accept.  There is nothing I cannot do as long as they are with me.  I shall become a cleric.","Cleric2" )	
    Dialog.AddOption("What were my options again?","FinalClassTest" )	
	Dialog.Start()    
end

function Cleric2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("To fully realize your own faith, you will need to undergo a trial of your own beliefs.  I cannot assist you with this, beyond pointing out what you must do.  Will you permit such an ordeal?")
	--Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad017.mp3", 2729819197, 1238324646) WE DON"T HAVE THE VO FOR THIS
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("I stand resolute in the face of any such trial.","OfferCleric" )	
	Dialog.Start()    
end

function OfferCleric(NPC,Spawn)
    OfferQuest(NPC,Spawn,Cleric)
    FaceTarget(NPC,Spawn)
end

function ClericAccept(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Then I will facilitate a prayer trance for you.  You will experience a struggle unlike any you've known before... but upon exiting the trance, should you prove successful, you will emerge with the emotional strength to survive and prosper in the re-forged Norrath.  Are you ready?")
	--Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad017.mp3", 2729819197, 1238324646) WE DON"T HAVE THE VO FOR THIS
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I am.","OfferCleric [WORK IN PROGRESS]","ClericTrial" )	
    Dialog.AddOption("I will be shortly. I will return.")	
	Dialog.Start()    
end

function ClericFail(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Though you were not successful in your previous attempt, one of the most valuable lessons an aspiring cleric can learn is perseverance.  Are you ready to attempt the trial again?")
	--Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad017.mp3", 2729819197, 1238324646) WE DON"T HAVE THE VO FOR THIS
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("Yes, Aldalad, I am.","ClericTrial" )	
    Dialog.AddOption("I will be shortly. I will return.")	
	Dialog.Start()    
end

function ClericTrial(NPC,Spawn)
end


--DRUID
function Druid1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("As a druid, you will become Nature's servant and companion, not her master.  Nature is everywhere.  If you respect her, she will become the greatest ally you have ever known. With your wisdom and her power, nothing shall defeat you.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad021.mp3", 2608345231, 3745599287)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("It is clear to me.  I am called to be a druid.","Druid2" )	
    Dialog.AddOption("What were my options again?","FinalClassTest" )	
	Dialog.Start()    
end


function Druid2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("The path of a druid often requires more than just nurturing the land and its inhabitants.  Often blights will have to be physically driven out, and this requires not only an awareness of one's surroundings, but also the strength to perform these feats.  To this end, I have devised a test to determine your readiness to become a druid.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad028.mp3", 774916388, 145472560)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("What sort of challenges must I face?","Druid3" )	
	Dialog.Start()    
end



function Druid3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I cannot tell you exactly what you will face - only that you must use the skills and spells you have learned up to this point in order to win your way past it and become a druid.  Remember that you will be alone with this.  Are you ready to begin?")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad029.mp3", 3326972063, 1689451744)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("I am.","OfferDruid" )	
    Dialog.AddOption("I will be shortly. I will return.")	
	Dialog.Start()    
end

function OfferDruid(NPC,Spawn)
    OfferQuest(NPC,Spawn,Druid)
    FaceTarget(NPC,Spawn)
end

function DruidAccept(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("I cannot tell you exactly what you will face - only that you must use the skills and spells you have learned up to this point in order to win your way past it and become a druid.  Remember that you will be alone with this.  Are you ready to begin?")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad030.mp3", 110213528, 850594761)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Thank you, Aldalad." )	
	Dialog.Start()    
end


--SHAMAN
function Shaman1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("A shaman knows that death is but a journey to another adventure.  If you choose this path, then those who have gone before you will guide your way through this mortal coil.  By communing with your ancestors, the wisdom of the past is always within reach.  The shaman speaks for the dead, and acts as a vessel to help others.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad022.mp3", 921764949, 3161713723)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("The spirits are with me and will always be my guide.  I am a shaman.","Shaman2" )	
    Dialog.AddOption("What were my options again?","FinalClassTest" )	
	Dialog.Start()    
end

function Shaman2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("This may be the case, but not all spirits are here to help you along your life's path. Some poor souls remain attached to this existence - unable to transend to the Gray Fields and beyond. Some can be found near, even in the city of Qeynos. Are you up for the task of setting their souls to rest?")
--	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad022.mp3", 921764949, 3161713723) UNKNOWN VO 
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I will gladly help put these spirits to rest.","OfferShaman" )	
	Dialog.Start()    
end

function OfferShaman(NPC,Spawn)
    OfferQuest(NPC,Spawn,Shaman)
    FaceTarget(NPC,Spawn)
end

function ShamanAccept(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Then you must travel to the Southern part of the city where a home has reportedly become a site of restless spirits. Use the skills you have gained to unshackle them from this world and you will have proven yourself as a shaman.  There will be no need to return to me, but be wary, spirits have powers even they can fathom.")
--	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad030.mp3", 110213528, 850594761)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Thank you, Aldalad. I will pass this trial." )	
	Dialog.Start()    
end

--[[

(1117902808)[Sat Jun 04 12:33:28 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?"
(1117902810)[Sat Jun 04 12:33:30 2005] You say to Hierophant Aldalad,"I healed those three soldiers, but ... I regret I couldn't save the rest."
(1117902810)[Sat Jun 04 12:33:30 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"It is enough, my child.  You were brave and true, and risked your own life to save others.  I am proud of you.  Your faith has made you strong.  "
(1117902811)[Sat Jun 04 12:33:31 2005] You say to Hierophant Aldalad,"I want to learn even more!  What is my next lesson?"
(1117902811)[Sat Jun 04 12:33:31 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"That is up to you.  I have taught you all I can for now.  You must continue on the path without me, at least for a while.  Look in your heart, for it holds many answers.  Where do you feel your faith leads you in this world?"
(1117902815)[Sat Jun 04 12:33:35 2005] You say to Hierophant Aldalad,"My faith is more important than anything to me.  I ... I will be a cleric! "
(1117902815)[Sat Jun 04 12:33:35 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Faith in the divine is what empowers a cleric.  You shall heal wounds both corporeal and spiritual.  And you shall be bound to serve, even in the face of mortal danger.  Will you accept such a yoke?"
(1117902817)[Sat Jun 04 12:33:37 2005] You say to Hierophant Aldalad,"With the help of the gods, I accept.  There is nothing I cannot do as long as they are with me.  I shall become a cleric. "
(1117902817)[Sat Jun 04 12:33:37 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"To fully realize your own faith, you will need to undergo a trial of your own beliefs.  I cannot assist you with this, beyond pointing out what you must do.  Will you permit such an ordeal? "
(1117902818)[Sat Jun 04 12:33:38 2005] You say to Hierophant Aldalad,"I stand resolute in the face of any such trial."
(1117902818)[Sat Jun 04 12:33:38 2005] Your quest journal has been updated.
(1117902818)[Sat Jun 04 12:33:38 2005] You gain experience!
(1117902818)[Sat Jun 04 12:33:38 2005] Your quest journal has been updated.
(1117902818)[Sat Jun 04 12:33:38 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Then I will facilitate a prayer trance for you.  You will experience a struggle unlike any you've known before... but upon exiting the trance, should you prove successful, you will emerge with the emotional strength to survive and prosper in the re-forged Norrath.  Are you ready?"
(1117902819)[Sat Jun 04 12:33:39 2005] You say to Hierophant Aldalad,"I am."
(1117902819)[Sat Jun 04 12:33:39 2005] Your courage fades.
(1117902822)[Sat Jun 04 12:33:42 2005] You have entered The Disconcerting Meditation.
(1117902829)[Sat Jun 04 12:33:49 2005] You feel that the meditation will only last a short time. You must hurry!
(1117902874)[Sat Jun 04 12:34:34 2005] You begin to feel the meditation wane...
(1117902905)[Sat Jun 04 12:35:05 2005] Only a short time remains before you return to your body...
(1117902915)[Sat Jun 04 12:35:15 2005] Your vision blurs, and the world begins to shift...
(1117902920)[Sat Jun 04 12:35:20 2005] The mediation ends.
(1117902920)[Sat Jun 04 12:35:20 2005] You strike A disturbing shadow with a smiting force!
(1117902920)[Sat Jun 04 12:35:20 2005] YOUR Smite hits a disturbing shadow for 16 points of divine damage.
(1117902920)[Sat Jun 04 12:35:20 2005] A disturbing shadow is struck with a smiting force!
(1117902920)[Sat Jun 04 12:35:20 2005] Your courage fades.
(1117902922)[Sat Jun 04 12:35:22 2005] You have entered North Qeynos.
(1117902963)[Sat Jun 04 12:36:03 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?"
(1117902969)[Sat Jun 04 12:36:09 2005] You say to Hierophant Aldalad,"Sadly, I was not successful, Aldalad."
(1117902969)[Sat Jun 04 12:36:09 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Though you were not successful in your previous attempt, one of the most valuable lessons an aspiring cleric can learn is perseverance.  Are you ready to attempt the trial again?"
(1117902977)[Sat Jun 04 12:36:17 2005] You say to Hierophant Aldalad,"Yes, Aldalad, I am."
(1117902978)[Sat Jun 04 12:36:18 2005] Your courage fades.
(1117902980)[Sat Jun 04 12:36:20 2005] You have entered The Disconcerting Meditation.
(1117902987)[Sat Jun 04 12:36:27 2005] You feel that the meditation will only last a short time. You must hurry!
(1117902996)[Sat Jun 04 12:36:36 2005] You strike A disturbing shadow with a smiting force!
(1117902996)[Sat Jun 04 12:36:36 2005] YOUR Smite hits a disturbing shadow for 16 points of divine damage.
(1117902996)[Sat Jun 04 12:36:36 2005] A disturbing shadow is struck with a smiting force!
(1117902997)[Sat Jun 04 12:36:37 2005] a disturbing shadow hits YOU for 5 points of crushing damage.
(1117902999)[Sat Jun 04 12:36:39 2005] a disturbing shadow hits YOU for 3 points of crushing damage.
(1117903001)[Sat Jun 04 12:36:41 2005] a disturbing shadow tries to crush YOU, but misses.
(1117903002)[Sat Jun 04 12:36:42 2005] You start fighting.
(1117903003)[Sat Jun 04 12:36:43 2005] a disturbing shadow hits YOU for 3 points of crushing damage.
(1117903003)[Sat Jun 04 12:36:43 2005] You strike A disturbing shadow with a smiting force!
(1117903003)[Sat Jun 04 12:36:43 2005] YOUR Smite hits a disturbing shadow for 17 points of divine damage.
(1117903003)[Sat Jun 04 12:36:43 2005] A disturbing shadow is struck with a smiting force!
(1117903003)[Sat Jun 04 12:36:43 2005] YOU hit a disturbing shadow for 5 points of crushing damage.
(1117903003)[Sat Jun 04 12:36:43 2005] You trigger a starter chain.
(1117903005)[Sat Jun 04 12:36:45 2005] YOU hit a disturbing shadow for 3 points of crushing damage.
(1117903005)[Sat Jun 04 12:36:45 2005] a disturbing shadow's Wild Swing hits YOU for 5 points of crushing damage.
(1117903008)[Sat Jun 04 12:36:48 2005] You strike A disturbing shadow with a smiting force!
(1117903008)[Sat Jun 04 12:36:48 2005] YOUR Smite hits a disturbing shadow for 18 points of divine damage.
(1117903008)[Sat Jun 04 12:36:48 2005] A disturbing shadow is struck with a smiting force!
(1117903008)[Sat Jun 04 12:36:48 2005] You triggered Divine Judgment.
(1117903008)[Sat Jun 04 12:36:48 2005] You get better at Defense (45/46).
(1117903008)[Sat Jun 04 12:36:48 2005] a disturbing shadow tries to crush YOU, but misses.
(1117903008)[Sat Jun 04 12:36:48 2005] YOU hit a disturbing shadow for 5 points of crushing damage.
(1117903010)[Sat Jun 04 12:36:50 2005] a disturbing shadow hits YOU for 5 points of crushing damage.
(1117903010)[Sat Jun 04 12:36:50 2005] YOU hit a disturbing shadow for 3 points of crushing damage.
(1117903012)[Sat Jun 04 12:36:52 2005] a disturbing shadow's Wild Swing hits YOU for 9 points of crushing damage.
(1117903013)[Sat Jun 04 12:36:53 2005] You strike A disturbing shadow with a smiting force!
(1117903013)[Sat Jun 04 12:36:53 2005] YOUR Smite hits a disturbing shadow for 18 points of divine damage.
(1117903013)[Sat Jun 04 12:36:53 2005] A disturbing shadow is struck with a smiting force!
(1117903013)[Sat Jun 04 12:36:53 2005] You complete Divine Judgment.
(1117903013)[Sat Jun 04 12:36:53 2005] YOUR Divine Judgment hits a disturbing shadow for 45 points of divine damage.
(1117903013)[Sat Jun 04 12:36:53 2005] You have killed a disturbing shadow.
(1117903013)[Sat Jun 04 12:36:53 2005] You stop fighting.
(1117903013)[Sat Jun 04 12:36:53 2005] You gain experience!
(1117903013)[Sat Jun 04 12:36:53 2005] A disturbing shadow is struck with great force.
(1117903023)[Sat Jun 04 12:37:03 2005] Calming yourself after the combat with the shade proves to be difficult.  Looking back on the recent events, you attempt to focus your mind and will yourself into a state of relaxation.
(1117903026)[Sat Jun 04 12:37:06 2005] The creature you faced seems to bear some significance, for you know you have never faced one. You can think of nothing that you have done to draw the ire of something like this, but it seems to be your destiny to cross paths with them... at least, if this meditation serves its purpose.
(1117903029)[Sat Jun 04 12:37:09 2005] Your quest journal has been updated.
(1117903029)[Sat Jun 04 12:37:09 2005] You gain experience!
(1117903029)[Sat Jun 04 12:37:09 2005] You gain experience!
(1117903029)[Sat Jun 04 12:37:09 2005] Your quest journal has been updated.
(1117903029)[Sat Jun 04 12:37:09 2005] You turn your attention back to a more worldly task and begin trying to wake yourself from the state.  Soon, the room fades out, and your body begins to stir.
(1117903031)[Sat Jun 04 12:37:11 2005] Your courage fades.
(1117903034)[Sat Jun 04 12:37:14 2005] You have entered North Qeynos.
(1117903064)[Sat Jun 04 12:37:44 2005] \aNPC 10879 Lilli Anya:Lilli Anya\/a says,"The Celestial Watch preserves the rituals of servitude to the gods so that all might experience through worship the return of the ancient deities."
(1117903081)[Sat Jun 04 12:38:01 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?"
(1117903082)[Sat Jun 04 12:38:02 2005] You say to Hierophant Aldalad,"Thank you for your blessing.  I wish you a good day as well, Hierophant"
]]--