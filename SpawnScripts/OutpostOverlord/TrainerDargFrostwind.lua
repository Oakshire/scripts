--[[
	Script Name	: Trainer Darg Frostwind.lua
	Script Purpose	: Combat Trainer on Outpost of the Overlord
	Script Author	: Scatman (Updated by Cynnar 2018.09.23 11.32.10)
	Script Date	: 2008.09.07
	Script Notes	: 
--]]

--Quest ID's
local TheArtOfCombat = 363

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   if HasQuest(Spawn, 492) and GetQuestStep(Spawn, 492) == 3 then
      AddConversationOption(conversation, "Do you know anyone named Charles Arker? He's a very famous hero.", "CharlesArker")
   end
	  
   if HasCompletedQuest(Spawn, TheArtOfCombat) then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind001.mp3", "", "", 4099559600, 3648787893, Spawn)
      AddConversationOption(conversation, "What can you teach me about combat?", "LearnAboutCombat")
      StartConversation(conversation, NPC, Spawn, "Greetings, " .. GetName(Spawn) .. ". I've been stationed here at the outpost to teach new recruits the finer points of combat. After all, it's our duty to honor the Overlord by achieving legendary victories in his glorious name.")

   elseif HasQuest(Spawn, TheArtOfCombat) and GetQuestStep(Spawn, TheArtOfCombat) < 4 then
        if GetQuestStep(Spawn, TheArtOfCombat) == 1 then
           -- on the first step
           PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind001.mp3", "", "salute_freeport", 4099559600, 3648787893, Spawn)
           AddConversationOption(conversation, "What can you teach me about combat?", "LearnAboutCombat")
           StartConversation(conversation, NPC, Spawn, "Greetings, " .. GetName(Spawn) .. ". I've been stationed here at the outpost to teach new recruits the finer points of combat. After all, it's our duty to honor the Overlord by achieving legendary victories in his glorious name.")
        else
           if GetQuestStep(Spawn, TheArtOfCombat) == 3 then
		AddConversationOption(conversation, "I defeated one of the sparring partners.", "Victorious")
           end
           PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind_initial001.mp3", "", "", 3438807645, 3037995135, Spawn)
	   AddConversationOption(conversation, "Not yet, but I will soon.")
	   StartConversation(conversation, NPC, Spawn, "Have you defeated the sparring partner yet?")
        end
   else
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind001.mp3", "", "", 4099559600, 3648787893, Spawn)
      AddConversationOption(conversation, "What can you teach me about combat?", "LearnAboutCombat")
      StartConversation(conversation, NPC, Spawn, "Greetings, " .. GetName(Spawn) .. ". I've been stationed here at the outpost to teach new recruits the finer points of combat. After all, it's our duty to honor the Overlord by achieving legendary victories in his glorious name.")
   end
end

function Victorious(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   SetStepComplete(Spawn, TheArtOfCombat, 3)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind_quest001.mp3", "", "", 86781152, 1169988088, Spawn)
   AddConversationOption(conversation, "Is there anything else I can do?", "ReturnToTayil")
   StartConversation(conversation, NPC, Spawn, "Good. The stronger you are the more use you are to us.")
end

function ReturnToTayil(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind_quest002.mp3", "", "", 1230472892, 2272326902, Spawn)
   AddConversationOption(conversation, "I will go speak with her.")
   StartConversation(conversation, NPC, Spawn, "I'm sure of it! Go speak with Tayil N'Velex, she is just south of Sythor's Spire.")
end

function LearnAboutCombat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind_quest000.mp3", "", "nod", 2841640734, 3529617772, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "ChallengeFoe")
        if HasQuest(Spawn, TheArtOfCombat) then
           if GetQuestStep(Spawn, TheArtOfCombat) == 1 then
              SetStepComplete(Spawn, TheArtOfCombat, 1)
           end
 
	   AddConversationOption(conversation, "I will return victorious!")

        end
	StartConversation(conversation, NPC, Spawn, "Very well. The nearby sparring partners to my left are all looking to fight. They may hurt you, but they won't kill you. Return to me once you've bested one of them in combat.")
end

function ChallengeFoe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind003.mp3", "", "", 351947717, 288851730, Spawn)
	AddConversationOption(conversation, "How do I begin the battle?", "BeginBattle")
	StartConversation(conversation, NPC, Spawn, "Starting combat is easy. Just use your mouse pointer to left-click on an opponent. Its name will appear in the Target window in the upper left of your screen. You can also use the Tab key to cycle through nearby targets or the F8 key to select your closest enemy.")
end

function BeginBattle(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind004.mp3", "", "", 898388945, 3212674311, Spawn)
	AddConversationOption(conversation, "So I can fight anyone or anything I want?", "FightAnything")
	StartConversation(conversation, NPC, Spawn, "If you're close enough to your foe and want to start hitting it with your weapon, either click your Melee Attack button on your hotbar or press the ~ key. Or you can begin by using one of your spells or combat arts to get the enemy's attention. Remember, you must be close enough to actually hit them.")
end

function FightAnything(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind005.mp3", "", "", 316074774, 2036579965, Spawn)
	AddConversationOption(conversation, "Tell me about melee combat.", "MeleeCombat")
	AddConversationOption(conversation, "Tell me about ranged combat.", "RangeCombat")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?", "CombatRewards")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "AspectsOfCombat")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can fight most non-player characters and creatures that you find outside your city, whether outdoors or in dungeons. Many non-player characters in the cities are there to help or give you quests, so you can't attack some of them. If you try, you'll get a message telling you that they aren't valid targets.")
end

function MeleeCombat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind006.mp3", "", "", 589533624, 3601190139, Spawn)
	AddConversationOption(conversation, "What classes specialize in melee combat?", "MeleeClasses")
	StartConversation(conversation, NPC, Spawn, "Melee combat means a toe-to-toe, physical confrontation. It is a combination of auto-attack damage that happens automatically when you press the Melee Attack button on your hotbar or the ~ key and spells or combat arts that you use in close proximity to your foe.")
end

function MeleeClasses(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind007.mp3", "", "", 2775277419, 241586674, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "BeginBattle")
	AddConversationOption(conversation, "Tell me about ranged combat.", "RangeCombat")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?", "CombatRewards")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "AspectsOfCombat")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Sturdy fighters such as Guardians, Berserkers, Monks, and Paladins stand at the front lines of battle facing the enemy. Crafty scouts such as Swashbucklers, Rangers, Troubadors, and Dirges generally stay close to their foes as well, but prefer to launch attacks from the back or side where they are less likely to be counterattacked.")
end

function RangeCombat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind008.mp3", "", "", 2757586190, 3183393393, Spawn)
	AddConversationOption(conversation, "How do I launch a ranged attack?", "BeginRangedCombat")
	StartConversation(conversation, NPC, Spawn, "Ranged combat means that you put some distance between yourself and the enemy. This can be done with weapons such as bows or throwing daggers, or with spells and arts that can be cast from a distance.")
end

function BeginRangedCombat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind009.mp3", "", "", 714558264, 1505806898, Spawn)
	AddConversationOption(conversation, "What classes specialize in ranged combat?", "RangeClasses")
	StartConversation(conversation, NPC, Spawn, "If you have a ranged weapon and ammunition, you can initiate ranged combat by using the Ranged Attack button on the Abilities tab of your Knowledge Book. You can drag this key to your hotbar if you like. Remember, you must have a ranged weapon in the Ranged slot of your inventory window and the correct type of ammunition in the Ammo slot.")
end

function RangeClasses(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind010.mp3", "", "", 3793580571, 76138183, Spawn)
	AddConversationOption(conversation, "How do I tell if I can use spells or arts from a distance?", "SpellsOrArtsAtDistance")
	StartConversation(conversation, NPC, Spawn, "While most classes have the ability to attack from a distance, scout classes such as Swashbucklers, Troubadors, Dirges, and particularly Rangers specialize in ranged physical attacks. Mages, priests, and paladins have spells that do damage to their foes from a distance.")
end

function SpellsOrArtsAtDistance(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind011.mp3", "", "", 836156120, 3927966266, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "BeginFight")
	AddConversationOption(conversation, "Tell me about melee combat.", "MeleeCombat")
	AddConversationOption(conversation, "What kind of rewards can I earn in battle?", "CombatRewards")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "AspectsOfCombat")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You can right-click on a spell or art's icon and select 'Examine' to see what its range of effect is. In addition, if you target something and the icon for one of your spells or arts turns a dark red, that means the opponent is out of range of that ability.")
end

function CombatRewards(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind012.mp3", "", "", 3227230541, 1094360763, Spawn)
	AddConversationOption(conversation, "What do you mean by 'a worthy opponent'?", "WorthyOpponent")
	StartConversation(conversation, NPC, Spawn, "Victory in battle can be very rewarding. Successful combat against a worthy opponent awards you experience (XP) to help you advance your level, as well as the chance at coin, usable items, and other valuables.")
end

function WorthyOpponent(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind013.mp3", "", "", 4205213467, 4000330517, Spawn)
	AddConversationOption(conversation, "Are certain types of targets more rewarding than others?", "MoreRewarding")
	StartConversation(conversation, NPC, Spawn, "You don't earn rewards for defeating foes that are too far below your level. If your target has a grey name, it means it is very weak and won't provide any benefit for beating it. Talk to Trainer Anna Winston for more information on evaluating your opponents.")
end

function MoreRewarding(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind014.mp3", "", "", 2594073574, 99097516, Spawn)
	AddConversationOption(conversation, "Tell me how to begin a fight.", "BeginFight")
	AddConversationOption(conversation, "Tell me about melee combat.", "MeleeCombat")
	AddConversationOption(conversation, "Tell me about ranged combat.", "RangeCombat")
	AddConversationOption(conversation, "Teach me more advanced aspects of combat.", "AspectsOfCombat")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "The tougher a foe, the better its chances to provide a valuable reward. Though defeating enemies alone provides nice rewards, defeating heroic enemies that require a group is even more rewarding. The very best items come from banding together multiple groups to defeat epic opponents.")
end

function AspectsOfCombat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind015.mp3", "", "", 1380380758, 346612034, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "RightOpponent")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.", "KnowSurroundings")
	AddConversationOption(conversation, "Tell me about using my abilities.", "UsingAbilities")
	AddConversationOption(conversation, "Teach me the basics of combat.", "CombatBasics")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You'll learn many advanced combat techniques over time. There's no substitute for experience," .. GetName(Spawn) .. ". I'd be happy to discuss a few of these advanced aspects, such as selecting the right opponent, knowing your surroundings, and using your abilities.")
end

function RightOpponent(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind016.mp3", "", "", 4103736528, 1424079812, Spawn)
	AddConversationOption(conversation, "How do I tell if an opponent is too weak or too strong for me?", "WeakStrongOpponent")
	StartConversation(conversation, NPC, Spawn, "Picking the right fight is crucial to victory. A weak opponent won't provide worthwhile rewards, while an overly powerful foe will result in your defeat. You need to keep your resources in mind as well as choosing the right target.")
end

function WeakStrongOpponent(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind017.mp3", "", "", 1757690835, 3459787443, Spawn)
	AddConversationOption(conversation, "What resources should I be keeping an eye on?", "WatchResources")
	StartConversation(conversation, NPC, Spawn, "Targeting an opponent will show you detailed information on its overall potency. Generally speaking, you'll find the best results from fighting opponents with blue, white, or yellow names. Talk to Trainer Marla Gilliam for more information on evaluating your opponents.")
end

function WatchResources(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind018.mp3", "", "", 3585763044, 1432114558, Spawn)
	AddConversationOption(conversation, "Teach me about knowing my surroundings.", "KnowSurroundings")
	AddConversationOption(conversation, "Tell me about using my abilities.", "UsingAbilities")
	AddConversationOption(conversation, "Teach me the basics of combat.", "CombatBasics")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Starting a fight when you are low on health or power is a very bad idea. Your choice of targets also depends on whether you're alone or grouped with other players. Forming a group allows you to take on tougher and more rewarding challenges than you could face alone.")
end

function KnowSurroundings(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind019.mp3", "", "", 1548792480, 2310924503, Spawn)
	AddConversationOption(conversation, "Anything else I should watch out for?", "AnythingElse")
	StartConversation(conversation, NPC, Spawn, "Keeping your surroundings in mind is crucial to victory. Fighting in areas with lots of aggressive creatures is a bad idea, because they won't hesitate to gang up on you.")
end

function AnythingElse(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind020.mp3", "", "", 1299871364, 2128759102, Spawn)
	AddConversationOption(conversation, "Any other tips?", "OtherTips")
	StartConversation(conversation, NPC, Spawn, "Staying too long on the exact spot where you just defeated a foe can be dangerous. Another enemy is likely to show up there soon after, which can be an unpleasant surprise if you're already in another battle.")
end

function OtherTips(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind021.mp3", "", "", 1741681732, 1086303848, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "RightOpponent")
	AddConversationOption(conversation, "Tell me about using my abilities.", "UsingAbilities")
	AddConversationOption(conversation, "Teach me the basics of combat.", "CombatBasics")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "You should be aware of what's going on around you. Using your mouse wheel to scroll into third person and holding down the left mouse button allows you to move the camera around your character. It's a good idea to do this when fighting in dangerous areas to make sure nothing sneaks up on you.")
end

function UsingAbilities(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind022.mp3", "", "", 16477562, 1573877371, Spawn)
	AddConversationOption(conversation, "What do you mean?", "ExplainFurther")
	StartConversation(conversation, NPC, Spawn, "Successful fighting isn't about turning on your auto-attack and walking away from battle. Your odds of victory are much better if you prepare well and are active during combat. You should be using every spell or combat art that has a positive effect on your chances to win.")
end

function ExplainFurther(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind023.mp3", "", "", 771045837, 1953428673, Spawn)
	AddConversationOption(conversation, "What about during battle?", "AbilitiesDuringBattle")
	StartConversation(conversation, NPC, Spawn, "Before you begin fighting, make sure you and your allies have activated all beneficial spells, also known as 'buffs', so that you're operating at peak efficiency. Buffs can add health or power, increase your rate of regeneration, enhance your physical attributes, make you attack faster or do more damage, and more.")
end

function AbilitiesDuringBattle(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind024.mp3", "", "", 2163337564, 124850201, Spawn)
	AddConversationOption(conversation, "What else should I know about spells and arts?", "MoreSpellsAndArts")
	StartConversation(conversation, NPC, Spawn, "Whether you're a front-lines melee type or someone attacking from a distance with weapons or spells, you should be using abilities that damage your foes effectively and efficiently. Right click on your spells and arts and select " .. [["Examine"]] .. " to see details on their effects.")
end

function MoreSpellsAndArts(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind025.mp3", "", "", 244808971, 2377115174, Spawn)
	AddConversationOption(conversation, "Tell me about selecting the right opponent.", "RightOpponent")
	AddConversationOption(conversation, "Teach me about knowing my surroundings.", "KnowSurroundings")
	AddConversationOption(conversation, "Teach me the basics of combat.", "CombatBasics")
	AddConversationOption(conversation, "I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Using your highest-level versions of spells and arts will be more effective than using older versions. In addition, you should be upgrading your abilities to higher ranks to make them more effective. For more details on spells and combat arts, talk to Trainer Sythor the All-Seeing in the tower at the center of the outpost.")
end

-- Charles Arker
function CharlesArker(NPC, Spawn)
	SetStepComplete(Spawn, 492, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/trainer_darg_frostwind/tutorial_island02_evil_revamp/trainers/combat/darg_frostwind026.mp3", "", "", 582138351, 1217482106, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "I've trained the greatest champions on this island. I've never heard of anyone by that name.")
end
