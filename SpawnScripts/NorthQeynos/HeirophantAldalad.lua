--[[
    Script Name    : SpawnScripts/NorthQeynos/HeirophantAldalad.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.27 05:10:49
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad000.mp3", 1851949262, 3385195061)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("Thank you for your blessing.  I wish you a good day as well, Hierophant")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

--[[(1117833299)[Fri Jun 03 17:14:59 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?"
(1117833300)[Fri Jun 03 17:15:00 2005] You say to Hierophant Aldalad,"Your faith seems to buoy you, Hierophant.  I wish to be as filled as you!"
(1117833300)[Fri Jun 03 17:15:00 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"It warms my heart to hear you say that.  Norrath has seen so much tragedy, but here in Qeynos, our spirits have never been shattered. I believe it is our faith that preserves us."
(1117833303)[Fri Jun 03 17:15:03 2005] You say to Hierophant Aldalad,"I wish you would teach me more about such faith."
(1117833304)[Fri Jun 03 17:15:04 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"The lessons of faith are often hidden at first, and the path obscured.  A priest such as myself may give direction, but you are the one who must make the journey.  And even the longest journey begins with a single first step."
(1117833305)[Fri Jun 03 17:15:05 2005] You say to Hierophant Aldalad,"This is true, but what journey would you have me make?"
(1117833305)[Fri Jun 03 17:15:05 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"A journey to bring comfort and reassurance to these troubled times.There is much despair in this world, for many believe the gods have turned their backs to us.  Certain clerics tell us that we are merely being tested in this age, or that we are paying for transgressions in our collective past."
(1117833305)[Fri Jun 03 17:15:05 2005] You say to Hierophant Aldalad,"There is some disagreement about spiritual matters.  But what of clerical magic?  From where do we draw our healing abilities, if not from the gods?"
(1117833306)[Fri Jun 03 17:15:06 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Aye, healing abilities come from the gods.  You may believe that, my child.  And when you have faith, you can heal even the most grievous of injuries and illnesses.  It is my hope that you will seek out those in need of healing, and use your gifts to restore them."
(1117833307)[Fri Jun 03 17:15:07 2005] You say to Hierophant Aldalad,"Is that the journey you would have me make?"
(1117833307)[Fri Jun 03 17:15:07 2005] Your quest journal has been updated.
(1117833307)[Fri Jun 03 17:15:07 2005] You gain experience!
(1117833307)[Fri Jun 03 17:15:07 2005] Your quest journal has been updated.
(1117833307)[Fri Jun 03 17:15:07 2005] Your quest journal has been updated.
(1117833307)[Fri Jun 03 17:15:07 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Such devotion would make me glad indeed!  Take your special healing gifts to the people and restore their faith!  People are suffering right here in Qeynos.  To begin your work, seek out a fletcher named Armsdealer Nightbow in the Elddar, and the carpenter Jorgie Icearmor down by the harbor.  One is wounded; the other is ill.  Heal them, and return to me."
(1117833308)[Fri Jun 03 17:15:08 2005] You say to Hierophant Aldalad,"A fletcher is someone who makes bows and arrows, right? I'll find Nightbow and Jorgie, and heal them right away."
(1117833314)[Fri Jun 03 17:15:14 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?"


(1117892072)[Sat Jun 04 09:34:32 2005] You say to Hierophant Aldalad,"I have cured them both. One was stubborn; the other was a bit stupid ... and disgusting."
(1117892072)[Sat Jun 04 09:34:32 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Do not be so quick to criticize.  We must be compassionate and caring toward others.  This is how we strengthen faith in Qeynos – by bearing witness and healing. "
(1117892073)[Sat Jun 04 09:34:33 2005] You say to Hierophant Aldalad,"A heavy mace upside the head is also pretty effective."
(1117892074)[Sat Jun 04 09:34:34 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Goodness, child!  Where did you learn such talk?  I see you will need much more spiritual instruction.  You are not yet ready to touch the Gray Fields."
(1117892075)[Sat Jun 04 09:34:35 2005] You say to Hierophant Aldalad,"The Gray Fields?  What's that?"
(1117892075)[Sat Jun 04 09:34:35 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"You have many gifts, but they are undeveloped.  Are you familiar with our shamanic traditions?  A shaman communes with spirits to touch the Gray Fields -- the land between mortality and eternity.  Spirits act as guides.  But a shaman must beware, for not all spirits are good.  There are dark entities who prey upon the living."
(1117892075)[Sat Jun 04 09:34:35 2005] You say to Hierophant Aldalad,"This sounds interesting!  How may I learn more?"
(1117892076)[Sat Jun 04 09:34:36 2005] Your quest journal has been updated.
(1117892076)[Sat Jun 04 09:34:36 2005] Your quest journal has been updated.
(1117892076)[Sat Jun 04 09:34:36 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Travel to the Oakmyst Forest, and you will see some of these errant spirits.  But do not try to communicate with them!  Dispatch five of them, and send them back to the dark realms from whence they came.  Then return to me."
(1117892076)[Sat Jun 04 09:34:36 2005] You say to Hierophant Aldalad,"That sounds clear enough.  I'll enjoy ridding Norrath of a few evil spirits."


(1117901916)[Sat Jun 04 12:18:36 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?"
(1117901917)[Sat Jun 04 12:18:37 2005] You say to Hierophant Aldalad,"I've whittled the Carnivorous Slug population down a bit."
(1117901917)[Sat Jun 04 12:18:37 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"For now you have, but only time will tell.  The druid understands that no matter what is done by mortal hands, nature has the final say.  Learn to respect the world and the world will offer back that same respect in the way of granted powers.  Now it is time for you to take what you have learned and apply it to your own life."
(1117901919)[Sat Jun 04 12:18:39 2005] You say to Hierophant Aldalad,"What do you mean by that?"
(1117901919)[Sat Jun 04 12:18:39 2005] Your quest journal has been updated.
(1117901919)[Sat Jun 04 12:18:39 2005] Your quest journal has been updated.
(1117901919)[Sat Jun 04 12:18:39 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"I want you to go out to into the world and let your heart guide you.  Some of those who help defend Qeynos from danger have found themselves in some of their own.  Use the faith within you to help them prevail today.  I will write in your journal where you can find these brave men and women.  Come back when they are safe."
(1117901920)[Sat Jun 04 12:18:40 2005] You say to Hierophant Aldalad,"Believe in your heart that it will be done."


(1117902808)[Sat Jun 04 12:33:28 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?"
(1117902810)[Sat Jun 04 12:33:30 2005] You say to Hierophant Aldalad,"I healed those three soldiers, but ... I regret I couldn't save the rest."
(1117902810)[Sat Jun 04 12:33:30 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"It is enough, my child.  You were brave and true, and risked your own life to save others.  I am proud of you.  Your faith has made you strong.  "
(1117902811)[Sat Jun 04 12:33:31 2005] You say to Hierophant Aldalad,"I want to learn even more!  What is my next lesson?"
(1117902811)[Sat Jun 04 12:33:31 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"That is up to you.  I have taught you all I can for now.  You must continue on the path without me, at least for a while.  Look in your heart, for it holds many answers.  Where do you feel your faith leads you in this world?"
(1117902815)[Sat Jun 04 12:33:35 2005] You say to Hierophant Aldalad,"My faith is more important than anything to me.  I ... I will be a cleric! "
(1117902815)[Sat Jun 04 12:33:35 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Faith in the divine is what empowers a cleric.  You shall heal wounds both corporeal and spiritual.  And you shall be bound to serve, even in the face of mortal danger.  Will you accept such a yoke?"
(1117902817)[Sat Jun 04 12:33:37 2005] You say to Hierophant Aldalad,"With the help of the gods, I accept.  There is nothing I cannot do as long as they are with me.  I shall become a cleric. "
(1117902817)[Sat Jun 04 12:33:37 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"To fully realize your own faith, you will need to undergo a trial of your own beliefs.  I cannot assist you with this, beyond pointing out what you must do.  Will you permit such an ordeal? "
(1117902818)[Sat Jun 04 12:33:38 2005] You say to Hierophant Aldalad,"I stand resolute in the face of any such trial."
(1117902818)[Sat Jun 04 12:33:38 2005] Your quest journal has been updated.
(1117902818)[Sat Jun 04 12:33:38 2005] You gain experience!
(1117902818)[Sat Jun 04 12:33:38 2005] Your quest journal has been updated.
(1117902818)[Sat Jun 04 12:33:38 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Then I will facilitate a prayer trance for you.  You will experience a struggle unlike any you've known before... but upon exiting the trance, should you prove successful, you will emerge with the emotional strength to survive and prosper in the re-forged Norrath.  Are you ready?"
(1117902819)[Sat Jun 04 12:33:39 2005] You say to Hierophant Aldalad,"I am."
(1117902819)[Sat Jun 04 12:33:39 2005] Your courage fades.
(1117902822)[Sat Jun 04 12:33:42 2005] You have entered The Disconcerting Meditation.
(1117902829)[Sat Jun 04 12:33:49 2005] You feel that the meditation will only last a short time. You must hurry!
(1117902874)[Sat Jun 04 12:34:34 2005] You begin to feel the meditation wane...
(1117902905)[Sat Jun 04 12:35:05 2005] Only a short time remains before you return to your body...
(1117902915)[Sat Jun 04 12:35:15 2005] Your vision blurs, and the world begins to shift...
(1117902920)[Sat Jun 04 12:35:20 2005] The mediation ends.
(1117902920)[Sat Jun 04 12:35:20 2005] You strike A disturbing shadow with a smiting force!
(1117902920)[Sat Jun 04 12:35:20 2005] YOUR Smite hits a disturbing shadow for 16 points of divine damage.
(1117902920)[Sat Jun 04 12:35:20 2005] A disturbing shadow is struck with a smiting force!
(1117902920)[Sat Jun 04 12:35:20 2005] Your courage fades.
(1117902922)[Sat Jun 04 12:35:22 2005] You have entered North Qeynos.
(1117902963)[Sat Jun 04 12:36:03 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?"
(1117902969)[Sat Jun 04 12:36:09 2005] You say to Hierophant Aldalad,"Sadly, I was not successful, Aldalad."
(1117902969)[Sat Jun 04 12:36:09 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Though you were not successful in your previous attempt, one of the most valuable lessons an aspiring cleric can learn is perseverance.  Are you ready to attempt the trial again?"
(1117902977)[Sat Jun 04 12:36:17 2005] You say to Hierophant Aldalad,"Yes, Aldalad, I am."
(1117902978)[Sat Jun 04 12:36:18 2005] Your courage fades.
(1117902980)[Sat Jun 04 12:36:20 2005] You have entered The Disconcerting Meditation.
(1117902987)[Sat Jun 04 12:36:27 2005] You feel that the meditation will only last a short time. You must hurry!
(1117902996)[Sat Jun 04 12:36:36 2005] You strike A disturbing shadow with a smiting force!
(1117902996)[Sat Jun 04 12:36:36 2005] YOUR Smite hits a disturbing shadow for 16 points of divine damage.
(1117902996)[Sat Jun 04 12:36:36 2005] A disturbing shadow is struck with a smiting force!
(1117902997)[Sat Jun 04 12:36:37 2005] a disturbing shadow hits YOU for 5 points of crushing damage.
(1117902999)[Sat Jun 04 12:36:39 2005] a disturbing shadow hits YOU for 3 points of crushing damage.
(1117903001)[Sat Jun 04 12:36:41 2005] a disturbing shadow tries to crush YOU, but misses.
(1117903002)[Sat Jun 04 12:36:42 2005] You start fighting.
(1117903003)[Sat Jun 04 12:36:43 2005] a disturbing shadow hits YOU for 3 points of crushing damage.
(1117903003)[Sat Jun 04 12:36:43 2005] You strike A disturbing shadow with a smiting force!
(1117903003)[Sat Jun 04 12:36:43 2005] YOUR Smite hits a disturbing shadow for 17 points of divine damage.
(1117903003)[Sat Jun 04 12:36:43 2005] A disturbing shadow is struck with a smiting force!
(1117903003)[Sat Jun 04 12:36:43 2005] YOU hit a disturbing shadow for 5 points of crushing damage.
(1117903003)[Sat Jun 04 12:36:43 2005] You trigger a starter chain.
(1117903005)[Sat Jun 04 12:36:45 2005] YOU hit a disturbing shadow for 3 points of crushing damage.
(1117903005)[Sat Jun 04 12:36:45 2005] a disturbing shadow's Wild Swing hits YOU for 5 points of crushing damage.
(1117903008)[Sat Jun 04 12:36:48 2005] You strike A disturbing shadow with a smiting force!
(1117903008)[Sat Jun 04 12:36:48 2005] YOUR Smite hits a disturbing shadow for 18 points of divine damage.
(1117903008)[Sat Jun 04 12:36:48 2005] A disturbing shadow is struck with a smiting force!
(1117903008)[Sat Jun 04 12:36:48 2005] You triggered Divine Judgment.
(1117903008)[Sat Jun 04 12:36:48 2005] You get better at Defense (45/46).
(1117903008)[Sat Jun 04 12:36:48 2005] a disturbing shadow tries to crush YOU, but misses.
(1117903008)[Sat Jun 04 12:36:48 2005] YOU hit a disturbing shadow for 5 points of crushing damage.
(1117903010)[Sat Jun 04 12:36:50 2005] a disturbing shadow hits YOU for 5 points of crushing damage.
(1117903010)[Sat Jun 04 12:36:50 2005] YOU hit a disturbing shadow for 3 points of crushing damage.
(1117903012)[Sat Jun 04 12:36:52 2005] a disturbing shadow's Wild Swing hits YOU for 9 points of crushing damage.
(1117903013)[Sat Jun 04 12:36:53 2005] You strike A disturbing shadow with a smiting force!
(1117903013)[Sat Jun 04 12:36:53 2005] YOUR Smite hits a disturbing shadow for 18 points of divine damage.
(1117903013)[Sat Jun 04 12:36:53 2005] A disturbing shadow is struck with a smiting force!
(1117903013)[Sat Jun 04 12:36:53 2005] You complete Divine Judgment.
(1117903013)[Sat Jun 04 12:36:53 2005] YOUR Divine Judgment hits a disturbing shadow for 45 points of divine damage.
(1117903013)[Sat Jun 04 12:36:53 2005] You have killed a disturbing shadow.
(1117903013)[Sat Jun 04 12:36:53 2005] You stop fighting.
(1117903013)[Sat Jun 04 12:36:53 2005] You gain experience!
(1117903013)[Sat Jun 04 12:36:53 2005] A disturbing shadow is struck with great force.
(1117903023)[Sat Jun 04 12:37:03 2005] Calming yourself after the combat with the shade proves to be difficult.  Looking back on the recent events, you attempt to focus your mind and will yourself into a state of relaxation.
(1117903026)[Sat Jun 04 12:37:06 2005] The creature you faced seems to bear some significance, for you know you have never faced one. You can think of nothing that you have done to draw the ire of something like this, but it seems to be your destiny to cross paths with them... at least, if this meditation serves its purpose.
(1117903029)[Sat Jun 04 12:37:09 2005] Your quest journal has been updated.
(1117903029)[Sat Jun 04 12:37:09 2005] You gain experience!
(1117903029)[Sat Jun 04 12:37:09 2005] You gain experience!
(1117903029)[Sat Jun 04 12:37:09 2005] Your quest journal has been updated.
(1117903029)[Sat Jun 04 12:37:09 2005] You turn your attention back to a more worldly task and begin trying to wake yourself from the state.  Soon, the room fades out, and your body begins to stir.
(1117903031)[Sat Jun 04 12:37:11 2005] Your courage fades.
(1117903034)[Sat Jun 04 12:37:14 2005] You have entered North Qeynos.
(1117903064)[Sat Jun 04 12:37:44 2005] \aNPC 10879 Lilli Anya:Lilli Anya\/a says,"The Celestial Watch preserves the rituals of servitude to the gods so that all might experience through worship the return of the ancient deities."
(1117903081)[Sat Jun 04 12:38:01 2005] \aNPC 11373 Hierophant Aldalad:Hierophant Aldalad\/a says to you,"Blessings to you and yours, child.  Qeynos is gladdened by your presence this fine day!  Sharing a few kind words can lift one's spirit, yes?"
(1117903082)[Sat Jun 04 12:38:02 2005] You say to Hierophant Aldalad,"Thank you for your blessing.  I wish you a good day as well, Hierophant"
]]--