--[[
	Script Name		: SpawnScripts/WestFreeport/LieutenantDarrius.lua
	Script Purpose	: Lieutenant Darrius
	Script Author	: Premierio015
	Script Date		: 2022.04.26
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local InSearchofSpiritkeepers = 5513
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
ProvidesQuest(NPC, InSearchofSpiritkeepers)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 if HasQuest(Spawn,5865) and not QuestStepIsComplete(Spawn,5865,7)then --FREEPORT OPPORTUNITY
    SetStepComplete(Spawn,5865,7)
end
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The militia has a task for you, citizen.  Will you accept the call to duty?")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/lieutenant_darrius.mp3", 913608800, 3646524676)
	if not HasQuest(Spawn, InSearchofSpiritkeepers) and not HasCompletedQuest(Spawn, InSearchofSpiritkeepers) then
	Dialog.AddOption("Perhaps.  What is the duty?", "Dialog25")
	elseif GetQuestStep(Spawn, InSearchofSpiritkeepers) == 2 then
	Dialog.AddOption("I have gathered the five scalps from the Wailing Caves.", "Dialog1")
	end
	Dialog.AddOption("I have found my purpose, Lieutenant. ")
	Dialog.Start()    
end

function Dialog1(NPC, Spawn)
    SetStepComplete(Spawn, InSearchofSpiritkeepers, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Overlord wishes to assure that his citizens are well-kept so that they shall be ripe for volunteer duty in the future.  Accept this as a show of recognition of your loyal service.  Now be on your way.  You are, for now, relieved of duty.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x2_return.mp3", 2914740402, 3834860982)
	Dialog.AddOption("Thank you sir. For Freeport and Realm!")
	Dialog.AddOption("I give the Overlord my thanks for this opportunity to spill the blood of our enemies!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Overlord will not divert resources on suspicion alone. We believe that citizens such as you are capable of accomplishing this task or perishing in the attempt.  Either way, the goals of Freeport will be served.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x2_initial5.mp3", 336191891, 2227279881)
	Dialog.AddOption("What proof do you require?", "Dialog22")
	Dialog.AddOption("How are the goals of Freeport served if its citizens die?", "Dialog13")
	Dialog.AddOption("If the Overlord will not commit to this I sure won't either. ")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The militia has a task for you, citizen.  Will you accept the call to duty?")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/lieutenant_darrius.mp3", 913608800, 3646524676)
	Dialog.AddOption("That all depends on what the militia needs of me.", "Dialog15")
	Dialog.AddOption("Perhaps.  What is the duty?", "Dialog25")
	Dialog.AddOption("I have found my purpose, Lieutenant. ")
	Dialog.Start()
end



function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Eh! A useless rusty dagger!? Not only is it rusted but it bears many scratches; it looks as if a giant rat clawed at it. Although I consider this evidence of no importance, I do owe you a reward for ridding us of that accursed orc.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x1_return.mp3", 49529721, 694790311)
	Dialog.AddOption("Thank you.  Good bye.")
	Dialog.AddOption("I live to serve Freeport.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You dare ask for compensation  to serve this city! As if we owe you?! Protecting this city and furthering the Overlord's advantage against our enemies is reward enough.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x1_initial4.mp3", 4223754842, 4238638)
	Dialog.AddOption("I did not mean to insult the militia or the Overlord...", "Dialog18")
	Dialog.AddOption("Reward enough for you, perhaps, but not for me.  Good bye.")
	Dialog.Start()
end



function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Volunteer duty does not come with the promise of wealth or praise! You should consider it an honor to serve the Overlord. Expecting compensation is as disgusting as it is insulting. Either you will volunteer for the post, or you will face the consequences of insubordination!")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x2_initial8.mp3", 2525459114, 258548704)
	Dialog.AddOption("Well, what choice do I have then?", "offer")
	Dialog.AddOption("Please forgive my foolish words sir. I am not strong enough to aid Freeport in this deed.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The militia has a task for you, citizen.  Will you accept the call to duty?")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/lieutenant_darrius.mp3", 913608800, 3646524676)
	Dialog.AddOption("That all depends on what the militia needs of me.", "Dialog15")
	Dialog.AddOption("I have found my purpose, Lieutenant. ")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This orcish officer has successfully eluded all attempts to destroy him in the past.  He knows the militia's tactics far too well, making his existence all the more threatening to our city.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x1_initial2.mp3", 672951317, 275331586)
	Dialog.AddOption("If the militia can't handle him, what makes you think I can?", "Dialog24")
	Dialog.AddOption("I can't help you.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Our intelligence spotted Ohrgran's scouts coming and going from the south.  We know an encampment of orc soldiers has set up camp in this area. It's only fitting that Ohrgran would return to man his post there.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x1_initial5.mp3", 968282769, 1875532246)
	Dialog.AddOption("Sounds simple enough.  What do I do when I've completed the task?", "Dialog23")
	Dialog.AddOption("How will the militia repay my services?", "Dialog6")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We believe the outpost is inside the Wailing Hill.  The superstitious ramblings of the past generations have inspired fear of the region.  This fear makes the caverns a secluded, tactical location.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x2_initial4.mp3", 160419880, 1935367161)
	Dialog.AddOption("Why can't the militia gather the intelligence on their own?", "Dialog2")
	Dialog.AddOption("What proof do you require?", "Dialog22")
	Dialog.AddOption("I believe those superstitious ramblings. I am to scared to hear any more.")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Those volunteers who fail in the task are obviously too weak to be among the Overlord's subjects.  Weeding out the weak from those worthy to survive is within our objective for success and prosperity.  Common sense would dictate no other conclusion.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutennatdarrius_x2_initial7.mp3", 1801715795, 2070313269)
	Dialog.AddOption("I will prove my strength.  Tell me, where is this supposed outpost located?", "Dialog12")
	Dialog.AddOption("What proof do you need from these volunteers?", "Dialog22")
	Dialog.AddOption("I cannot serve Freeport at this time.")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The militia needs citizens to gather intelligence on a possible orc outpost in the savannah.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x2_initial2.mp3", 1000165102, 2458404038)
	Dialog.AddOption("What sort of intelligence are you looking for?", "Dialog19")
	Dialog.AddOption("Where is this supposed outpost located?", "Dialog12")
	Dialog.AddOption("I am not strong enough to face an orc horde.")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Our intelligence recently located a known enemy of the city, a Bloodskull officer named Ohrgran Foulgore. This beast is said to have ties to Freeport. ")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x1_initial.mp3", 1917194156, 3170978291)
	Dialog.AddOption("Why doesn't the militia just capture him?", "Dialog10")
	Dialog.AddOption("I am not interested. ")
	Dialog.Start()
end



function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The militia has a task for you, citizen.  Will you accept the call to duty?")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/lieutenant_darrius.mp3", 913608800, 3646524676)
	Dialog.AddOption("Ohrgran is dead and here is your proof.", "Dialog5")
	Dialog.AddOption("I have found my purpose, Lieutenant. ")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Your greed and assumptions are insult enough.  Fortunately for you, it is not my duty to punish insults.  Now, either you volunteer for the job or begone from my sight.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x1_initial7.mp3", 1677237864, 1224240976)
	Dialog.AddOption("Well, I still don't know all the dangers.  Where is Ohrgran now?", "Dialog11")
	Dialog.AddOption("I'd rather not get involved in military affairs.  Good bye.")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Overlord requires concrete evidence of an established enemy stronghold in the hills before he orders an invasion.  The intelligence you gather will prove or discredit the belief of an organized orc presence in that area.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x2_initial3.mp3", 1630901125, 3610070085)
	Dialog.AddOption("Where is this supposed outpost located?", "Dialog12")
	Dialog.AddOption("Why can't the militia gather the intelligence?", "Dialog2")
	Dialog.AddOption("What proof do you require?", "Dialog22")
	Dialog.AddOption("I am afraid I cannot do this for Freeport.")
	Dialog.Start()
end

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Then you accept the task until Ohrgran's death or yours.  We expect your return as quickly as possible.  The militia does not tolerate unnecessary delays.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x1_accept.mp3", 2988261816, 2878118233)
	Dialog.AddOption("Orc blood will be spilled by my blade before the day is done.  ")
	Dialog.AddOption("Ohrgran's head will be yours in a matter of moments, of that you can be sure.")
	Dialog.Start()
end



function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It is suspected that arcane casters play a key role in this outpost.  Rumor is they are spiritkeepers. The militia expects no less than five scalps from any orcish spiritkeeper in that region to be presented from each volunteer before their duty is fulfilled.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x2_initial6.mp3", 2779768077, 1213781919)
	Dialog.AddOption("What's in it for me if I do volunteer?", "Dialog8")
	Dialog.AddOption("This task sounds simple enough.  I will bring you the scalps the Overlord requires.", "offer")
	Dialog.AddOption("I don't think I'm qualified for this mission, but I'll be sure to return when I'm better able to serve the Overlord.")
	Dialog.AddOption("Killing orcs doesn't sound all that exciting at the moment.  Good bye.")
	Dialog.Start()
end

function Dialog23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Nothing short of Ohrgran's head will prove the task's end.  What say you, citizen?  Are you a child fearful of death, or are you prepared to serve the city of Freeport?")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x1_initial6.mp3", 4028320081, 1334011396)
	Dialog.AddOption("I am prepared to accept this task.", "Dialog20")
	Dialog.AddOption("For Freeport and the Overlord, I accept this task.")
	Dialog.AddOption("Any excuse to spill orcish blood is a good excuse!", "Dialog20")
	Dialog.AddOption("I don't think I'm suited for this task.  Good bye.")
	Dialog.Start()
end

function Dialog24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ohrgran expects a military attack and would take flight before our soldiers invaded.  What he does not expect is a civilian strike.  Your tactics are unknown to him and your appearance would not alarm his scouts.")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x1_initial3.mp3", 318298659, 4239777889)
	Dialog.AddOption("How will the militia repay my services?", "Dialog6")
	Dialog.AddOption("Where is Ohrgran now?", "Dialog11")
	Dialog.AddOption("Find another citizen capable of performing such a deed.")
	Dialog.Start()
end

function Dialog25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The militia is looking for volunteers. Do you think yourself strong enough to meet our expectations?")
	Dialog.AddVoiceover("voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x2_initial.mp3", 1189892841, 4231062400)
	Dialog.AddOption("What do you need the volunteers for?", "Dialog14")
	Dialog.AddOption("I cannot volunteer at this time.")
	Dialog.Start()
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, InSearchofSpiritkeepers)
end    
