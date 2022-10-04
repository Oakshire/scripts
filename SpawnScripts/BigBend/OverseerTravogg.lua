--[[
    Script Name    : SpawnScripts/BigBend/OverseerTravogg.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.03 03:10:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, 5758)==2 then
	    SetStepComplete(Spawn, 5758,2)
	end
end

function respawn(NPC)
	spawn(NPC)
end

--[[\aNPC 7699 Overseer Travogg:Overseer Travogg\/a says,"Refugees will report to me at once!"
(1136078468)[Sat Dec 31 20:21:08 2005] \aNPC 7699 Overseer Travogg:Overseer Travogg\/a says to you,"Freeport welcomes you, traveler. Enter our city and you are no longer a refugee. Know this – you are now an asset of our mighty city. Consider yourself lucky. "
(1136078468)[Sat Dec 31 20:21:08 2005] You say,"Hail, Overseer Travogg"
(1136078470)[Sat Dec 31 20:21:10 2005] You say to Overseer Travogg,"I don't feel lucky."
(1136078470)[Sat Dec 31 20:21:10 2005] \aNPC 7699 Overseer Travogg:Overseer Travogg\/a says to you,"Your feelings mean nothing to the Overlord.  He is your ruler and such an honor should delight you, peasant. If you are not delighted, I will smash open your skull. "
(1136078471)[Sat Dec 31 20:21:11 2005] You say to Overseer Travogg,"I see... then I'm happy to be here."
(1136078471)[Sat Dec 31 20:21:11 2005] \aNPC 7699 Overseer Travogg:Overseer Travogg\/a says to you,"You choose wisely. For this you may live. The Overlord has granted you a house in Big Bend, home to ogres and trolls. You must work to afford this gift. Does this please you?"
(1136078472)[Sat Dec 31 20:21:12 2005] You say to Overseer Travogg,"Happy?"
(1136078472)[Sat Dec 31 20:21:12 2005] Your quest journal has been updated.
(1136078472)[Sat Dec 31 20:21:12 2005] You gain experience!
(1136078472)[Sat Dec 31 20:21:12 2005] Your quest journal has been updated.
(1136078472)[Sat Dec 31 20:21:12 2005] \aNPC 7699 Overseer Travogg:Overseer Travogg\/a says to you,"Of course it should please you! Our Lord granted you a spacious home in paradise! You must leave immediately. The landlord is waiting. Welcome to Freeport, refugee ... now, away with you!"
(1136078473)[Sat Dec 31 20:21:13 2005] You say to Overseer Travogg,"Uhhh... thanks."]]--