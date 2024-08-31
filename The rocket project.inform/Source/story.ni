"Video Game Menace" by Martin Brown

Release along with an interpreter.
Use scoring. The maximum score is 50.

Section - Directions (in place of Section 4 - Directions in Standard Rules by Graham Nelson)

The specification of direction is "Represents a direction of movement, such
as northeast or down. They always occur in opposite, matched pairs: northeast
and southwest, for instance; down and up."

A direction can be privately-named or publicly-named. A direction is usually
publicly-named.
A direction can be marked for listing or unmarked for listing. A direction is
usually unmarked for listing.
A direction can be scenery. A direction is always scenery.

A direction has a direction called an opposite.

The north is a direction.
The northeast is a direction.
The northwest is a direction.
The south is a direction.
The southeast is a direction.
The southwest is a direction.
The east is a direction.
The west is a direction.
The up is a direction.
The down is a direction.
The inside is a direction.
The outside is a direction.

The north has opposite south. Understand "w" as north.
The northeast has opposite southwest. Understand "wd" as northeast.
The northwest has opposite southeast. Understand "wa" as northwest.
The south has opposite north. Understand "s" as south.
The southeast has opposite northwest. Understand "sd" as southeast.
The southwest has opposite northeast. Understand "sa" as southwest.
The east has opposite west. Understand "d" as east.
The west has opposite east. Understand "a" as west.
Up has opposite down. Understand "u" as up.
Down has opposite up. Understand "dw" as down.
Inside has opposite outside. Understand "in" as inside.
Outside has opposite inside. Understand "out" as outside.

The inside object translates into Inter as "in_obj".
The outside object translates into Inter as "out_obj".

The verb to be above means the mapping up relation.
The verb to be mapped above means the mapping up relation.
The verb to be below means the mapping down relation.
The verb to be mapped below means the mapping down relation.

Chapter 1 - Tutorial

The Rocket base is a room. "The Rocket base is a big, circular room. There is a launch pad in the center of the room. It looks like a rocket was once here but someone has taken it apart and hidden the pieces. There are exits to the North, South, and West."

A supporter called the launch pad is here. The description is "A launch pad for a rocket."

The control room is north of the Rocket base. 
The control room is a room. The big television is here. The description is "A big television showing a satellite trace along with many complex numbers." Understand "TV" as the big television.

The bathroom is south of the rocket base. "A bathroom with a white rug."
The rug is here. The description is "a white rug."

The rocket body is a thing. The rocket body can be found. The rocket body is not found.
Instead of looking under the rug:
	if the rocket body is found:
		say "There's nothing else of interest under there.";
	otherwise:
		now the rocket body is found;
		increase the score by 10;
		now the player carries the rocket body;
		say "Under the rug, you find a rocket body, which you retrieve."

Instead of taking the rug:
	say "The rug is taped to the ground except for a little hole that your hand can fit through."

The storage cupboard is west of the Rocket base. "A small room used for storing things. There is a shelf against one wall."
A supporter called a shelf is here.  The shelf can be climbable.
The nose cone is a thing. The nose cone is wearable.
The nose cone is on the shelf. "A nose cone of a rocket."

Easter egg 1 is a thing. Easter egg 1 can be found. Easter egg 1 is not found.
Easter egg 2 is a thing. Easter egg 2 can be found. Easter egg 2 is not found.

After wearing the nose cone for the first time:
	if Easter egg 1 is not found:
		increase the score by 10;
		now Easter egg 1 is found;
		now player carries Easter egg 1;
		say "You found an Easter egg, well done!";
	otherwise if the nose cone is not worn by the player:
		now the player wears the nose cone;
		say "You put on the nose cone.";
	otherwise:
		say "You are already wearing the nose cone.";
	continue the action.

After putting the nose cone on the launch pad for the first time:
	increase the score by 10;
	say "Yes, that looks right!";
	continue the action.

After putting the rocket body on the launch pad for the first time:
	increase the score by 10;
	say "Yes, that looks right!";
	continue the action.
	
After reading a command:
	if the player's command matches "assemble rocket":
		if the player carries the rocket body and the player carries the nose cone:
			try putting the rocket body on the launch pad;
			try putting the nose cone on the launch pad;
			end the story saying "You click the rocket pieces together and escape! But maybe you should have remembered the extra fuel...";
		otherwise:
			say "You do not have all the necessary parts to assemble the rocket."

Assembling is an action applying to nothing. Understand "assemble rocket" or "build rocket" as assembling.

Instead of assembling:
	if the player carries the rocket body and the player carries the nose cone:
		try putting the rocket body on the launch pad;
		try putting the nose cone on the launch pad;
		end the story saying "You click the rocket pieces together and escape! But maybe you should have remembered the extra fuel...";
	otherwise:
		say "You do not have all the necessary parts to assemble the rocket."

After putting the nose cone on the launch pad:
	if the rocket body is on the launch pad:
		end the story saying "You click the rocket pieces together and use it to escape! But maybe you should have remembered the extra fuel..."

After putting the rocket body on the launch pad:
	if the nose cone is on the launch pad:
		end the story saying "You click the rocket pieces together and escape! But maybe you should have remembered the extra fuel..."
		
Instead of climbing the shelf:
	if Easter egg 2 is found:
		say "You already looked and there is nothing interesting there.";
	otherwise:
		say "You climb up the shelf and discover Easter egg 2!";
		now Easter egg 2 is found;
		now player carries Easter egg 2;
		increase the score by 10;
		say "You found another Easter egg while climbing the shelf!"; 

Chapter 2 - Next Chapter


