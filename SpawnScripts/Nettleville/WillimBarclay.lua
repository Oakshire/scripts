--[[
	Script Name	: SpawnScripts/Nettleville/WillimBarclay.lua
	Script Purpose	: Willim Barclay 
	Script Author	: Scatman
	Script Date	: 2009.08.08
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
local Mage2 = 5768

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Perhaps we can speak another time?  I have to allocate the barley, inventory the chicken feed, and distribute the wool.")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay000.mp3", 3397569626, 186458292)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
    if GetQuestStep(Spawn,Mage2)==1 then
    Dialog.AddOption("Can I help you?","Dialog1")	
    end
    Dialog.AddOption("I see.")	
	Dialog.Start()
end

function Dialog1(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("If you can help me win the love of Darlina, that would be great.  Other than that, no one can help me.")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay001.mp3", 247133491, 1867857417)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Who's Darlina?","Dialog2")	
	Dialog.Start()
end

function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("She's the fairest creature to walk this earth.  No one, not even the goddess of love, is as beautiful as she is.  And I... I am nothing but a horrid looking troll.")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay002.mp3", 4157819983, 93007360)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    Dialog.AddOption("What do you mean?","Dialog3")	
    Dialog.AddOption("I see.  Well, I think you're selling yourself short.  You just have no confidence.","Dialog4")	
    Dialog.AddOption("That is true.  You could do better in the looks department.","Dialog2a")	
	Dialog.Start()
end

function Dialog2a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("...")
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    Dialog.AddOption("...I mean, it can't be all bad... right?","Dialog3")	
    Dialog.AddOption("...I mean, I think you're selling yourself short.  You just have no confidence.","Dialog4")	
	Dialog.Start()
end

function Dialog3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Look at me!  I'd never have a chance with Darlina!  I might as well just marry a gnoll and get it over with!")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay003.mp3", 2767747634, 2031605868)
    PlayFlavor(NPC, "", "", "whome", 0, 0, Spawn)
    Dialog.AddOption("I see.  Well, I think you're selling yourself short.  You just have no confidence.","Dialog4")	
    Dialog.AddOption("A gnoll could be an exciting experience...?","Dialog3a")	
	Dialog.Start()
end

function Dialog3a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("...")
    PlayFlavor(NPC, "", "", "shame", 0, 0, Spawn)
    Dialog.AddOption("...I mean, I think you're selling yourself short.  You just have no confidence.","Dialog4")	
	Dialog.Start()
end

function Dialog4(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Now I'm too short?  Great!  First I was ugly, now I'm too short.  Maybe I should just marry a goblin.  Apparently gnolls are too good for me.")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay004.mp3", 2536151447, 2058017298)
    PlayFlavor(NPC, "", "", "pout", 0, 0, Spawn)
    Dialog.AddOption("I've heard goblins are much better than gnolls anyway!","Dialog4a")	
    Dialog.AddOption("That's not what I meant!  I'm saying that you just need to build your self-esteem.","Dialog5")	
	Dialog.Start()
end

function Dialog4a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("...")
    PlayFlavor(NPC, "", "", "gag", 0, 0, Spawn)
    Dialog.AddOption("...I mean, that you just need to build your self-esteem!","Dialog5")	
	Dialog.Start()
end

function Dialog5(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Now it's self-esteem!  Well, it's kind of hard to have self-esteem when you're short and ugly.  Now do you see?")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay005.mp3", 2901342115, 3612540491)
    PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn)
    Dialog.AddOption("Yes, actually I do.  I think you need a magical charm to help you.","Dialog6")	
    Dialog.AddOption("And you could stand to lose a few pounds while you're at it.","Dialog5a")	
	Dialog.Start()
end

function Dialog5a(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("...")
    PlayFlavor(NPC, "", "", "pout", 0, 0, Spawn)
    Dialog.AddOption("...I mean, I think you need a magical charm to help you","Dialog6")	
	Dialog.Start()
end

function Dialog6(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("A magic charm?  What would that do?")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay006.mp3", 3843339191, 50613691)
    Dialog.AddOption("I am trying to perfect a new spell. I think I finally have it; I just need something to test it out on!","Dialog7")	
	Dialog.Start()
end

function Dialog7(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Really?  I could never afford something like that on my salary.")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay007.mp3", 1685022915, 3753235021)
     PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
   Dialog.AddOption("Oh no, no, no.  You don't have to do anything!  Here, you can have it, free of charge.","Dialog8")	
	Dialog.Start()
end

function Dialog8(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("You'd just give it to me like that?  Where is it?  I can't see it.")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay008.mp3", 2327092616, 2175769531)
     PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
    Dialog.AddOption("Wow! This new spell sure is powerful!","Dialog9")	
	Dialog.Start()
end

function Dialog9(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Wow?  You mean... like... wow, it worked?")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay009.mp3", 3947896305, 4222087768)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
    Dialog.AddOption("It did, indeed! You are the pinnacle of manliness! I can hardly believe my eyes!","Dialog10")	
	Dialog.Start()
end

function Dialog10(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Really?  Wow!  Wait a second... I wouldn't say 'wow.'  I'd say something like... 'of course, I am.'  HEY!  I think it's working!")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay010.mp3", 2352717769, 33832003)
    PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    Dialog.AddOption("That's right!","Dialog11")	
	Dialog.Start()
end

function Dialog11(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Let me try another!  \"M'lady, would you care to take a stroll?\" And how's this one?  \"Darlina, would you like to step in for a nightcap?\"")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay011.mp3", 2824359761, 59383061)
    PlayFlavor(NPC, "", "", "flirt", 0, 0, Spawn)
    Dialog.AddOption("...","Dialog11")	
	Dialog.Start()
end

function Dialog12(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Here, let me try another: \"Don't worry, ladies, there's enough of me to go around.\"")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay012.mp3", 2824359761, 59383061)
    PlayFlavor(NPC, "", "", "flex", 0, 0, Spawn)
    Dialog.AddOption("...","Dialog13")	
	Dialog.Start()
end

function Dialog12(NPC,Spawn)
    SetStepComplete(Spawn,Mage2,1)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Really?  Oh.  Okay, I'll remember that.  I want to thank you so much for your help.  I don't know how I can repay you.")
	Dialog.AddVoiceover("voiceover/english/willim_barclay/qey_village01/willimbarclay013.mp3", 1530745306, 4071019007)
    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
    Dialog.AddOption("Use it wisely. Take care.")	
	Dialog.Start()
end
