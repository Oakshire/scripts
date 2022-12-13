--[[
    Script Name    : SpawnScripts/SouthQeynos/MasteratArmsDagorel.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.25 12:10:24
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Quest1 = 5787
local Quest2 = 5788
local Crusader = 5789
local Brawler = 5790
local Warrior = 5791

function spawn(NPC)
    ProvidesQuest(NPC, Quest1)
    ProvidesQuest(NPC, Quest2)
    ProvidesQuest(NPC, Crusader)
    ProvidesQuest(NPC, Brawler)
    ProvidesQuest(NPC, Warrior)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, citizen. I'm on duty and can't speak.  If you need the assistance of the guard,  let us know.")
	Dialog.AddVoiceover("voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_no_181290a1.mp3", 904288338, 3551828428)
    PlayFlavor(NPC,"","","salute",0,0,Spawn)
    if GetClass(Spawn)== 1 and GetLevel(Spawn)>=7 and not HasQuest(Spawn,Quest1) and not HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("Greetings! I heard you were skilled in combat and had to come see you for myself.","Dialog1")	
    end
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)==2 then 
    Dialog.AddOption("I was victorious against the spiders!","Dialog2")	
    end
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)==5 then 
    Dialog.AddOption("I've been given tips on brawling... and a little more, too.","Dialog3")	
    end

    if GetClass(Spawn)== 1 and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Quest2) and not HasCompletedQuest(Spawn,Quest2) and HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("I feel rested and am ready for more training!","Dialog4")	
    elseif GetClass(Spawn)== 1 and GetLevel(Spawn)<8 and not HasQuest(Spawn,Quest2) and not HasCompletedQuest(Spawn,Quest2) and HasCompletedQuest(Spawn,Quest1) then
    Dialog.AddOption("I'll return once I've had a bit more time to rest on what I've learned.")	
    end  
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)==4 then 
    Dialog.AddOption("I've learned a bit about what drives the guards to do their duty.","Dialog5")	
    end
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)==6 then 
    Dialog.AddOption("I've killed the gnoll pup","Dialog6")	
    end   
 
    if HasCompletedQuest(Spawn,Quest2) and not HasQuest(Spawn,Crusader) and not HasQuest(Spawn,Brawler) and not HasQuest(Spawn,Warrior) and GetClass(Spawn)==1 then
    Dialog.AddOption("I've proven myself. I'm ready for any other test you can give.","Decide")	
    end  
    
    Dialog.AddOption("Thank you!")
	Dialog.Start()
end


function respawn(NPC)
	spawn(NPC)
end


function Dialog1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("So, you came by to wish 'ole Dagorel a good bidding, did ya?  Well, good day to you, friend! Never let anyone say that Dagorel doesn't know his manners.  Lemme look at you ... Hmm ... I bet with a little toughenin' up, you could go toe-to-toe with the best of 'em!")
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
    Dialog.AddOption("Have any tips on fighting styles? I'm ready for anything!","Dialog1a")	
    Dialog.AddOption("I suppose I meant something else. Good luck on those bounties.")	
	Dialog.Start()
end

function Dialog1a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well now, that's more like it! I have been resposible for training new recruits of the Qeynos Guard for an age- you look like the right material to take a few hits to the noggin and still get back up. Perhaps some pointers on your fighting style would be in Qeynos's favor...")
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    Dialog.AddOption("What sort of fighting styles do you mean?","Dialog1b")	
	Dialog.Start()
end

function Dialog1b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Many! Well, at least three in the city. First, I must know... what sort of combat have you seen?")
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("I tackled a few goblins on the Isle of Refuge before coming here.","Dialog1c1")	
    if HasCompletedQuest(Spawn, 5751)then --ISLE OF REFUGE ORC LEADER QUEST
    Dialog.AddOption("I toppled the invading leadership on the Isle of Refuge by taking out the orc leader, Grimgash.","Dialog1c1a")
    end
    Dialog.AddOption("I took out some traitors to Qeynos. Proving my loyalty to Qeynos.","Dialog1c2")	
    Dialog.AddOption("This and that- just some good ol' rough and tumble.","Dialog1c3")	
	Dialog.Start()
end

function Dialog1c1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Ahh, yes. I the Isle is a true training ground if ya took advantage of it. The fact you made it here is a testament to their trainin'!")
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    Dialog.AddOption("Yea, being a fighter I handle myself pretty well.","Dialog1d")	
	Dialog.Start()
end

function Dialog1c1a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Blimey! That was you?! Well done, I must say! Well done! You do have the chops to be a fighter. You were right to come see me.")
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
    Dialog.AddOption("Yea, being a fighter I handle myself pretty well.","Dialog1d")	
	Dialog.Start()
end

function Dialog1c2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Those traitors got what was come'n to them, no doubt. I hope you chose wisely in their treatment. Justice is the cornerstone that seperates us from the likes of Freeport!")
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("Yea, being a fighter I handled myself pretty well.","Dialog1d")	
	Dialog.Start()
end

function Dialog1c3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well, you have a few scrapes and bruises... So, I can see you've had your fair share of action. Hopefully you've managed to stay concious for most of it! Haha!")
    PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
    Dialog.AddOption("Yea, being a fighter I handle myself pretty well.","Dialog1d")	
	Dialog.Start()
end

function Dialog1c1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Ahh, yes. I the Isle is a true training ground if ya took advantage of it. The fact you made it here is a testament to their trainin'!")
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
    Dialog.AddOption("Yea, being a fighter I handle myself pretty well.","Dialog1d")	
	Dialog.Start()
end

function Dialog1d(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well, then, the first thing you gotta know is that there's not just one way to fight.  S'matter of fact, you gotta discipline yourself in a style of fightin'.  I'll give you a taste of the fighting styles I've come across in me years of battle. Let's start with the fightin' style of a warrior...")
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("Tell me what I need to do! I'm ready to give something a beating!","Quest1Offer")	
    Dialog.AddOption("Actually, I should begin this with you another time.")	
	Dialog.Start()
end

function Quest1Offer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Quest1)
end 


function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("So ya are! A good warrior knows how best to take out their foes with a good suit of armor and their trusty weapons at their side. Hardest part is trusting your gut and knowing when you've bit off more than you can chew... or at least your armor can withstand anyway.")
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("So, the heavier the armor the better? Alright!","Dialog2a")	
	Dialog.Start()
end

function Dialog2a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Wait a momment... There are more ways of fighting than covering yourself in a full suit of plate.")
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    Dialog.AddOption("Oh? You just said...","Dialog2b")	
	Dialog.Start()
end

function Dialog2b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well, forget everythin' I said!  Yer' about to see how a brawler fights. Instead of using armor, brawlers use their bodies as weapons. They avoid gettin' hurt in combat by using a special trick.")
    PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
    Dialog.AddOption("How do they avoid attacks?","Dialog2c")	
	Dialog.Start()
end

function Dialog2c(NPC,Spawn)
    SetStepComplete(Spawn,Quest1,2)  
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("They don't let themselves get hit!  Simple as that!  You have to learn that trick if you want to be a brawler.  I know a couple of people who can give you some pointers.  Go speak with Luvile Binlee in Starcrest and Hargan Icethaw in Graystone.  Tell 'em I sent you, and ask for some brawlin' tips.")
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    Dialog.AddOption("Okay. I'll go speak with them about brawling.")	
	Dialog.Start()
end

function Dialog3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Oh, is that so? Well let's put what ya learned to the test, shall we?")
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("Alright.","Dialog3a")	
	
	Dialog.Start()
end


function Dialog3a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("[Dagorel prepares up to punch you]")
    PlayFlavor(NPC, "", "", "pugilist_idle", 0, 0, Spawn)
    Dialog.AddOption("[Attempt to dodge]","Dodge")	
    Dialog.AddOption("[Take the punch to your gut]","Gut")	
	Dialog.Start()
end

function Dodge(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("[Dagorel's punch grazes you]")
    PlayFlavor(NPC, "", "", "pugilist_wild_swing", 0, 0, Spawn)
    AddTimer(NPC,1300,"Dodge2",1,Spawn)
    Dialog.AddOption("Ah, you still got me.","Dialog3c")	
	Dialog.Start()
end

function Dodge2(NPC,Spawn)
    PlayFlavor(Spawn, "", "", "1h_sword_dodge_backhand", 0, 0, NPC)
end

function Gut(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("...")
    PlayFlavor(NPC, "", "", "pugilist_attack02", 0, 0, Spawn)
    AddTimer(NPC,1300,"Gut2",1,Spawn)
    Dialog.AddOption("Oof...","Dialog3b")	
	Dialog.Start()
end

function Gut2(NPC,Spawn)
    PlayFlavor(Spawn, "", "", "gutcramp", 0, 0, NPC)
local invul = IsInvulnerable(Spawn)
if invul == true then
return 0
end

local hp = GetHP(Spawn)
local damage = GetMaxHP(Spawn)*0.1
local damageToTake = damage * 1
-- if we don't have enough HP make them die to pain and suffering not self
if hp <= damageToTake then
else
DamageSpawn(Spawn, Spawn, 192, 3, damageToTake, damageToTake, "Dagorel's punch!", 0, 0, 1, 1)
end

end

function Dialog3c(NPC,Spawn)
    SetStepComplete(Spawn,Quest1,5)  
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Not bad! You did learn a few things from Luvile, but there is always room for improvement. Perhaps a brawler is a path for you... Even so, you should rest up before we continue looking at other fighting styles. Come back to me after you've taken some time to catch your breath.")
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I like the sounds of that. I'll rest for a while.")	
	Dialog.Start()
end

function Dialog3b(NPC,Spawn)
    SetStepComplete(Spawn,Quest1,5)  
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Oi, if you're going to take a blow like that you should have thicker armor! You must have taken Hargan's lesson on brawling to heart, Haha!... Even so, you should rest up before we continue looking at other fighting styles. Come back to me after you've taken some time to catch your breath.")
    PlayFlavor(NPC, "", "", "wince", 0, 0, Spawn)
    Dialog.AddOption("I like the sounds of that. I'll rest for a while.")	
	Dialog.Start()
end

-- QUEST 2 --


function Dialog4(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Aye, it's high time we continue with your studies.  Time is tickin' away, and we're not gettin' any younger.  I showed you how a warrior and a brawler fight, and now I'll show you the way of a crusader.")
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("What makes someone a crusader?","Dialog4a")	
	Dialog.Start()
end

function Dialog4a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Crusaders fight for a cause.  I've battled beside a few in my years, and they're an impressive bunch. Everything they do has a purpose; you can see it on the battlefield and from the look in their eyes.")
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("As in a belief? What would you have me do?","Quest2Start")	
    Dialog.AddOption("Interesting, but let's continue this conversation later.")	
	Dialog.Start()
end


function Quest2Start(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Quest2)
end 

function Dialog5(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("That's good to hear! Our soldiers don't hear enough kind words as it is, but when you can get them to think back on why they decided to protect their city... They certainly start to light up!")
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    Dialog.AddOption("Most shared a sense of duty and honor in their work.","Dialog5a")	
    Dialog.AddOption("Some mentioned it as just a job, but they also felt pride in protecting Qeynos.","Dialog5a")	
	Dialog.Start()
end

function Dialog5a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Aye, that sounds about right. Not everything about duty and honor is glamorous, but when you are responsible for that sort of \"passion\" to succeed... Your convicition will provide that power to accomplish the unthinkable.")
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("I see. What must I do to prove myself a protector?","Dialog5b")	
	Dialog.Start()
end

function Dialog5b(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Ahhh... There is the question! Qeynos is under constant threat- even more so ever since the Sundering when the continents were pulled apart! Are you ready to perform a duty for Qeynos and prove yourself a frontline protector?")
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    Dialog.AddOption("I am ready. Give me a mission!","Dialog5c")	
	Dialog.Start()
end

function Dialog5c(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Qeynos thrives in this shattered world only through the efforts of its fine citizens.  Those nasty gnolls want us all dead, and it's our duty to protect our city from these fiends.  You must use your fighting skills to protect Qeynos.  Your first mission is to head out to Antonica and take care of the Darkpaws. Start with a pup and come back to me.")
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I'll return when I'm victorious.")
    SetStepComplete(Spawn,Quest2,4)
	Dialog.Start()
end

function Dialog6(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Aye, aye.  The watchmen informed me. They say you held your own. That's what I want to hear! You had to prove your fightin' skills--I don't want anyone accusing ol' Dagorel of sending ill-equipped kids off to their deaths. You proved you got what it takes, kid. Good work.")
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("I'm glad to have had the chance to prove myself.","Decide")
	Dialog.Start()
end

--CLASS SELECTION 

function Decide(NPC,Spawn)
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2) ==6 then
    SetStepComplete(Spawn,Quest2,6)
    end
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Well, then, I showed you three different fighting styles--you know my preferred way of fighting--trusting a good axe and a breastplate. You experienced the raw fighting power of a brawler, and finally, you witnessed the dedication of a crusader. Now it's time to test your knowledge...")
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    Dialog.AddOption("I feel naked without a weapon in my hand.  I believe I'm a warrior.","Warrior1")	
    Dialog.AddOption("Through training, I can make my own body into a weapon.  I'm a brawler.","Brawler1")	
    Dialog.AddOption("My burning conviction is the only weapon I need.  I know I am a crusader.","Crusader1")	
	Dialog.Start()
end

--WARRIOR
function Warrior1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("A warrior, are ya? You're sayin' that the best way to fix a problem is with a bit of hammered steel?  Aye, I agree with that!  When you got a slaverin' gnoll runnin' at you, hard bent for leather, well, you'd be a ninny not to draw steel.  So, the life of the warrior is your path in life, is it?")
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
    Dialog.AddOption("Yes.  I prefer to take care of a problem, rather than let it take care of me.  I am a warrior!","WarriorOffer")
    Dialog.AddOption("On second thought, what were my options again?","Decide")
	Dialog.Start()
end

function WarriorOffer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Warrior)
end

--BRAWLER

function Brawler1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Brawlers use their brains, they do. They don't need armor if their enemies can't hit 'em.  They also know they can't be disarmed if they have built-in weapons. Well, they can, but that' messy business that we don't need to discuss. So, are ya willin' to push yourself to the limit as a brawler?")
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("Yes.  I will train everyday to master the art of pugilism.  I am a brawler.","BrawlerOffer")
    Dialog.AddOption("On second thought, what were my options again?","Decide")
	Dialog.Start()
end

function BrawlerOffer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Brawler)
end

--CRUSADER

function Crusader1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("It's not as easy as that, youngin'.  You don't just declare yourself a crusader, or did you learn nothing from my previous lessons?  No, crusader is a title earned by those with enough heart to consider the fair city of Qeynos and its inhabitants first and themselves a distant second.")
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    Dialog.AddOption("I like having a commanding presence in battle. I want to be a crusader.","CrusaderOffer")
    Dialog.AddOption("On second thought, what were my options again?","Decide")
	Dialog.Start()
end

function CrusaderOffer(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Crusader)
end

--[[
Brawlers use their brains, they do. They don't need armor if their enemies can't hit 'em.  They also know they can't be disarmed if they have built-in weapons. Well, they can, but that' messy business that we don't need to discuss. So, are ya willin' to push yourself to the limit as a brawler?
Warriors run to the front line in battle and care only about slaughtering the enemy and oiling their weapons with their foe's blood.  Warriors know might makes right.  Do you choose this path?
None matches the conviction of a crusader. Crusaders fight for a cause. This cause gives them the strength to crush their opponents beneath their feet. The last thing that people see when they fight a crusader is a cold, dead look -- their own reflection in the crusader's eyes.  Do you choose this path?
]]--


--[FINAL SELECTION] 
--You have to make a choice!  You got potential, you do, and it would be a sore shame to see you waste it!  But you can't be a fighter your entire life. You gotta focus on one of the styles I showed you, if you wanna go places.  So what will it be, eh?



--Brawlers use their brains, they do. They don't need armor if their enemies can't hit 'em.  They also know they can't be disarmed if they have built-in weapons. Well, they can, but that' messy business that we don't need to discuss. So, are ya willin' to push yourself to the limit as a brawler?
--Brawlers don't waste their time strapping on bulky armor. Sometimes the only weapons they use are their fists, and they dodge their opponent's blows with the swiftness of a hawk.  Do you choose this path?
--If you're a true brawler, you need to undergo a challenge.  In order to join the ranks of the brawlers here in Qeynos, you gotta prove your skills. Enter the dojo and go fist to fist against another brawler.  If you manage to defeat 'em, you'll become that which you seek.

--Thank you, Dagorel.  I won't forget your lessons.
--Aye, aye.  The watchmen informed me. They say you held your own. That's what I want to hear! You had to prove your fightin' skills--I don't want anyone accusing ol' Dagorel of sending ill-equipped kids off to their deaths. You proved you got what it takes, kid. Good work.

--Yes.  I will train everyday to master the art of pugilism.  I am a brawler.
--I like relying on my fists in battle. I want to be a brawler.
--
--Understand one more thing as well ...  when you defeat your last opponent, meditate at the altar in the dojo.  A brawler is not only strong of body but also of mind.  Strengthening both is mandatory.  Once you do this, you'll have proven yourself.

--BRAWLER ALTAR A cool breeze swirls around you, sending a tingle up the back of your spine.  You arise from the altar and know in your soul that you are a brawler.
--CRUSADER START It's not as easy as that, youngin'.  You don't just declare yourself a crusader, or did you learn nothing from my previous lessons?  No, crusader is a title earned by those with enough heart to consider the fair city of Qeynos and its inhabitants first and themselves a distant second.
--
--A warrior, are ya? You're sayin' that the best way to fix a problem is with a bit of hammered steel?  Aye, I agree with that!  When you got a slaverin' gnoll runnin' at you, hard bent for leather, well, you'd be a ninny not to draw steel.  So, the life of the warrior is your path in life, is it?
--I like having a commanding presence in battle. I want to be a crusader.
--
--Though all warriors fight for a cause, none have as strong a conviction as a crusader. Crusaders live to fight another day ... and another ... and another... They never stop, for they know their next opponent waits to take everything they've earned.
--It's not as easy as that, youngin'.  You don't just declare yourself a crusader, or did you learn nothing from my previous lessons?  No, crusader is a title earned by those with enough heart to consider the fair city of Qeynos and its inhabitants first and themselves a distant second.
--Yes.  I prefer to take care of a problem, rather than let it take care of me.  I am a warrior!
--Whoa, now! Not yet, you're not!  You have to prove you can last in the fray. You didn't think I'd wave a magic wand and make you a warrior, did you?  No, no, we got a make shift arena set up in the warehouse, where you'll prove yourself, a true warrior of Qeynos. No need to return to me, I've taught you all I can.