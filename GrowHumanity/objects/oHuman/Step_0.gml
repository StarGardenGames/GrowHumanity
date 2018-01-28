event_inherited();

fadeSpawnUpdate();

humanUpdateThought();

humanUpdateRelationships();

humanUpdateState();

stimulation = max(stimulation - stimulation_decel, 0);