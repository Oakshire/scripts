--[[
	Script Name		: SpawnScripts/BeggarsCourt/DurioDexus.lua
	Script Purpose	: Durio Dexus
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local BigTroubleBeggarsCourt = 5669
local TrickingtheTraitor = 5670
local MeettheInquisitor = 5671

function spawn(NPC)
    ProvidesQuest(NPC, TrickingtheTraitor)
    ProvidesQuest(NPC, MeettheInquisitor)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasCompletedQuest(Spawn, BigTroubleBeggarsCourt) then
        if not HasQuest(Spawn, TrickingtheTraitor) and not HasCompletedQuest(Spawn, TrickingtheTraitor) then
            Dialog4(NPC, Spawn)
        end
    end
    if HasCompletedQuest(Spawn, TrickingtheTraitor) then
        if not HasQuest(Spawn, GnomoreGnomesteaks) and not HasCompletedQuest(Spawn, GnomoreGnomesteaks) then
            Dialog15(NPC, Spawn)
        end
    end 
    if GetQuestStep(Spawn, BigTroubleBeggarsCourt) == 1 then
        SetStepComplete(Spawn, BigTroubleBeggarsCourt, 1)
        Dialog20(NPC, Spawn)
    end
	if GetQuestStep(Spawn, TrickingtheTraitor) == 2 then
        SetStepComplete(Spawn, TrickingtheTraitor, 2)
        Dialog15(NPC, Spawn)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "I do not deal with your kind.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	end
end

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings. Who might you be? I do not run into many people over in this area. You must have some purpose for being here.")
	Dialog.AddOption("I am Gaikichi, here on behalf of Alucius. I was sent to sell you this package.", "Dialog12")
	Dialog.AddOption("I am just a bit lost. I am leaving now.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That is odd. It's not like him to trust anyone with his rare goods.")
	Dialog.AddOption("Regardless, I have the package you were interested in. Do you still want to purchase it or not?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Very well, I have the platinum I told Alucius I would give him for it. I would like to inspect the goods first if you do not mind.")
	Dialog.AddOption("Considering the price, I suppose it's okay to let you take a look first.", "Dialog9")
	Dialog.AddOption("I think I will be going now.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Tell me, Gaikichi, do you know what is in this package?")
	Dialog.AddOption("No, I was only asked to sell it. Why do you ask?", "Dialog17")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("These are some very dangerous papers to have in your possession. No wonder Alucius did not come himself. These documents claim the Overlord is not as valiant as he seems.")
	Dialog.AddOption("What? Alucius had me collect those so he could turn them in, not sell them..", "Dialog1")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Looks like he fooled you. He is more treacherous then he seems, and not a man to be crossed. Even so, I can not buy these papers. My life would be forfeit if I was caught with them. Of course, if you take them back to Alucius, you may end up like the ratonga that used to work for him.")
	Dialog.AddOption("What do you mean by that? Alucius said that the ratonga was worthless.", "Dialog11")
	Dialog.AddOption("I think I had better go.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There were rumors that the ratonga went missing while trying to sell some high-priced goods for Alucius. From what I hear, the merchandise included some obscure documents, probably something like these. The Militia found out and took him away, but they could never find the papers they were looking for. Apparently rats are very good at hiding things.")
	Dialog.AddOption("What should I do now? I don't want to end up dead or in jail.", "Dialog8")
	Dialog.AddOption("I better find a safe place to hide!")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sounds like Alucius put you in quite a fix. Why don't you just turn him over to the Freeport Militia?")
	Dialog.AddOption("I can't do that. I have done some... questionable work for Alucius already.", "Dialog18")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("These are some fairly important papers. I know of an opened-minded captain of the Freeport Militia in the area. He does not like to be pestered over menial affairs, but you may be able to hand them to him without getting yourself into trouble. ")
	Dialog.AddOption("What should I do about Alucius?", "Dialog19")
	Dialog.AddOption("Maybe I should just leave.")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("While you take the papers to Kaseo Volcatius, I will think about what to do concerning Alucius. It's important to get these papers into the proper hands before someone finds out about them. Kaseo is the Militia captain I spoke of earlier.")
	Dialog.AddOption("What can you tell me of the Freeport Militia?", "Dialog13")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("They are the Overlord's army and the defenders of Freeport. They are not to be trifled with, for they hold considerable power and authority. I have sometimes seen Kaseo near the gates to North Freeport here in Beggar's Court. Go speak to him, but be careful of what you say. It is probably not wise to speak of the work you have done for Alucius, or even mention Alucius at all.")
	Dialog.AddOption("Thank you, I will go speak with Kaseo now.", "Dialog7")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good. Come back when you are done and I will help you figure out what to do about Alucius.")
	Dialog.AddOption("Thank you for all the help. I will be back.")
	Dialog.Start()
end
------------------------

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello again, Gaikichi. Did you speak to Kaseo like I suggested?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0)
	Dialog.AddOption("Indeed I did. I think I stayed out of trouble.", "Dialog21")
	Dialog.AddOption("I had best return later.")
	Dialog.Start()
end

function Dialog21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That is good to hear. You made the right decision by turning those papers over to the Militia. This city could use more people like you. If you're interested, I could introduce you to a friend of mine who would give you work and guide you in a more suitable fashion than Alucius could.")
	Dialog.AddOption("I'd like to hear more about this friend.", "Dialog23")
	Dialog.AddOption("I'll come back and hear about your friend later.")
	Dialog.Start()
end

function Dialog23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So you diverted suspicion about the documents away from yourself?")
	Dialog.AddOption("Yes. Kaseo doesn't believe I had anything to do with it.", "Dialog10")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well done! Tell me what happened so I can find a way to help you be rid of Alucius.")
	Dialog.AddOption("I told him that I slew a man who tried to sell me the documents. Kaseo was pleased and said he would tell others of my heroism.", "Dialog14")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmm, this might be used to your advantage. Alucius will no doubt hear that the propaganda was given to a member of the Freeport Militia. You may be able to use this to scare Alucius away.")
	Dialog.AddOption("What do you purpose I do?", "Dialog3")
	Dialog.AddOption("I should be going.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Tell him that because of your deeds, the Freeport Militia considers you an ally. He wouldn't act against you if he believes the Militia are watching out for you. No one dares to cross them.")
	Dialog.AddOption("I will confront Alucius.", "Dialog22")
	Dialog.Start()
end

function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good. Remember not to back down from him. You must make him fear for his very life if he were to act against you.")
	Dialog.AddOption("I will go confront Alucius about his betrayal now.")
	Dialog.Start()
	OfferQuest(NPC, Spawn, TrickingtheTraitor)
end
----------------

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello again. Can I assume you handled Alucius?")
	Dialog.AddOption("Yes. I don't think I have anything to fear from him.", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, Gaikichi, are you ready to meet my friend Inquisitor Thorson?")
	Dialog.AddOption("Yes, please tell me where I can meet him.", "Dialog16")
	Dialog.AddOption("Not just yet.")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You can find him in the Sunken City. To get there, go to the docks and ring the bell to summon transportation outside of Freeport proper. You should be able to locate him quite easily once you arrive in the Sunken City.")
	Dialog.AddOption("I will go seek out Inquisitor Thorson.", "Dialog6")
	Dialog.Start()
	OfferQuest(NPC, Spawn, MeettheInquisitor)
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You have proven yourself well. I'm sure you will be a great help to him. Travel safely, Gaikichi.")
	Dialog.AddOption("Thank you again for all of your help.")
	Dialog.Start()
end

