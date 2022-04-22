--[[
	Script Name		: SpawnScripts/TheCityofFreeport/Rumdum.lua
	Script Purpose	: Rumdum
	Script Author	: Premierio015
	Script Date		: 2022.04.02
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheSteinOfMoggok = 5511

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "RandomGreeting")  
ProvidesQuest(NPC, TheSteinOfMoggok)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	Dialog1(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
		PlayFlavor(NPC, "", "Keep the ale comin'!  I haven't lost my balance...", "", 0, 0, Spawn, 0)
end


function Dialog0(NPC, Spawn)
    RemoveCoin(Spawn, 400)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Mmmmm ale... Oh yeah, the magic stein.  It was called the Stein of Mophawk ... err ... Mogpok ... err ... Moggok!  That's it! The Stein of Moggok! Too bad that stein is gone now...  It was supposed to make you smarter or somethin'.")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum007.mp3", 3079886262, 2546451154)
		Dialog.AddEmote("drinking_idle")
	Dialog.AddOption("What happened to the Stein of Moggok?", "Dialog7")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	RemoveCoin(Spawn, 400)
	Dialog.AddDialog("Oooo!  The good stuff!  You're a good kid ... yeah, a good kid.  This stein has a crack in it!  I'm gettin' ale everywhere!")
	Dialog.AddEmote("yeah")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum004.mp3", 1836701843, 3938428532)
	Dialog.AddOption("I think the problem is the ale staying in your mouth...", "Dialog5")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Froglok?!  Let me tell ya somethin' 'bout them Frogloks... them froggies are only good fer squishin'.  I remember the first time I squished a Froglok ... I was five-years old and --")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum008.mp3", 1911216997, 2661721879)
	Dialog.AddEmote("threaten")
	if HasCoin(Spawn, 400) then
	Dialog.AddOption("Bartender, we need another four silver ale here!", "Dialog8")
	end
	Dialog.AddOption("That's it, I'm out of here.")
	Dialog.Start()
end



function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Let me tell ya somethin'... They just don't make steins like they used to ... My great great greatest grandpappy had a stein.  It was a magical!")
	Dialog.AddEmote("orate")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum005.mp3", 968270018, 1345084346)
	Dialog.AddOption("Really?  Tell me about this stein.", "Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oooo yeah... it held the best drinks ... Ogre swill ... Flaming Clurg ... Oh!  Flaming Clurg!  Now there's a drink! Burns yer belly and freezes yer eyeballs... I remember my first Flaming Clurg... I was five years old and--")
	Dialog.AddEmote("ponder")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum006.mp3", 2037900091, 114693939)
	if HasCoin(Spawn, 400) then
	Dialog.AddOption("Bartender!  Another four silver ale here!  Now what about the stein?", "Dialog0")
	end
	Dialog.AddOption("Forget it.  You are too drunk to even hear me.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Militia?!  Let me tell you somethin' about the Freeport Militia... I didn't need them; they needed me... Okay?  Just cuz I came to work with a lil' ale on my breath one, two, three .... okay, ten times... they kick me out!  I been smashing froggies since I was five-years old and --")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum011.mp3", 1771534576, 1141357918)
	Dialog.AddEmote("scold")
	if HasCoin(Spawn, 400) then
	Dialog.AddOption("Bartender!  Another four silver round for Rumdum!", "Dialog11")
	end
	Dialog.AddOption("I'll leave you to your ranting.")
	Dialog.Start()
end

function Dialog888(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I suppose they is still in the Feerrott doin' their duty. Or they're dead. It's been a really long time... They's probably dead, but ya never know these days. People just don't want to stay dead... Let me tell ya something about the undead...")
	Dialog.AddEmote("agree")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum013.mp3", 2253824282, 3593362513)
	Dialog.AddOption("I've heard all I need to know for now.  See you later, big guy.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Are ya callin' me smelly?!  Nobody calls Rumdum Clurg smelly!")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum002.mp3", 2456172890, 2255945862)
	Dialog.AddEmote("threaten")
	if not HasQuest(Spawn, TheSteinOfMoggok) and not HasCompletedQuest(Spawn, TheSteinOfMoggok) then
	Dialog.AddOption("Easy, big guy.  How about I buy you a drink?", "Dialog3")
	end
	Dialog.AddOption("Uh... I'll be leaving now.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yeah, a drink.  That sounds good.  I need a drink... this one's almost empty.")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum003.mp3", 3277142292, 4121849623)
	if HasCoin(Spawn, 400) then
	Dialog.AddOption("Bartender, bring Rumdum here a four silver ale!", "Dialog4")
	end
	Dialog.AddEmote("nod")
	Dialog.AddOption("So do I, I think I'll find another place to have one though.  See you later.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
    RemoveCoin(Spawn, 400)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Mmmmm ale... Where was I?")
	Dialog.AddEmote("drinking_idle")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum012.mp3", 303364683, 1158756231)
	Dialog.AddOption("You were talking about the Bouncers.  Where are they now?", "offer")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
    RemoveCoin(Spawn, 400)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Mmmmm ale ...  Where was I?  Oh yeah ... the stein. If it weren't for those dumb Bouncers fightin' over whose turn it was to use it for drinkin', it might still be around.  Now it's all in pieces... What you gonna do with pieces of a stein?  Ya can't put no ale in it ... It would just fall out on the floor...")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum009.mp3", 4092925670, 683051779)
	Dialog.AddEmote("drinking_idle")
	Dialog.AddOption("Who has the pieces?", "Dialog9")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Duh! The Bouncers have 'em.  They was the stubborn type, ya know... each keepin' a piece so no one could fix the thing.  They even carried the pieces with them when they went back on duty.")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum010.mp3", 1336738268, 1623567135)
	Dialog.AddOption("Duty?  So they were in the Ogre militia?  ", "Dialog10")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What in Zek do you want?  Can't ya see I'm drinkin' here...")
	Dialog.AddVoiceover("voiceover/english/rumdum/fprt_east/quest_rumdum001.mp3", 531525914, 2611919563)
	Dialog.AddOption("Well, I suppose you are getting some of it in your mouth.  I'll leave you to your \"drinking.\"")
	Dialog.AddOption("Yes, I can see that... and smell it.", "Dialog2")
	if  GetQuestStep(Spawn, TheSteinOfMoggok) == 5 then
	Dialog.AddOption("Hey, Rumdum. Remember me?", "Dialog12") 
	elseif GetQuestStep(Spawn, TheSteinOfMoggok) == 7 then
	Dialog.AddOption("Rumdum, I'm back.", "Dialog22")
	end
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Hey!  It's the nice kid!  Uh ... you the nice kid, right?")    
	Dialog.AddOption("Right.  Say... if someone were to get the pieces of the stein... how would they fix it?", "Dialog13")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Well... they should give it to me!  It's supposed to be mine.") 
	Dialog.AddOption("Oh... what if they wanted to fix it up as a surprise for you?  Yeah, a surprise.", "Dialog14")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("First, they'd need to get a new Oggokian Blood Ruby for it.  The old one was shattered in the Bouncer fight.  Ya can't have a good stein without a good jewel or two in it, right?")
	Dialog.AddOption("Where would I... I mean \"they\"... get a Blood Ruby?", "Dialog15")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Oh ... hmmm ... I know!  Clurg always has an extra one around--in case he has to fix the stein.  You should ask him for the ruby.")
	Dialog.AddOption("Isn't Clurg... dead?", "Dialog16")
	Dialog.Start()
end


function Dialog16(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Oh, yeah.... When I have a little too much to drink I forget some stuff.  Like, once I was drinkin' this troll stuff that tasted like tinker grease, but it sure did the job... I couldn't remember my name for a week... or was it a month?")
	Dialog.AddOption("You were saying something about the Blood Ruby?", "Dialog17")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Wha?  Hmm...  oh yeah, the Oggokian Blood Ruby.  Momma said that Clurg must have been buried with it or something.  All his stuff was put into a bag and thrown in on top of him.  It was a pretty small bag...")
	Dialog.AddOption("So where is the grave?", "Dialog18")
	Dialog.Start()
end


function Dialog18(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("He was buried under a lake... 'cause he was a bartender...")
	Dialog.AddOption("Uh... why bury a bartender under a lake?", "Dialog19")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("So he won't get thirsty, duh!")
	Dialog.AddOption("Right... so where is this lake?", "Dialog20")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("So he won't get thirsty, duh!")
	Dialog.AddOption("Right... so where is this lake?", "Dialog20")
	Dialog.Start()
end

function Dialog20(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Oh, from what I've heard it's called Spilt Ale Lake and it's in the Feerrott")
		Dialog.AddOption("You mean I have to go back to the Feerrott?!", "Dialog21")
		Dialog.Start()
end


function Dialog21(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn, TheSteinOfMoggok, 5)
	Dialog.AddDialog("Back?  You been there before?")
	Dialog.AddOption("Uh... never mind.  Enjoy your tenth ale of the morning.")
	Dialog.Start()
end


function Dialog22(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Heya kid!  You gonna buy me more ale?")
	Dialog.AddOption("Maybe later.  Okay... if someone was able to get a Blood Ruby and the stein pieces how would they fix the stein?", "Dialog23")
	Dialog.Start()
end

function Dialog23(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("I know this... I know I do...  You would use ... the family recipe!  That's right! The family stein fixin' recipe!  It's been past down from poppa to son ever since Clurg died.")
	Dialog.AddOption("Do you have this recipe?", "Dialog24")
	Dialog.Start()
end

function Dialog24(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Of course I do! I have it right here!")
	Dialog.AddOption("You mean that soaked piece of parchment you've been setting your tankard on?!", "Dialog25")
	Dialog.Start()
end

function Dialog25(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Uh, yeah...  the bartender don't like the rings, ya know.")
	Dialog.AddOption("Can I borrow the recipe?", "Dialog26")
	Dialog.Start()
end

function Dialog26(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("This is a very precious recipe that's been in my family for generee... jenera... a long time.")
	if HasCoin(Spawn, 400) then
	Dialog.AddOption("I'll give you four silver so you can buy more ale.", "Dialog27")
	end
	Dialog.AddOption("Looks like I can't talk you out of it.")
	Dialog.Start()
end


function Dialog27(NPC, Spawn)
    RemoveCoin(Spawn, 400)
    SetStepComplete(Spawn, TheSteinOfMoggok, 7)
    FaceTarget(NPC, Spawn)
	Dialog.AddDialog("Sold!")
	Dialog.AddOption("Thanks Rumdum!")
	Dialog.Start()
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheSteinOfMoggok)
end