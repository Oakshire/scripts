-- Where's the header, chumps?


function Init(Quest)

	AddQuestStepSpell(Quest, 1, "I need to capture five shrumblers from the Dyer Mycoria Geminariums.", 5, 100, "I need to capture five shrumblers from the Dyer Mycoria Geminariums.", 172, 1)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_ReleasedShrumblers")

end

