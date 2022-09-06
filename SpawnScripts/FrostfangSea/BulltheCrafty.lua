--[[
	Script Name	: SpawnScripts/FrostfangSea/BulltheCrafty.lua
	Script Purpose	: Bull the Crafty <Mender>
	Script Author	: Foof
	Script Date	: 2013.05.16
	Script Notes	: 
	Modified date   : 9/4/22
	Modified by     : Ememejr
	Modifed Notes   : converted to dialogmodule
--]]
require "SpawnScripts/Generic/DialogModule"

local HarvestTutorial = 11
local HadAHammer = 12

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, HadAHammer)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Player)
    -- VO option Well Met, Hail, Hello,
    
    
    
    FaceTarget(NPC, Player)
    Dialog.New(NPC, Player)
    Dialog.AddDialog("Greetings!  I noticed you harvesting out there.  Are you interested in trying your hand at making something out of them?")   
    Dialog.AddRequirement(REQ_QUEST_HAS_COMPLETED_QUEST,HarvestTutorial)
    Dialog.AddRequirement(REQ_QUEST_DOESNT_HAVE_QUEST,HadAHammer)
    Dialog.AddRequirement(REQ_QUEST_NOT_HAS_COMPLETED_QUEST,HadAHammer)
    Dialog.AddOption("Sure, why not?  Is it hard?", "Quest1Chat_2")
    
    Dialog.AddDialog("The recipe's right there in front of me there, don't forget to read it once you pick it up. The coal's on the ground there.  And make sure you have a tin cluster and a lead cluster in your bags, they'll be no use to you in the bank!")
    Dialog.AddEmote("nod")
    Dialog.AddRequirement(REQ_QUEST_BEFORE_STEP,HadAHammer,3)
    
    Dialog.AddDialog("Having any trouble? You might have noticed that at the bottom of the crafting window you see six tradeskill arts you can use. Three will improve the durability, and three the progress of your craft. Try using those as much as you need while crafting.")
    Dialog.AddRequirement(REQ_QUEST_ON_STEP,HadAHammer,3)
    Dialog.AddOption("I'll try.")
    
    Dialog.AddDialog("How did you make out?  Was my recipe simple enough?")
    Dialog.AddRequirement(REQ_QUEST_ON_STEP,HadAHammer,4)
    Dialog.AddOption( "I made a lucky wolf paw charm!" ,"Quest1Chat_3"   )
    
    Dialog.AddDialog("At peace or at war, my work must go on.")
 
    Dialog.Start()
    
  end  
function OfferHadAHammer(NPC, Player)
    OfferQuest(NPC, Player, HadAHammer)
end    

function Quest1Chat_2(NPC, Player)
	FaceTarget(NPC, Player)
	Dialog.New(NPC, Player)
	Dialog.AddDialog("Nay, not hard at all once you wrap your head around it.  But I'm not one to keep talking all day.  Why don't you just jump in and try it?")
	Dialog.AddOption("Okay, what do I do?", "OfferHadAHammer")
    Dialog.Start()
end    
function Quest1Chat_3(NPC, Player)
    SetStepComplete(Player, HadAHammer, 4)
	FaceTarget(NPC, Player)
	Dialog.New(NPC, Player)
	Dialog.AddDialog("Congratulations!  You seem to have a right knack for crafting things, if I do say so.  If you're interested in learning more about crafting, you should look up a professional tradeskill tutor who can tell you all the details.")
	Dialog.AddOption("Thanks, I might do that.")
    Dialog.Start()


end
function OfferHadAHammer(NPC, Player)
    OfferQuest(NPC, Player, HadAHammer)
end
    
    
    
    
    
    
    






