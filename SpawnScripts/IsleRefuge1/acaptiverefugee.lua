--[[
    Script Name    : SpawnScripts/IsleRefuge1/acaptiverefugee.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.08 03:09:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MoodCheck(NPC)
end

function hailed(NPC, Spawn)
FaceTarget(NPC,Spawn)
Speak(NPC,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function MoodCheck(NPC)
    moodchoice = MakeRandomInt(1,3)
    if moodchoice == 1 then
        SpawnSet(NPC,"mood_state",11851) --afraid
    elseif moodchoice == 2 then
        SpawnSet(NPC,"mood_state",11852) --angry
    elseif moodchoice == 3 then
        SpawnSet(NPC,"mood_state",11856) --sad
    end
end

function Speak(NPC,Spawn)
    if GetRace(NPC)==5 then -- Gnome
 	PlayFlavor(NPC, "voiceover/english/a_captured_refugee/tutorial_island02/003_gnome_refugee_hail1_d59b2e5d.mp3", "Thank the makers you've come along!  These goblins have been tormenting us for hours!", "thanks", 290907476, 932956012,Spawn)
    elseif GetRace(NPC)==8 then --Highelf
        choice = MakeRandomInt(1,2)
        if choice==1 then
        PlayFlavor(NPC, "voiceover/english/a_captured_refugee/tutorial_island02/003_highelf_refugee_hail1_7fc3cad0.mp3", "Go about your business fellow refugee.  I've got these goblins right where I want them.", "hello", 1080881647, 291476526,Spawn)
        else
 	    PlayFlavor(NPC, "", "Your help is appreciated.  Were it only that all of the refugees stranded on this Isle were as skilled as you.", "nod", 0, 0,Spawn)
        end
    elseif GetRace(NPC)==9 then --Human
        choice = MakeRandomInt(1,2)
        if choice==1 then
 	    PlayFlavor(NPC, "voiceover/english/a_captured_refugee/tutorial_island02/003_human_refugee_hail2_72457d89.mp3", "I've never seen a goblin before.  Are they always this...umm...excitable?", "confused", 3599089715, 3189955253,Spawn)
        else
 	    PlayFlavor(NPC, "", "You're timing is excellent stranger.  I thought I was going to have to find my own way out of this.", "thanks", 0, 0,Spawn)
        end
    elseif GetRace(NPC)==11 then --Kerra
    	PlayFlavor(NPC, "voiceover/english/a_captured_refugee/tutorial_island02/004_kerran_refugee_hail2_a8d13011.mp3", "Thank goodness you found us.  These goblins may not be bright but they have us at an advantage in numbers.", "thanks", 1996349290, 3249018436,Spawn)
    elseif GetRace(NPC)==13 then --Ratonga
 	    PlayFlavor(NPC, "voiceover/english/a_captured_refugee/tutorial_island02/003_ratonga_refugee_hail2_f6cdb005.mp3", "First a Drakota, and now this!  Why do the old gods hate me so?", "scream", 3567711464, 78154507,Spawn)
    elseif GetRace(NPC)==15 then --Woodelf
        choice = MakeRandomInt(1,2)
        if choice==1 then
 	    PlayFlavor(NPC, "voiceover/english/a_captured_refugee/tutorial_island02/003_woodelf_refugee_hail1_665582a4.mp3", "Please don't hurt them!  These poor goblins are only acting out of fear.", "beg", 1038403057, 372639812,Spawn)
        else
 	    PlayFlavor(NPC, "voiceover/english/a_captured_refugee/tutorial_island02/003_woodelf_refugee_hail2_19c22530.mp3", "Thanks for nothing you bully!  How would you like it if a bunch of scary men with swords invaded your island?", "shame", 3030530877, 3849447082,Spawn)
        end
    end
end