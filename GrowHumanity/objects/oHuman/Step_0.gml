humanUpdateThought();

humanMove();

stimulation = max(stimulation - stimulation_decel, 0);

image_alpha = min(image_alpha+spawn_speed,1);