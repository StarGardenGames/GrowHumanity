event_inherited();

fadeSpawnUpdate();

humanUpdateThought();

humanUpdateState();

humanApplyMovement();

stimulation = max(stimulation - stimulation_decel, 0);