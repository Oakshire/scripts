--[[
    Script Name    : SpawnScripts/Starcrest/AlamaraLuthanyia.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.28 04:06:31
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog9(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As my concentration is disrupted, I will give you the answers you seek.  Arcanic Combat is the use of magic in the combative arts. It is an age-old discipline passed down from the Ashen Order to the peoples of Freeport and Qeynos.  The monastery in the Elddar Grove is the primary keeper of this discipline.")
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_001.mp3", 206047356, 1936934552)
    PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
	Dialog.AddOption("What is the Ashen Order?","Dialog10")
	Dialog.AddOption("Are only monks capable of using Arcanic Combat?", "Dialog11")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Ashen Order did not present the history of the discipline when they granted it to the people of the world.  I believe that this is their secret to covet and one that we must trust to their care.")
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_009.mp3", 1242445871, 3305867622)
	Dialog.AddOption("Do you think it wise to use arts then?", "Dialog7")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Location of their monastery remains a secret.  Some believe that they exist beyond this world, but all is speculation.  The Ashen Order's secrets are their own.")
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_007.mp3", 603803740, 3959452753)
    PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	Dialog.AddOption("Where did they get the knowledge of Arcanic Combat?", "Dialog2")
	Dialog.AddOption("Who uses Arcane Combat now?", "Dialog11")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Although the Ashen Order did not directly involve themselves in the conflicts of war, they presented the still free people of the world the Arcanic Arts.  Through training and usage of the Arcanic Arts, the overwhelmed forces of Qeynos and Freeport were able to stand strong against the Rallosian armies.")
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_011.mp3", 953226564, 2054374424)
	Dialog.AddOption("Who are the Ashen Order?","Dialog10")
	Dialog.AddOption("Where did they get the knowledge of Arcanic Combat?", "Dialog2")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("When the Rallosian armies were defeated, the Ashen Order returned to their solitude.  We are not certain where they have retreated. Most people respect the privacy of the Order and leave them in peace. Should the Ashen Order wish to return to the affairs of the world, they shall.")
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_006.mp3", 1578722475, 504331045)
	Dialog.AddOption("Where do they go?", "Dialog3")
	Dialog.AddOption("Where did they get the knowledge of Arcanic Combat?", "Dialog2")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The corruption of the city and imbalance of the world had disrupted their neutral and passive ways.  They retreated into perfect solitude.  Two centuries passed before they returned with the knowledge of Arcanic Combat.")
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_003.mp3", 1108677104, 3869422611)
	Dialog.AddOption("Why did they return?", "Dialog8")
	Dialog.AddOption("Where did they go?", "Dialog3")
	Dialog.AddOption("Where did they get the knowledge?", "Dialog2")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If the Ashen Order had not descended upon the peoples of the world in their time of need, we would not be here.  Their motivations are those of neutrality and the maintenance of balance; they are neither villains nor heroes of this world.  Distrust of the Arcanic Combats in the modern world is unnecessary.  It would be wasteful not to use Arcanic Combative arts.")
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_010.mp3", 1966446226, 2358274907)
	Dialog.AddOption("Who are the Ashen Order?", "Dialog10")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("They returned to aid the people of Freeport and Qeynos in the war against the Rallosian Empire.  If it had not been for them, the entire world would have fallen to the ruin of war.")
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_004.mp3", 3794261316, 2216875555)
	Dialog.AddOption("Why did they choose to help?  Why not stay in solitude?", "Dialog12")
	Dialog.AddOption("How did the Ashen Order help defeat the Rallosian Empire?", "Dialog4")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Mediating in the villages is so difficult.  I shall be an elder by the time I'm ready to begin my tutelage in the Arcanic Combat.")
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_000.mp3", 1291419177, 3404820479)
	Dialog.AddOption("What is Arcanic Combat?", "Dialog1")
	Dialog.AddOption("I'm sorry, I didn't mean to disturb you.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("During the Age of Turmoil, the Ashen Order was a society of monks dedicated to the perfection of combative discipline and grace.  They left the city of Freeport when Lucan D`Lere ascended to power.")
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_002.mp3", 2181166309, 4221362425)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Why did they leave Freeport?", "Dialog6")
	Dialog.AddOption("Where did they go?", "Dialog3")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All modern combative disciplines are forms of Arcanic Combat.  The Ashen Order was remarkable in the adaptation of this art.  This art form allows the combatant to tap into arcane forces in order to strengthen their feats.  The usage of Arcanic Combat is no great mystery, nor is it a rarity in this modern world.")
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_008.mp3", 297219597, 1060767230)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Where did they get the knowledge of Arcanic Combat?", "Dialog2")
	Dialog.AddOption("Who are the Ashen Order?", "Dialog10")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I do not presume to know their motives, but I believe that their dedication to neutrality and balance spurred them to this decision.  They realized the irreversible devastation that would have occured, had the Rallosian armies been victorious.")
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/alamara_luthanyia/qey_village02/lore_alamara_005.mp3", 1650733242, 4263904828)
	Dialog.AddOption("Where is the Ashen Order now?", "Dialog5")
	Dialog.AddOption("I'll leave you to your meditations now.")
	Dialog.Start()
end

