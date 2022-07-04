--[[
	Script Name	: SpawnScripts/Starcrest/Bermo.lua
	Script Purpose	: Bermo <Bartender>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Restructed entire script using new format - Dorbin 06.26.2022
--]]
require "SpawnScripts/Generic/DialogModule"

-- Quest ID's
local GATHERING_GLOWMYST = 244 -- was 36
local BlackburrowStout = 5594

function spawn(NPC)
   ProvidesQuest(NPC, GATHERING_GLOWMYST)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function respawn(NPC)
   spawn(NPC)
end

function targeted(NPC, Spawn)
	hailed(NPC, Spawn)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
    if  HasCompletedQuest(Spawn,GATHERING_GLOWMYST)then
	local chance = math.random(0, 100)
	if chance <= 70 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn, 0)
    end
elseif not HasQuest(Spawn, GATHERING_GLOWMYST) and not HasCompletedQuest(Spawn,GATHERING_GLOWMYST)then
	local chance = math.random(0, 100)
	if chance <= 80 then
    local choice = math.random(1,2)
    if choice == 1 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/bartender_bermo/qey_village02/100_bartender_bermo_callout_2f0743af.mp3", "Now, how can I get enough Glowmyst for tonight?  I just can't run out!  Y-you there!  Perhaps you'd get me some of my patented Glowmyst?", "ponder", 552829775, 1518682030, Spawn)
    elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/bartender_bermo/qey_village02/100_bartender_bermo_multhail4_bd869670.mp3", "I must have my Glowmyst!  My customers won't settle for anything other than that glowing concoction!", "agree", 2103292434, 2123107577, Spawn)
    end    
    end
    end
end
end
---------------------------------------------------------------------------------------------------------------------
--                     QUEST 1
---------------------------------------------------------------------------------------------------------------------

function OfferQuest1(NPC, Spawn)
   OfferQuest(NPC, Spawn, GATHERING_GLOWMYST)
end



function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
        PlayFlavor(NPC,"","","heckno",0,0,Spawn)
    else  
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
	Dialog.AddDialog("All manner of fermented beverages available here, all with my special Glowmyst juice added!")
	Dialog.AddVoiceover("voiceover/english/bartender_bermo/qey_village02/bartenderbermo.mp3", 861640330, 2606733244)
    if GetQuestStep(Spawn,GATHERING_GLOWMYST)==2 then
    Dialog.AddOption("I've brought back the glowmyst juice you needed!", "Turnin")
    end
    if not HasQuest(Spawn, GATHERING_GLOWMYST) and not HasCompletedQuest(Spawn,GATHERING_GLOWMYST)then
	Dialog.AddOption("Glowmyst juice? What's that? ", "Dialog2")
    end
    if GetQuestStep(Spawn,BlackburrowStout)==1 then
	Dialog.AddOption("I found this barrel in Nettleville's back alleys.  It has some gnollish on it, but it mentions Starcrest.  Do you know anything about this?", "Dialog5")
    end
	Dialog.AddOption("No thanks.")
	Dialog.Start()
end
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddDialog("It's a special juice I squeeze from the glowmyst beetles and I'm running short on the stuff; my customers love it.  Hey, you're a stout one, would you mind squeezing me some?")
	Dialog.AddVoiceover("voiceover/english/bartender_bermo/qey_village02/bartenderbermo000.mp3", 2271463066, 2768575441)
	Dialog.AddOption("Sure, why not?", "Dialog4")
	Dialog.AddOption("I don't think I'm cut out for that.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All manner of fermented beverages available here, all with my special Glowmyst juice added!")
	Dialog.AddVoiceover("voiceover/english/bartender_bermo/qey_village02/bartenderbermo.mp3", 861640330, 2606733244)
	Dialog.AddOption("Glowmyst juice? What's that? ", "Dialog2")
	Dialog.AddOption("No thanks.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You must go to the Oakymyst forest and harvest the beetles. I'll need at least a handful of the beetles -- their juice doesn't add to or take away from the flavor of my drinks, but it gives them a slight, radiant glow.")
	Dialog.AddVoiceover("voiceover/english/bartender_bermo/qey_village02/bartenderbermo001.mp3", 1349632986, 1200312116)
	Dialog.AddOption("I'll get you some.", "OfferQuest1")
	Dialog.Start()
end

function Turnin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, GATHERING_GLOWMYST, 2)
    PlayFlavor(NPC,"","","smile",0,0,Spawn)
	Dialog.AddDialog("Great! This will last at least a week! If you wait just a minute...Ahh, here we are! Take some money for your troubles. I insist!")
	Dialog.AddVoiceover("voiceover/english/bartender_bermo/qey_village02/bartenderbermo002.mp3", 999124662, 431133752)
	Dialog.AddOption("Thanks Bermo!")
	Dialog.Start()
end


function Dialog5(NPC, Spawn)  --MISSING ACTUAL DIALOG/VO
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","boggle",0,0,Spawn)
	Dialog.AddDialog("W-what?!  Keep your voice down!  I'd already chalked up that shipment as a loss and blamed those blasted gnolls for it... Tell you what.  I'll take that off your hands and I'll give ya my own ring to keep this between us.")
	Dialog.AddVoiceover("voiceover/english/bartender_bermo/qey_village02/bartenderbermo003.mp3", 1349632986, 1200312116)
	Dialog.AddOption("That sounds fair enough.","Kegturnin")
	Dialog.Start()
end

function Kegturnin(NPC, Spawn)
    SetStepComplete(Spawn, BlackburrowStout, 1)
    PlayFlavor(NPC,"","","wink",0,0,Spawn)
end