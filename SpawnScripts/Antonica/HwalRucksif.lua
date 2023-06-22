--[[
    Script Name    : SpawnScripts/Antonica/HwalRucksif.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 07:06:22
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local TheseBootsWereMadeFor = 5805 -- These Boots Were Made For QUEST ID

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange", "", Spawn)
	ProvidesQuest(NPC, TheseBootsWereMadeFor)
end

function hailed(NPC, Spawn)
FaceTarget(NPC, Spawn) 
if HasQuest(Spawn,5766) and not QuestStepIsComplete(Spawn,5766,6)then --WELCOME TO QEYNOS,CITIZEN
    SetStepComplete(Spawn,5766,6)
end

if not HasQuest(Spawn, TheseBootsWereMadeFor) or GetQuestStep(Spawn, TheseBootsWereMadeFor, 8) or  GetQuestStep(Spawn, TheseBootsWereMadeFor, 10) or GetQuestStep(Spawn, TheseBootsWereMadeFor, 11) or GetQuestStep(Spawn, TheseBootsWereMadeFor, 12) or HasCompletedQuest(Spawn, TheseBootsWereMadeFor)  then
Dialog1(NPC, Spawn)
elseif GetQuestStep(Spawn, TheseBootsWereMadeFor) == 1 or  GetQuestStep(Spawn, TheseBootsWereMadeFor) == 2 then
PlayFlavor(NPC, "voiceover/english/hwal_rucksif/antonica/quest/quest_hwal_rucksif_need_materials_60f2a69b.mp3", "Got my material?  Doesn't look like it.", "sigh", 1237617987, 3622122831, Spawn)
elseif GetQuestStep(Spawn, TheseBootsWereMadeFor) == 3 then
Dialog2(NPC, Spawn)
elseif GetQuestStep(Spawn, TheseBootsWereMadeFor) == 4 or GetQuestStep(Spawn, TheseBootsWereMadeFor) == 5 or GetQuestStep(Spawn, TheseBootsWereMadeFor) == 6 then
PlayFlavor(NPC, "voiceover/english/hwal_rucksif/antonica/quest/quest_hwal_rucksif_eitoa_components_6fc1205.mp3", "Come back when you've found the components for Captain Eitoa's sword.", "shrug", 438547110, 205957881, Spawn)
elseif GetQuestStep(Spawn, TheseBootsWereMadeFor) == 7 then
Dialog7(NPC, Spawn)    
elseif GetQuestStep(Spawn, TheseBootsWereMadeFor) == 9 then
Dialog10(NPC, Spawn)
elseif GetQuestStep(Spawn, TheseBootsWereMadeFor) == 11 then
Dialog16(NPC, Spawn)
elseif GetQuestStep(Spawn, TheseBootsWereMadeFor) == 16 then
Dialog22(NPC, Spawn)
end
   end


function InRange(NPC, Spawn)
if CanReceiveQuest(Spawn, TheseBootsWereMadeFor) then
PlayFlavor(NPC, "voiceover/english/hwal_rucksif/antonica/quest/quest_hwal_rucksif_callout_30d20c93.mp3", "Ho, there!  You wouldn't mind helping out a hard working dwarf, would ya?", "hello", 596769271, 2784563151, Spawn)
 end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ya see, I've been tasked with gettin' a whole bunch of fine weapons made for the sentries out here, and me achin' back is already at its limit.  Argh!  These boots chafe something awful!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif002.mp3", 4019058614, 2305053500)
	Dialog.AddEmote("hello")
	if CanReceiveQuest(Spawn, TheseBootsWereMadeFor) then
	Dialog.AddOption("I might be able to help you", "offer")
	end
	Dialog.AddOption("No thanks, I lost my work ethic a while back.")
	Dialog.Start()
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheseBootsWereMadeFor)
end




function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh, you're back!  My now, that's a serious load of iron and wood!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif004.mp3", 1212942996, 3121543539)
	Dialog.AddEmote("applaud")
	Dialog.AddOption("Mmmffff!  Take it, quick!", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Easy now!  Don't go dropping it all over! I'll just have to pick it up later!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif005.mp3", 2215806706, 569080202)
	Dialog.AddEmote("boggle")
	Dialog.AddOption("It's heavy!", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Har har har!  Don't tell me that!  I have to do this all day long!  The forge is a cruel mistress, but she rewards well!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif006.mp3", 342444773, 1889970866)
	Dialog.AddEmote("chuckle")
	Dialog.AddOption("I'll take some of that reward!", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I've got some coin for ya, but how about I enlist you to help with another task?  What's that? Yes? Great!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif007.mp3", 2431845223, 2233032287)
	Dialog.AddEmote("stare")
	Dialog.AddOption("Obviously your back isn't the only thing that's going. ", "Dialog6")
	Dialog.AddOption("Well, yes, I suppose I can help. ", "Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
    SetStepComplete(Spawn, TheseBootsWereMadeFor, 3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The captain of the guards requested I forge a rather special sword, and I'm having a slight problem finding the materials I need.  That's a dandy little book you've got there; I'll just write down what I need.")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif008.mp3", 2629427115, 991638830)
	Dialog.AddOption("Hey, that's my journal!")
	Dialog.Start()
end


function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Very nice, indeed!  These samples will make a wonderful sword. I'm sure that Eitoa will be pleased once I get a chance to make it for her.")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif009.mp3", 612576791, 3127535606)
	Dialog.AddOption("I hope so, that was a lot of work.", "Dialog8")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Speaking of work, all this smithing is thirsty business!  You wouldn't mind helping me curb a guilty pleasure, would you? Noooo, of course you wouldn't!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif010.mp3", 3100412846, 461623462)
	Dialog.AddOption("I'm almost afraid to ask...", "Dialog9")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
    SetStepComplete(Spawn, TheseBootsWereMadeFor, 7)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Don't be!  It's not traditional, and it's hard to come by, but I could really go for a Blackburrow Stout!  Now, back to the forge!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif011.mp3", 3697829619, 659221647)
	Dialog.AddOption("A dwarf drinking gnoll-brew?")
	Dialog.Start()
end


function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well done!  Nothing hits the spot like a good keg o' the Stout!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif012.mp3", 4272911909, 2566231204)
	Dialog.AddEmote("applaud")
	Dialog.AddOption("If you say so... I wouldn't touch that gnoll-filth with a ten foot polearm!", "Dialog11")
	Dialog.Start()
end


function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You've been trustworthy thus far. I think you'd be perfect to help me out with my dear old granddad.")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif013.mp3", 50142058, 1032335681)
	Dialog.AddOption("Oh no, I draw the line at convalescent care!", "Dialog12")
	Dialog.Start()
end


function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Don't be silly.  He's been dead for more than a century! But ... well ... ya see... there's this family curse that goes back every other generation for the past ... oh Ro's flame, I don't know how many years, but a long dang time!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif014.mp3", 2209750474, 3589103244)
	Dialog.AddOption("Now you're going to tell me he's some sort of ghost?", "Dialog13")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, so you've heard of the ol' Rucksif curse!  Jolly good!  I just need ya to totter off and see if ya can lay him to rest properly.")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif015.mp3", 1437826389, 2209485957)
	Dialog.AddOption("I've never heard of a ghost around here before...", "Dialog14")
	Dialog.Start()
end


function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("He's the quiet sort, doesn't really get out to bother anyone these days.  Oh, sure, he used to be a real terror out here in Antonica, but he's gotten quiet in his old age.  Spends most of his time moaning and groaning underneath that bard's tower.")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif016.mp3", 1645899542, 3940230430)
	Dialog.AddOption("I guess I'll see what I can do.", "Dialog15")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
    SetStepComplete(Spawn, TheseBootsWereMadeFor, 9)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's the spirit!  Give him my best. Brell guide his path!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif017.mp3", 3573355881, 2429569870)
	Dialog.AddOption("Bah, you should be guiding his path.")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whoa, and here I thought you might have some trouble!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif018.mp3", 732409035, 4138837447)
	Dialog.AddOption("You know, you really could have warned me that he'd put up a fight.", "Dialog17")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, now where's the fun in that, eh?  I suppose you're expecting some sort of reward.  Adventurers are always thinking about what they get for helpin' someone. I think it's a law of nature!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif019.mp3", 2615861284, 4010544627)
	Dialog.AddOption("Well, it would be appreciated...", "Dialog18")
	Dialog.Start()
end


function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I don't have much, just the boots on my feet ... and my forge of course.  I'm not givin' up my forge, ya hear!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif020.mp3", 2118687776, 743391925)
	Dialog.AddOption("So the only thing you have left is your set of old, smelly boots?", "Dialog19")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now, now, no need to be rude about it!  They're quite a fine pair of dwarven boots!  But I'll need something to replace 'em.  Hah ha!  I've got just the thing!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif021.mp3", 3908614762, 554555549)
	Dialog.AddOption("[groan] Why does this sound bad for me?", "Dialog20")
	Dialog.Start()
end


function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Buck up!  It's only a quick thing!  I needed a new pair o' boots anyway!  A good friend of mine, Minty Frostbeard, is likely the finest Dwarven tailor you'll ever meet.  She gave me a list of things to gather a while back, but I haven't gotten around to it.")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif022.mp3", 3066848429, 3653191715)
	Dialog.AddOption("I'm not sure I like where this is going...", "Dialog21")
	Dialog.Start()
end

function Dialog21(NPC, Spawn)
    SetStepComplete(Spawn, TheseBootsWereMadeFor, 11)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now, now, that's no way to talk!  Bring the stuff to Minty, and I'll give you my boots when you get back.")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif023.mp3", 1586655326, 3399089635)
	Dialog.AddOption("Fine, I guess there's not much I can say about that...")
	Dialog.Start()
end

function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh, well done!  I trust Minty is well? These boots are a testament to her prowess with the needle!")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif024.mp3", 746062436, 1532463336)
	Dialog.AddOption("Should have kept those for myself!", "Dialog23")
	Dialog.Start()
end


function Dialog23(NPC, Spawn)
    SetStepComplete(Spawn, TheseBootsWereMadeFor, 16)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, I think you'll like the ol' Rucksif boots well enough, mark my words!  It's been an honor knowing such a fine and upstanding adventurer. I'd shake your hand, but I'm afraid mine's all sooty.")
	Dialog.AddVoiceover("voiceover/english/hwal_rucksif/antonica/hwal_rucksif025.mp3", 1217158698, 2375616433)
	Dialog.AddOption("These are... really... err... amazing boots!")
	Dialog.Start()
end


