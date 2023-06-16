--[[
    Script Name    : Quests/Hallmark/path_of_the_shaman.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.19 05:11:32
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must subdue the first spirit.", 1, 100, "I must venture into the house in South Qeynos, located among the middle row of buildings, and subdue the spirits within.", 11, 2140028)
	AddQuestStepKill(Quest, 2, "I must subdue the second spirit.", 1, 100, "I must venture into the house in South Qeynos, located among the middle row of buildings, and subdue the spirits within.", 11, 2140029)
	AddQuestStepKill(Quest, 3, "I must subdue the third spirit.", 1, 100, "I must venture into the house in South Qeynos, located among the middle row of buildings, and subdue the spirits within.", 11, 2140027)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Then you must travel to the Southern part of the city where a home has reportedly become a site of restless spirits. Use the skills you have gained to unshackle them from this world and you will have proven yourself as a shaman.  There will be no need to return to me, but be wary, spirits have powers even they can fathom.")
--	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad030.mp3", 110213528, 850594761)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("Thank you, Aldalad. I will pass this trial." )	
	Dialog.Start()  
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have subdued the first spirit.")
 QuestCheck(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have subdued the second spirit.")
 QuestCheck(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have subdued the third spirit.")
 QuestCheck(Quest, QuestGiver, Player)
end	
	
	
function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5776,1) and QuestStepIsComplete(Player,5776,2) and QuestStepIsComplete(Player,5776,3) then
    UpdateQuestTaskGroupDescription(Quest, 1, "I have ventured into the house in South Qeynos and subdued the spirits within.")
	if GetClass(Player)== 11 then
	SetAdventureClass(Player,18)
    SendMessage(Player, "Congratulations! You are a Shaman.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Shaman.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)

   local level = GetLevel(Player)*5


--WEAPON SKILLS
if not HasSkill(Player, 2463145248) then -- Inspirations
    AddSkill(Player, 2463145248,1,level)
    SendMessage(Player, "You have learned the Inspirations skill")
end
if not HasSkill(Player, 3343700951) then -- Talismans/Shaman
    AddSkill(Player, 3343700951,1,level)
    SendMessage(Player, "You have learned the Talismans skill")
end
if not HasSkill(Player, 3421494576) then -- Crushing
    AddSkill(Player, 3421494576,1,level)
    SendMessage(Player, "You have learned the Crushing skill")
end
if not HasSkill(Player, 3048574950) then -- Piercing
    AddSkill(Player, 3048574950,1,level)
    SendMessage(Player,  "You have learned the Piercing skill")
end
--CASTING SKILLS
if not HasSkill(Player, 613995491) then -- Disruption
    AddSkill(Player, 613995491,1,level)
    SendMessage(Player, "You have learned the Disruption skill")
end
if not HasSkill(Player, 366253016) then -- Ministration
    AddSkill(Player, 366253016,1,level)
    SendMessage(Player, "You have learned the Ministration skill")
end
if not HasSkill(Player, 3587918036) then -- Ordination
    AddSkill(Player, 3587918036,1,level)
    SendMessage(Player, "You have learned the Ordination skill")
end
if not HasSkill(Player, 882983852) then -- Subjugation
    AddSkill(Player, 882983852,1,level)
    SendMessage(Player, "You have learned the Subjugation skill")
end
if not HasSkill(Player, 2638198038) then -- Focus
    AddSkill(Player, 2638198038,1,level)
    SendMessage(Player, "You have learned the Focus skill")
end

--WEAPON SKILLS
if not HasSkill(Player, 4037812502) then -- Buckler
    AddSkill(Player, 4037812502,1,level)
    SendMessage(Player, "You are now more proficient with a Buckler")
end
if not HasSkill(Player, 770311065) then -- Mace
    AddSkill(Player, 770311065,1,level)
    SendMessage(Player, "You are now more proficient with a Mace")
end
if not HasSkill(Player, 1616998748) then -- Spear
    AddSkill(Player, 1616998748,1,level)
    SendMessage(Player, "You are now more proficient with a Spear")
end
if not HasSkill(Player, 554333641) then -- Hammer
    AddSkill(Player, 554333641,1,level)
    SendMessage(Player, "You are now more proficient with a Hammer")
end
if not HasSkill(Player, 1653482350) then -- Great Hammer
    AddSkill(Player, 1653482350,1,level)
    SendMessage(Player, "You are now more proficient with a Great Hammer")
end
if not HasSkill(Player, 3180399725) then -- Staff(2h)
    AddSkill(Player, 3180399725,1,level)
   SendMessage(Player, "You are now more proficient with a Staff")
end
--REMOVE SKILLS
-- Remove Fighter
if HasSkill(Player, 1408356869) then -- Martial/Fighter
    RemoveSkill(Player, 1408356869)
end
if HasSkill(Player, 1124719197) then -- Tactics/Warrior
    RemoveSkill(Player, 1124719197)
end
if HasSkill(Player, 433335062) then -- Berserk/Berserker
    RemoveSkill(Player, 433335062)
end
if HasSkill(Player, 1209716810) then -- Protection/Guardian
    RemoveSkill(Player, 1209716810)
end
if HasSkill(Player, 3856706740) then -- Brawl/Brawling
    RemoveSkill(Player, 3856706740)
end
if HasSkill(Player, 2011726342) then -- Tranquility/Monk
    RemoveSkill(Player, 2011726342)
end
if HasSkill(Player, 3067436248) then -- Physicality/Bruiser
    RemoveSkill(Player, 3067436248)
end
if HasSkill(Player, 3809066846) then -- Faith/Crusader
    RemoveSkill(Player, 3809066846)
end
if HasSkill(Player, 90523872) then -- Determined Faith/Paladin
    RemoveSkill(Player, 90523872)
end
if HasSkill(Player, 2741805322) then -- Determined Zeal/Shadowknight
    RemoveSkill(Player, 2741805322)
end

--Remove Scout
if HasSkill(Player, 1921433074) then -- Reconnaissance/Scout
    RemoveSkill(Player, 1921433074)
end
if HasSkill(Player, 1311635100) then -- Melodies/Bard
    RemoveSkill(Player, 1311635100)
end
if HasSkill(Player, 296246391) then -- Ballads/Troubador
    RemoveSkill(Player, 296246391)
end
if HasSkill(Player, 340921594) then -- Dirges/Dirge
    RemoveSkill(Player, 340921594)
end
if HasSkill(Player, 1514256692) then -- Skulldugery/Rogue
    RemoveSkill(Player, 1514256692)
end
if HasSkill(Player, 3167106577) then -- Stalking/Predator
    RemoveSkill(Player, 3167106577)
end
if HasSkill(Player, 2663054519) then -- Swashbuckling/Swashbuckler
    RemoveSkill(Player, 2663054519)
end
if HasSkill(Player, 1519965519) then -- Banditry/Brigand
    RemoveSkill(Player, 1519965519)
end
if HasSkill(Player, 1400160844) then -- Archery/Ranger
    RemoveSkill(Player, 1400160844)
end
if HasSkill(Player, 2711101135) then -- Assassination/Assassin
    RemoveSkill(Player, 2711101135)
end

--Removed Priest
if HasSkill(Player, 3341842907) then -- Theurgy/Cleric
    RemoveSkill(Player, 3341842907)
end
if HasSkill(Player, 2581053277) then -- Regimens/Templar
    RemoveSkill(Player, 2581053277)
end
if HasSkill(Player, 1829443087) then -- Inquisitions/Inquisitor
    RemoveSkill(Player, 1829443087)
end
if HasSkill(Player, 3282420779) then -- Archegenesis/Druid
    RemoveSkill(Player, 3282420779)
end
if HasSkill(Player, 1624274802) then -- Nature's Reckoning/Fury
    RemoveSkill(Player, 1624274802)
end
if HasSkill(Player, 1040683335) then -- Nature's Refuge/Warden
    RemoveSkill(Player, 1040683335)
end
if HasSkill(Player, 3467160477) then -- Fetichisms/Mystic
    RemoveSkill(Player, 3467160477)
end
if HasSkill(Player, 3191839982) then -- Vehemence/Defiler
    RemoveSkill(Player, 3191839982)
end

--Remove Mage
if HasSkill(Player, 3820670534) then -- Evocations/Mage
    RemoveSkill(Player, 3820670534)
end
if HasSkill(Player, 287643040) then -- Enchantments/Enchanter
    RemoveSkill(Player, 287643040)
end
if HasSkill(Player, 2898101972) then -- Hallucinations/Illusionist
    RemoveSkill(Player, 2898101972)
end
if HasSkill(Player, 2950599749) then -- Protean/Coecerer
    RemoveSkill(Player, 2950599749)
end
if HasSkill(Player, 2533124061) then -- Sorcery/Sorcerer
    RemoveSkill(Player, 2533124061)
end
if HasSkill(Player, 2662430630) then -- Elemental Mastery/Wizard
    RemoveSkill(Player, 2662430630)
end
if HasSkill(Player, 193411854) then -- Noctivagance/Warlock
    RemoveSkill(Player, 193411854)
end
if HasSkill(Player, 2120065377) then -- Legerdemain/Summoner
    RemoveSkill(Player, 2120065377)
end
if HasSkill(Player, 2042842194) then -- Conjurations/Conjurer
    RemoveSkill(Player, 2042842194)
end
if HasSkill(Player, 289471519) then -- Sepulchers/Necromancer
    RemoveSkill(Player, 289471519)
end

--REMOVE WEAPON
if HasSkill(Player, 2246237129) then -- Medium Armor
    RemoveSkill(Player, 2246237129)
end
if HasSkill(Player, 241174330) then -- Heavy Armor
    RemoveSkill(Player, 241174330)
end
if HasSkill(Player, 3177806075) then -- Fists
    RemoveSkill(Player, 3177806075)
end
if HasSkill(Player, 2292577688) then -- Great Sword
    RemoveSkill(Player, 2292577688)
end
if HasSkill(Player, 2954459351) then -- Great Axe
    RemoveSkill(Player, 2954459351)
end
if HasSkill(Player, 1653482350) then -- Great Spear
    RemoveSkill(Player, 1653482350)
end
if HasSkill(Player, 3173504370) then -- Round Shield
    RemoveSkill(Player, 3173504370)
end
if HasSkill(Player, 2608320658) then -- Kite Shield
    RemoveSkill(Player, 2608320658)
end
if HasSkill(Player, 570458645) then -- Tower Shield
    RemoveSkill(Player, 570458645)
end
if  HasSkill(Player, 545043066) then -- Symbol
    RemoveSkill(Player, 545043066)
end
end
	UpdateQuestDescription(Quest, "The spirits I encountered proved quite spiteful, obviously intent on destroying all life around them.  Perhaps their souls were unable to find peace. Even so, after my trial I proved that I am worthy to be a shaman.")
	GiveQuestReward(Quest, Player)
end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
