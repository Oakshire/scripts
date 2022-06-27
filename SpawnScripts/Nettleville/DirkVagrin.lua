--[[
	Script Name	: SpawnScripts/Nettleville/DirkVagrin.lua
	Script Purpose	: Dirk Vagrin 
	Script Author	: Dorbin
	Script Date	:   06.25.2022
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 11, "InRange", "LeaveRange")		
    ProvidesQuest(NPC,5597)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/dirk_vagrin/qey_village01/qey_village01_dirk_vagrin_multhail1_e70947c7.mp3", "Bah!  Go away or I'll ... I'll ... I don't know.   Just go away!", "", 3343827845, 2701332902, Spawn)
else
    if  HasCompletedQuest(Spawn,5597)then
	local chance = math.random(0, 100)
	if chance <= 25 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/dirk_vagrin/qey_village01/qey_village01_dirk_vagrin_multhail2_be08c03e.mp3", "Bah!  Off with ye!  These barrels are mine!  Mine!", "", 4248926679, 4124146023, Spawn, 0)
    end
elseif not HasQuest(Spawn, 5597) and not HasCompletedQuest(Spawn,5597)then
	local chance = math.random(0, 100)
	if chance <= 80 then
	local choice = MakeRandomInt(1,3)
	FaceTarget(NPC, Spawn)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/dirk_vagrin/qey_village01/qey_village01_dirk_vagrin_callout_ab43615b.mp3", "Ehh? Who goes there? You looking for adventure? I bet my shinys will tempt you!", "boggle", 2386377043, 3237731304, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/dirk_vagrin/qey_village01/qey_village01_dirk_vagrin_multhail2_be08c03e.mp3", "Bah!  Off with ye!  These barrels are mine!  Mine!", "", 4248926679, 4124146023, Spawn, 0)
	elseif choice == 3 then --Repeated for focus
	PlayFlavor(NPC, "voiceover/english/dirk_vagrin/qey_village01/qey_village01_dirk_vagrin_callout_ab43615b.mp3", "Ehh? Who goes there? You looking for adventure? I bet my shinys will tempt you!", "boggle", 2386377043, 3237731304, Spawn)
	end

    end
end
end
end

function LeaveRange(NPC, Spawn)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "voiceover/english/dirk_vagrin/qey_village01/qey_village01_dirk_vagrin_multhail1_e70947c7.mp3", "Bah!  Go away or I'll ... I'll ... I don't know.   Just go away!", "", 3343827845, 2701332902, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "noway", 0, 0, Spawn)
	Dialog.AddDialog("Bah!  Off with ye!  These barrels are mine!  Mine!")
	Dialog.AddVoiceover("voiceover/english/devon_varin/qey_village01/dirkvagrin000.mp3", 2305501029, 475655569)
 	if not HasCompletedQuest (Spawn, 5597) and not HasQuest (Spawn, 5597) then 
	Dialog.AddOption("But those barrels look look empty...","Empty")
    end
    if GetQuestStep (Spawn, 5597)==2 then 
	Dialog.AddOption("I've come back with the 'scalies' you asked for.","Delivered")
    end
    Dialog.AddOption("Yeesh.  Sorry to bother you!")
	Dialog.Start()
end

function Empty(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	Dialog.AddDialog("Of course they're empty!  You think I'm crazy?!  They need to be emtpy before I can fill them, right?  I'll fill them with albino snakeskins!  Scalies!  You know the white scalies?!  I pay a good shiney for scalies!  HAH! Shineies for scalies!  Shhhinies for scaaalies!")
	Dialog.AddVoiceover("voiceover/english/devon_varin/qey_village01/dirkvagrin001.mp3", 798602979, 2160251346)
	Dialog.AddOption("I could get you some albino snakeskins... scalies... if you're paying with 'shinies'.", "QuestBegin")
	Dialog.AddOption("... I think I hear someone calling me... over there.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5597)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayAnimation(NPC,10760)
    SetStepComplete(Spawn, 5597, 2)
	Dialog.AddDialog("HAHahah!  Give'm here!  Take your shinies!  Hah!  You scalies!  Into the barrels with you all!")
	Dialog.AddVoiceover("voiceover/english/devon_varin/qey_village01/dirkvagrin003.mp3", 3809079045, 2637215855)
	Dialog.AddOption("...Thanks for the 'shinies'.")
	Dialog.Start()
end
